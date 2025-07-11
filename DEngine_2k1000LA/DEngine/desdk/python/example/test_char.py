import sys
from unittest import result
import cv2
import os
import numpy as np
import de
from infer_engine import InferEngine



if __name__ == "__main__":
    print("InferEngine example start...")

    net_file = "/DEngine/model/emnist/net.bin"
    model_file = "/DEngine/model/emnist/model.bin"
    img_dir = "/DEngine/data/emnist"

    engine = InferEngine(net_file, model_file, max_batch=1)

    chars=[]
    for i in range(97,123):
        chars.append(chr(i))
    print(chars)
    image_dir = os.listdir(img_dir)
    image_dir.sort()
    image_dir.sort(key = lambda x: int(x[:-4]))
    test_id = 0
    for img_name in image_dir:
        img_path = os.path.join(img_dir, img_name)
        image1 = cv2.imread(img_path)
        image1 = cv2.resize(image1, (224,224))
        cv2.imshow("view", image1)
        
        img = image1.transpose(2,0,1)  #BGR2RGB和HWC2CHW
        
        img=img.astype(dtype=np.float32)
        image=np.expand_dims(img,axis=0)
        shape = (1,3,224,224)
        format = de.PixelFormat.DE_PIX_FMT_RGB888_PLANE # de.PixelFormat.DE_PIX_FMT_RGB888_PLANE
        data = [(format, shape, image)]
        output = engine.predict(data)
        prob = np.argmax(output)
        result = chars[prob]
        print("\033[42m===============num result:" + str(result) + "===============\033[0m")
        cv2.waitKey(0)





        


