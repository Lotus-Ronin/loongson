import sys
import cv2
import os
import threading
import time
import numpy as np
import de
from infer_engine import InferEngine

sys.path.append("/home/loongson/桌面/SongkeTPUPython/python/de")

def cpu_nms(dets, thresh):
    x1 = dets[:, 0]
    y1 = dets[:, 1]
    x2 = dets[:, 2]
    y2 = dets[:, 3]
    scores = dets[:, 4]

    areas = (x2 - x1 + 1) * (y2 - y1 + 1)
    order = scores.argsort()[::-1]
    ndets = dets.shape[0]
    suppressed = np.zeros((ndets), dtype=np.int)

    keep = []
    for _i in range(ndets):
        i = order[_i]
        if suppressed[i] == 1:
            continue
        keep.append(i)
        ix1 = x1[i]
        iy1 = y1[i]
        ix2 = x2[i]
        iy2 = y2[i]
        iarea = areas[i]
        for _j in range(_i + 1, ndets):
            j = order[_j]
            if suppressed[j] == 1:
                continue
            xx1 = max(ix1, x1[j])
            yy1 = max(iy1, y1[j])
            xx2 = min(ix2, x2[j])
            yy2 = min(iy2, y2[j])
            w = max(0.0, xx2 - xx1 + 1.)
            h = max(0.0, yy2 - yy1 + 1.)
            inter = w * h
            ovr = inter / (iarea + areas[j] - inter)
            if ovr >= thresh:
                suppressed[j] = 1

    return keep


def afterProcesspr(data_out, img, h, w):
    # 打印结果输出
    # print(f"predict result: data_out len={len(data_out)}")
    # for i in range(len(data_out)):
    #     print(f"data_out[{i}], shape={data_out[i].shape}, dtype={data_out[i].dtype}")

    # 后处理
    score_threshold = 0.01
    # print(f"img h{h}, w{w}")
    bboxes = []
    class_num = 21
    data = data_out[0].reshape(-1, 6)
    all_boxes = [[] for _ in range(class_num)]
    # print(f"predict result: data len={len(data)}")
    if data.shape[0] > 0:
        det_label = data[:, 0]
        det_conf = data[:, 1]
        det_xmin = data[:, 2]
        det_ymin = data[:, 3]
        det_xmax = data[:, 4]
        det_ymax = data[:, 5]
        # all_boxes_ = []
        for j in range(1, class_num):
            inds = np.where(det_label == j-1)[0]
            det_conf_this = det_conf[inds]
            det_xmin_this = det_xmin[inds]
            det_ymin_this = det_ymin[inds]
            det_xmax_this = det_xmax[inds]
            det_ymax_this = det_ymax[inds]

            score_ind = np.where(det_conf_this > score_threshold)[0]
            det_xmin_this = det_xmin_this[score_ind]
            det_ymin_this = det_ymin_this[score_ind]
            det_xmax_this = det_xmax_this[score_ind]
            det_ymax_this = det_ymax_this[score_ind]
            det_conf_this = det_conf_this[score_ind]

            if len(score_ind) > 0:
                top_xmin = det_xmin_this[0] * w
                top_ymin = det_ymin_this[0] * h
                top_xmax = det_xmax_this[0] * w
                top_ymax = det_ymax_this[0] * h
                score = det_conf_this[0]
                result = np.array([[top_xmin, top_ymin, top_xmax, top_ymax, score]])
            else:
                continue
            for ii in range(1, len(score_ind)):
                top_xmin = det_xmin_this[ii] * w
                top_ymin = det_ymin_this[ii] * h
                top_xmax = det_xmax_this[ii] * w
                top_ymax = det_ymax_this[ii] * h
                score = det_conf_this[ii]
                thisr = np.array([[top_xmin, top_ymin, top_xmax, top_ymax, score]])
                result = np.concatenate([result, thisr], axis=0)

            keep = cpu_nms(result, 0.45)
            bboxes = result[keep,:]
            all_boxes[j] = bboxes

    class_idx = 0
    CLASSES = ('background',
        'aeroplane', 'bicycle', 'bird', 'boat',
        'bottle', 'bus', 'car', 'cat', 'chair',
        'cow', 'diningtable', 'dog', 'horse',
        'motorbike', 'person', 'pottedplant',
        'sheep', 'sofa', 'train', 'tvmonitor')
    for boxes in all_boxes:
        for box in boxes:
            # print(f"box={box}")
            color = (0, 0, 255) # 其他用红色表示
            cv2.rectangle(img, (int(box[0]), int(box[1])), (int(box[2]), int(box[3])), color, 2)
            text = "%s:%.2f" % (CLASSES[class_idx], box[4])
            color_text = (0, 255, 0)
            cv2.putText(img, text, (int(box[0]), int(box[1])), cv2.FONT_HERSHEY_SIMPLEX, 0.75, color_text, 2)
        class_idx += 1

    return img

if __name__ == "__main__":
    print("SSD start...")

    # 设备位置
    dev_uri = "/dev/video0"

    # SSD的net.bin和model.bin的位置
    net_file = "./net.bin"
    model_file = "./model.bin"

    # 注册推理引擎
    engine = InferEngine(net_file, model_file, 0)
    
    # 创建opencv摄像头对象
    cap = cv2.VideoCapture()

    # 打开对应位置的摄像头
    cap.open(dev_uri)

    # 设置图片格式，RGB888_PLANE是三通道交错
    format = de.PixelFormat.DE_PIX_FMT_RGB888_PLANE

    # 设置摄像头读取出来的数据是RGB通道顺序
    cap.set(cv2.CAP_PROP_CONVERT_RGB, 1.00)

    while cap.isOpened():
        # 读取一帧数据
        _, frame = cap.read()

        # 判断是否正确读取摄像头数据
        if _ is False: 
            print('read video error')
            exit(0)
        
        # 处理摄像头数据为BCHW格式
        input = np.swapaxes(frame, 0, 2)
        input = np.swapaxes(input, 1, 2)
        input = input[np.newaxis, :, :, :]
        
        # 构建推理引擎需要的数据结构
        data = [(format, input.shape, input)]
        # 推理引擎开始推理，并把得到的结果返回给data_out
        data_out = engine.predict(data)
        # SSD后处理，把data_out得到的数据进行处理，并且在视频流数据中绘制框
        display = afterProcesspr(data_out, frame, input.shape[2], input.shape[3])
        # 显示绘制框后的视频流数据
        cv2.imshow('ssd', display)
        # 按q退出
        if cv2.waitKey(1) & 0xFF == ord('q'):       
            break
    
    # 释放摄像头对象
    cap.release()
    # 销毁窗口
    cv2.destroyAllWindows()
