import sys
import cv2
import os
import threading
import time
import numpy as np
import de
from infer_engine import InferEngine


def area_of(left_top, right_bottom):
    """Compute the areas of rectangles given two corners.

    Args:
        left_top (N, 2): left top corner.
        right_bottom (N, 2): right bottom corner.

    Returns:
        area (N): return the area.
    """
    hw = np.clip(right_bottom - left_top, 0.0, None)
    return hw[..., 0] * hw[..., 1]

def iou_of(boxes0, boxes1, eps=1e-5):
    """Return intersection-over-union (Jaccard index) of boxes.

    Args:
        boxes0 (N, 4): ground truth boxes.
        boxes1 (N or 1, 4): predicted boxes.
        eps: a small number to avoid 0 as denominator.
    Returns:
        iou (N): IoU values.
    """
    overlap_left_top = np.maximum(boxes0[..., :2], boxes1[..., :2])
    overlap_right_bottom = np.minimum(boxes0[..., 2:], boxes1[..., 2:])

    overlap_area = area_of(overlap_left_top, overlap_right_bottom)
    area0 = area_of(boxes0[..., :2], boxes0[..., 2:])
    area1 = area_of(boxes1[..., :2], boxes1[..., 2:])
    return overlap_area / (area0 + area1 - overlap_area + eps)

def hard_nms(box_scores, iou_threshold, top_k=-1, candidate_size=200):
    """

    Args:
        box_scores (N, 5): boxes in corner-form and probabilities.
        iou_threshold: intersection over union threshold.
        top_k: keep top_k results. If k <= 0, keep all the results.
        candidate_size: only consider the candidates with the highest scores.
    Returns:
         picked: a list of indexes of the kept boxes
    """
    scores = box_scores[:, -1]
    boxes = box_scores[:, :-1]
    picked = []
    # _, indexes = scores.sort(descending=True)
    indexes = np.argsort(scores)
    # indexes = indexes[:candidate_size]
    indexes = indexes[-candidate_size:]
    while len(indexes) > 0:
        # current = indexes[0]
        current = indexes[-1]
        picked.append(current)
        if 0 < top_k == len(picked) or len(indexes) == 1:
            break
        current_box = boxes[current, :]
        # indexes = indexes[1:]
        indexes = indexes[:-1]
        rest_boxes = boxes[indexes, :]
        iou = iou_of(
            rest_boxes,
            np.expand_dims(current_box, axis=0),
        )
        indexes = indexes[iou <= iou_threshold]

    return box_scores[picked, :]

def afterProcesspre(width, height, confidences, boxes, prob_threshold, iou_threshold=0.3, top_k=-1):

    boxes = boxes[0]
    confidences = confidences[0]
    
    picked_box_probs = []
    picked_labels = []
    for class_index in range(1, confidences.shape[1]):
        probs = confidences[:, class_index]
        mask = probs > prob_threshold
        probs = probs[mask]
        #print("probs",probs)
        if probs.shape[0] == 0:
            continue
        subset_boxes = boxes[mask, :]
        box_probs = np.concatenate([subset_boxes, probs.reshape(-1, 1)], axis=1)
        box_probs = hard_nms(box_probs,
                                       iou_threshold=iou_threshold,
                                       top_k=top_k,
                                       )
        picked_box_probs.append(box_probs)
        picked_labels.extend([class_index] * box_probs.shape[0])
    if not picked_box_probs:
        return np.array([]), np.array([]), np.array([])
    picked_box_probs = np.concatenate(picked_box_probs)
    picked_box_probs[:, 0] *= width
    picked_box_probs[:, 1] *= height
    picked_box_probs[:, 2] *= width
    picked_box_probs[:, 3] *= height
    return picked_box_probs[:, :4].astype(np.int32), np.array(picked_labels), picked_box_probs[:, 4]




if __name__ == "__main__":
    print("SSD start...")

    # 设备位置
    dev_uri = "/dev/video0"

    # SSD的net.bin和model.bin的位置
    net_file = "./net.bin"
    model_file = "./model.bin"
    class_names = ('BACKGOURND','face')
    threshold = 0.7
    # 注册推理引擎
    engine = InferEngine(net_file, model_file, 0)
    
    # 创建opencv摄像头对象
    cap = cv2.VideoCapture()

    # 打开对应位置的摄像头
    cap.open(dev_uri)

    # 设置图片格式，RGB888_PLANE是三通道交错
    format = de.PixelFormat.DE_PIX_FMT_RGB888_PLANE

    # 设置摄像头读取出来的数据是RGB通道顺序
    # cap.set(cv2.CAP_PROP_CONVERT_RGB, True)

    while cap.isOpened():
        # 读取一帧数据
        _, orig_image = cap.read()
        print(orig_image.shape[1])
        image = cv2.cvtColor(orig_image, cv2.COLOR_BGR2RGB)
        image_rize = cv2.resize(image,(320,240)) 
        # 判断是否正确读取摄像头数据
        if _ is False: 
            print('read video error')
            exit(0)
        encode_param = [int(cv2.IMWRITE_JPEG_QUALITY), 20]
        result, encoded_image = cv2.imencode('.jpg', image_rize, encode_param) 
        img = np.array(encoded_image)
        shape = (1, 1, 1, len(img))
        data = [(de.PixelFormat.DE_PIX_FMT_JPEG, shape, img)]
        # 处理摄像头数据为BCHW格式
        # image_mean = np.array([127, 127, 127])
        # image = (image - image_mean) / 128

        #image = np.transpose(image_rize, [2, 0, 1])
        #image = np.expand_dims(image, axis=0)
        #image = image.astype(np.float32)
        #shape = (1 ,3 , 240, 320)
        # # 构建推理引擎需要的数据结构
        #data = [(format, shape, image)]
        # 推理引擎开始推理，并把得到的结果返回给data_out
        t1 = time.time()
        boxes,confidences = engine.predict(data)
        #print("boxes=========",boxes.shape)
        #print("conf_shape",confidences.shape)
        # print("boxes_shape",boxes.shape)
          # 打印结果输出
        # SSD后处理，把data_out得到的数据进行处理，并且在视频流数据中绘制框
        boxes, labels, probs = afterProcesspre(orig_image.shape[0], orig_image.shape[1], confidences, boxes, threshold)
        #print("boxes",boxes)
        for i in range(boxes.shape[0]):
            box = boxes[i, :]
            
            label = f"{class_names[labels[i]]}: {probs[i]:.2f}"

            cv2.rectangle(orig_image, (box[0], box[1]), (box[2], box[3]), (255, 255, 0), 4)
            #print(box[0])
            #print(box[1])
            #print(box[2])
            #print(box[3])
        # cv2.putText(orig_image, label,
        #             (box[0] + 20, box[1] + 40),
        #             cv2.FONT_HERSHEY_SIMPLEX,
        #             1,  # font scale
        #             (255, 0, 255),
        #             2)  # line type
        # sum += boxes.shape[0]
        orig_image = cv2.resize(orig_image, (0, 0), fx=0.7, fy=0.7)
        # 显示绘制框后的视频流数据
        cv2.imshow('ssd', orig_image)
        # 按q退出
        if cv2.waitKey(1) & 0xFF == ord('q'):       
            break
    
    # 释放摄像头对象
    engine.profile()
    cap.release()
    # 销毁窗口
    cv2.destroyAllWindows()
