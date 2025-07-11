from statistics import mode

import numpy as np
import cv2
import de
from infer_engine import InferEngine
from time import time
#import sys, getopt
#import sys
#sys.path.append(r'../src')

#from utils.datasets import get_labels
from utils.yolov5 import filter_box
from utils.inference import draw_text
from utils.inference import draw_bounding_box


def get_labels(dataset_name):
    if dataset_name == 'fer2013':
        return {0: 'angry', 1: 'disgust', 2: 'fear', 3: 'happy',
                4: 'neutral', 5: 'sad', 6: 'surprise'}
  
emotion_labels = get_labels('fer2013')

INPUT_SIZE = 224
format = de.PixelFormat.DE_PIX_FMT_RGB888_PLANE

def detect_faces(frame,face):
        
        encode_param = [int(cv2.IMWRITE_JPEG_QUALITY), 20]
        result, encoded_image = cv2.imencode('.jpg', frame, encode_param) 
        img = np.array(encoded_image)
        shape = (1, 1, 1, len(img))
        data = [(de.PixelFormat.DE_PIX_FMT_JPEG, shape, img)]
        
        output = face.predict(data)

        outbox = filter_box(output,0.8,0.45)
        return outbox

def load_model():
	# Create Engine object
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX")
    print('-->loading model')
    net_face = "/DEngine/model/mask/net.bin"
    model_face = "/DEngine/model/mask/model.bin"
    net_emo = "/DEngine/model/emotion/net.bin"
    model_emo = "/DEngine/model/emotion/model.bin"
    engine_face = InferEngine(net_face, model_face, max_batch=4)
    engine_emotion = InferEngine(net_emo, model_emo, max_batch=4)
    print('loading model done')
    print("XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX")
    return engine_face,engine_emotion

def model_predict(data, emotion_engine):
    emotion_prediction = emotion_engine.predict(data)
    emotion_probability = np.max(emotion_prediction)
    emotion_label_arg = np.argmax(emotion_prediction)
    emotion_text = emotion_labels[emotion_label_arg]
    print('emotion: ' + str(emotion_probability))
    return emotion_text, emotion_probability

if __name__ == '__main__':
    # getting input model shapes for inference
    emotion_target_size = (INPUT_SIZE, INPUT_SIZE)
    # hyper-parameters for bounding boxes shape
    frame_window = 10
    
    # starting lists for calculating modes
    emotion_window = []

    # loading models
    
    face_engine,emotion_engine = load_model()
    

    # starting video streaming
    cv2.namedWindow('window_frame')
    video_capture = cv2.VideoCapture(0)
    while True:
        frame_start = time()
        bgr_image = video_capture.read()[1]
        
        # gray_image = cv2.cvtColor(gray_image, cv2.COLOR_GRAY2RGB)
        rgb_image = cv2.cvtColor(bgr_image, cv2.COLOR_BGR2RGB)
        detect_image = cv2.resize(rgb_image, (416, 416))
        faces = detect_faces(detect_image,face_engine)
        print('detect face cost time: %f'%(time() - frame_start))

        for face_coordinates in faces:
            start = time()
            x1, y1, x2, y2,score,classes = face_coordinates.astype(int)
            print("classes=======",classes)
            if classes == 0:
                gray_face = detect_image[y1:y2, x1:x2]
            else: continue
            try:
                gray_face = cv2.resize(gray_face, (emotion_target_size))
            except:
                continue
            img = gray_face.transpose(2,0,1)  #BGR2RGB和HWC2CHW
            img=img.astype(dtype=np.uint8)
            # img/= 255.0
            img = np.expand_dims(img, axis=0)
            shape = (1, 3, 224, 224)
            data = [(format, shape, img)]
            emotion_text, emotion_probability = model_predict(data, emotion_engine)
            print('predict emotion cost time: %f'%(time() - start))
            emotion_window.append(emotion_text)

            if len(emotion_window) > frame_window:
                emotion_window.pop(0)
            try:
                emotion_mode = mode(emotion_window)
            except:
                continue

            if emotion_text == 'angry':
                color = emotion_probability * np.asarray((255, 0, 0))
            elif emotion_text == 'sad':
                color = emotion_probability * np.asarray((0, 0, 255))
            elif emotion_text == 'happy':
                color = emotion_probability * np.asarray((255, 255, 0))
            elif emotion_text == 'surprise':
                color = emotion_probability * np.asarray((0, 255, 255))
            else:
               color = emotion_probability * np.asarray((0, 255, 0))

            color = color.astype(int)
            color = color.tolist()
            draw_bounding_box(face_coordinates, detect_image, color)
            draw_text(face_coordinates, detect_image, emotion_mode,
                      color, 0, 0, 1, 1)

        fps_text = ("%.2f" % (1 / (time() - frame_start)))
        cv2.putText(detect_image, 'fps: ' +fps_text, (20, 40),
                cv2.FONT_HERSHEY_SIMPLEX,
                1, (0, 255, 0), 1, cv2.LINE_AA)

        bgr_image = cv2.cvtColor(detect_image, cv2.COLOR_RGB2BGR)
        cv2.imshow('window_frame', bgr_image)
        if cv2.waitKey(1) & 0xFF == ord('q'):
            break
