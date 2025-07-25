import cv2
#import matplotlib.pyplot as plt
import numpy as np

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

def filter_box(org_box,conf_thres,iou_thres):
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
