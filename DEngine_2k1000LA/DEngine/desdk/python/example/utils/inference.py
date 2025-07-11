import cv2
#import matplotlib.pyplot as plt
import numpy as np



def draw_bounding_box(face_coordinates, image_array, color):
    x, y, w, h, score, classes= face_coordinates.astype(int)
    cv2.rectangle(image_array, (x, y), (w, h), color, 2)
    print("draw++++++++++++++++++")


def draw_text(coordinates, image_array, text, color, x_offset=0, y_offset=0,
                                                font_scale=2, thickness=2):
                                                
    x, y = coordinates.astype(int)[:2]
    cv2.putText(image_array, text, (x + x_offset, y + y_offset),
                cv2.FONT_HERSHEY_SIMPLEX,
                font_scale, color, thickness, cv2.LINE_AA)
    print("text================")

'''
def get_colors(num_classes):
    colors = plt.cm.hsv(np.linspace(0, 1, num_classes)).tolist()
    colors = np.asarray(colors) * 255
    return colors
'''
