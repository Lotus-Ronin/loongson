import numpy as np
import cv2

width = 836
height = 914
yuvNV12_size = width * height * 3 // 2
rgb24_size = width * height

yuvNV12 = np.zeros((height * 3 // 2, width), dtype=np.uint8)
rgb24 = np.zeros((height, width, 3), dtype=np.uint8)

with open('/DEngine/data/image_test/track1_crop0_836x914.nv12.yuv', 'rb') as f:
    while True:
        buff = f.read(yuvNV12_size)
        if not buff:
            break
        yuvNV12[:, :] = np.frombuffer(buff, dtype=np.uint8).reshape(height * 3 // 2, width)

        # Convert NV12 to RGB
        rgb24[:, :, :] = cv2.cvtColor(yuvNV12, cv2.COLOR_YUV2BGR_NV12)

        # Save as JPG
        cv2.imwrite('/DEngine/data/image_test/output.jpg', rgb24)
        cv2.imshow('RGB Image', rgb24)
        cv2.waitKey(0)

