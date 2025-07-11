import sys
import cv2
import os
import numpy as np
import time
import de
from infer_engine import InferEngine


def xywh2xyxy(x):
    # [x, y, w, h] to [x1, y1, x2, y2]
    y = np.copy(x)
    y[:, 0] = x[:, 0] - x[:, 2] / 2
    y[:, 1] = x[:, 1] - x[:, 3] / 2
    y[:, 2] = x[:, 0] + x[:, 2] / 2
    y[:, 3] = x[:, 1] + x[:, 3] / 2
    return y

def py_cpu_nms(dets, thresh):
    x = dets[:, 0]
    y = dets[:, 1]
    w = dets[:, 2]
    h = dets[:, 3]
    x1 = x - w / 2 + 1 
    y1 = y - h / 2 + 1
    x2 = x + w / 2
    y2 = y + w / 2
    scores = dets[:, 4]
    areas = (x2-x1+1)*(y2-y1+1)
    res = []
    index = scores.argsort()[::-1]
    while index.size>0:
        i = index[0]
        res.append(i)
        x11 = np.maximum(x1[i],x1[index[1:]])
        y11 = np.maximum(y1[i], y1[index[1:]])
        x22 = np.minimum(x2[i],x2[index[1:]])
        y22 = np.minimum(y2[i],y2[index[1:]])

        w = np.maximum(0,x22-x11+1)
        h = np.maximum(0,y22-y11+1)

        overlaps = w * h
        iou = overlaps/(areas[i]+areas[index[1:]]-overlaps)

        idx = np.where(iou<=thresh)[0]
        index = index[idx+1]
    return np.array(res, dtype=np.int32)

def filter_box(org_box,conf_thres,iou_thres): #过滤掉无用的框
    #-------------------------------------------------------
	#   删除为1的维度
    #	删除置信度小于conf_thres的BOX
	#-------------------------------------------------------
    org_box=np.squeeze(org_box)
    conf = org_box[..., 4] > conf_thres
    box = org_box[conf == True]
    #-------------------------------------------------------
    #	通过argmax获取置信度最大的类别
	#-------------------------------------------------------
    cls_cinf = box[..., 5:]
    cls = []
    for i in range(len(cls_cinf)):
        cls.append(int(np.argmax(cls_cinf[i])))
    all_cls = list(set(cls))     
    #-------------------------------------------------------
	#   分别对每个类别进行过滤
	#	1.将第6列元素替换为类别下标
	#	2.xywh2xyxy 坐标转换
	#	3.经过非极大抑制后输出的BOX下标
	#	4.利用下标取出非极大抑制后的BOX
	#-------------------------------------------------------
    output = []
    for i in range(len(all_cls)):
        curr_cls = all_cls[i]
        curr_cls_box = []
        curr_out_box = []
        for j in range(len(cls)):
            if cls[j] == curr_cls:
                box[j][5] = curr_cls
                curr_cls_box.append(box[j][:6])
        curr_cls_box = np.array(curr_cls_box)
        # curr_cls_box_old = np.copy(curr_cls_box)
        curr_cls_box = xywh2xyxy(curr_cls_box)
        curr_out_box = py_cpu_nms(curr_cls_box,iou_thres)
        for k in curr_out_box:
            output.append(curr_cls_box[k])
    output = np.array(output)
    return output


# Load the YOLOv5 model
if __name__ == "__main__":

    print("InferEngine example start...")
    net_file = "/DEngine/model/hand/net.bin"
    model_file = "/DEngine/model/hand/model.bin"
    engine = InferEngine(net_file, model_file, max_batch=1)

    # Open a video capture object
    cap = cv2.VideoCapture(0)
    format = de.PixelFormat.DE_PIX_FMT_RGB888_PLANE

    # fps = int(cap.get(cv2.CAP_PROP_FPS))
    # print("FPS=" + str(fps))

    fps = 0
    l_used_time = []
    while True:
        # Read a frame from the video capture
        s = time.time()
        ret, frame = cap.read()
        # frameCopy = np.copy(frame)
        # Pre-process the frame
        frame = cv2.resize(frame, (416, 416))
        # print("shape",frame.shape)
        # frame = cv2.cvtColor(frame, cv2.COLOR_BGR2RGB)
        

        img = frame[:,:,::-1].transpose(2,0,1)  #BGR2RGB和HWC2CHW
        img = np.expand_dims(img, axis=0)
       
        # Run the model on the pre-processed frame
        # 以RGB图像输入
        
        shape = (1, 3, 416, 416)
        # 执行推理，data为每个样本的输入列表，batch时可配置多data
        data = [(format, shape, img)]


        t1 = time.time()
        output = engine.predict(data)
        t2 = time.time()
        # print('inference image: %.4f seconds.' % (t2-t1))
       
        # print(np.size(output))
        # print("fps:{}s".format(1/(t2-t1)))

        # Extract the bounding boxes, confidence scores, and class probabilities from the model output
        output = output[0]
        # print(f"predict result: data_out len={len(output)}")
        # for i in range(len(output)):
        #     print(f"data_out[{i}], shape={output[i].shape}, dtype={output[i].dtype}")
        outbox = filter_box(output,0.85,0.5)
        
        CLASSES=('one','two','three','four','five','ok','fist','f') # your code to extract these values from the model output

        # # Perform non-max suppression to remove overlapping bounding boxes
        # # your code to perform NMS, such as the `fast_non_max_suppression` function I provided in the previous answer

        # # Draw the bounding boxes on the frame
        for o in outbox:
            x1 = int(o[0])
            y1 = int(o[1])
            x2 = int(o[2])
            y2 = int(o[3])
            score = o[4]
            classes = int(o[5])
            cv2.rectangle(frame, (x1, y1), (x2, y2), (255, 0, 0), 2)
            text = "%s:%.2f" % (CLASSES[classes], score)
            cv2.putText(frame, text,(x1, y1 ),cv2.FONT_HERSHEY_SIMPLEX, 0.75, (0, 0, 255), 2)
            
        cv2.putText(frame, text='FPS: {}'.format(fps), org=(3, 15), fontFace=cv2.FONT_HERSHEY_SIMPLEX,
                        fontScale=0.50, color=(255, 0, 0), thickness=2)
        # Display the processed frame
        cv2.imshow("frame", frame)
        used_time = time.time() - s
        l_used_time.append(used_time)
        if len(l_used_time) > 20:
            l_used_time.pop(0)
        fps = int(1/np.mean(l_used_time))
        # Break the loop if the 'q' key is pressed
        if cv2.waitKey(1) & 0xFF == ord('q'):
            break
    

    # Release the video capture and destroy the window
    engine.profile()
    cap.release()
    cv2.destroyAllWindows()
