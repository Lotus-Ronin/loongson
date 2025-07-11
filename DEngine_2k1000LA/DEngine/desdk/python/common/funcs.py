import sys, cv2
import os
import numpy as np

def deal_image_use_cv2_method0(paths, net_size, rgb_en=1, interp=None, gray_en=False):
    """use cv2.INTER_LINER resize"""
    assert cv2 is not None, '`load_img` requires `cv2`.'
    if interp is None:
        interp = cv2.INTER_LINEAR
    if not isinstance(paths, list):
        paths = [paths]

    def _load_img(path):
        # imread:BGR, HWC
        if gray_en :
            img = cv2.imread(path, cv2.IMREAD_GRAYSCALE)
        else:
            img = cv2.imread(path)
        
        wh_tuple = (net_size[1], net_size[0])
        # resize the img to target W/H, the params of resize must be (w, h)
        if img.shape[1::-1] != wh_tuple:
            img = cv2.resize(img, wh_tuple, interpolation=interp)

        #if not rgb_en
        #    img = cv2.cvtColor(img, cv2.COLOR_BGR2YUV)

        # convert BGR to RGB if enable
        if rgb_en and not gray_en :
            img = img[:, :, ::-1]
        if len(img.shape) == 2:
            img = np.expand_dims(img, -1)
        # cur img shape is HWC, RGB or BGR format, the min(H, W) is target_size
        return img

    if len(paths) > 1:
        imgs = np.zeros((len(paths),) + (3,), dtype=np.float32)
        for (i, path) in enumerate(paths):
            imgs[i] = _load_img(path)
    else:
        imgs = np.array([_load_img(paths[0])], dtype=np.float32)

    if imgs is None:
        return None

    # change img shape to BCHW
    imgs = np.swapaxes(imgs, 1, 3)
    imgs = np.swapaxes(imgs, 2, 3)

    return imgs

def get_indata(test_data_path, input_shape, in_dtype, rgb_en) :
    if not test_data_path is None: # 使用指定数据文件作为输入
        img_shape = (input_shape[2], input_shape[3])
        gray_en = False
        if input_shape[1] == 1 :
            gray_en = True
        in_data = deal_image_use_cv2_method0(test_data_path, img_shape, rgb_en=int(rgb_en), gray_en=gray_en).astype(in_dtype)
    else: # 生成随机数作为输入
        np.random.seed(0)
        in_data = np.random.randint(0, 256, input_shape).astype(in_dtype)

    return in_data



