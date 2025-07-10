import cv2
import numpy as np
import time
from pwm import PWMController
import threading

def delayed_pwm_action(pwm):
    time.sleep(4)
    pwm.set_duty_cycle_percent(50)               
    pwm.enable()
    print("PWM duty cycle set to 50%")
    time.sleep(1)
    pwm.disable()
    print("PWM disable")

def detect_bad_fruits():
    # 创建 PWM 控制器实例，假设 pwmchip0 通道0
    pwm = PWMController(pwmchip=0, channel=0)
    
    # 导出 PWM 通道
    try:
        pwm.export()
    except Exception as e:
        print(f"Failed to export PWM channel: {e}")
        return
    
    # 设置 PWM 频率为 50Hz
    pwm.set_frequency(50)
    
    cap = cv2.VideoCapture(0)
    
    if not cap.isOpened():
        print("错误：无法打开摄像头")
        return
    
    # 坏果检测参数
    bad_fruit_threshold = 5  # 黑色区域占比阈值(百分比)
    min_area_threshold = 100  # 最小面积阈值
    consecutive_frames = 3  # 需要连续检测到坏果的帧数
    
    # 坏果连续检测相关变量
    bad_fruit_detected = False
    bad_fruit_frames = 0
    last_bad_position = None
    
    # 新增：识别模式控制变量
    detection_mode = 'bad'  # 'bad' 或 'good'
    
    while True:
        ret, frame = cap.read()
        if not ret:
            print("错误：无法获取帧")
            break
        
        # 显示当前识别模式
        mode_color = (0, 0, 255) if detection_mode == 'bad' else (0, 255, 0)
        
        # 如果处于"好果"模式，跳过坏果检测逻辑
        if detection_mode == 'good':
            bad_fruit_frames = 0
            last_bad_position = None
        else:
            hsv = cv2.cvtColor(frame, cv2.COLOR_BGR2HSV)
            # 坏果中的黑色斑点范围
            black_ranges = [
                (np.array([0, 0, 0]), np.array([93, 255, 132]))
            ]
            
            # 创建黑色区域的掩码
            black_mask = np.zeros(hsv.shape[:2], dtype=np.uint8)
            for lower, upper in black_ranges:
                black_mask += cv2.inRange(hsv, lower, upper)
            
            # 对黑色掩码进行形态学操作
            kernel = np.ones((5, 5), np.uint8)
            black_mask = cv2.morphologyEx(black_mask, cv2.MORPH_OPEN, kernel)
            black_mask = cv2.morphologyEx(black_mask, cv2.MORPH_CLOSE, kernel)
            
            # 寻找轮廓
            _, contours, _ = cv2.findContours(black_mask, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
            
            # 寻找最大的轮廓
            largest_contour = None
            max_area = 0
            
            for contour in contours:
                area = cv2.contourArea(contour)
                if area > max_area and area > min_area_threshold:
                    max_area = area
                    largest_contour = contour
            
            # 坏果检测逻辑
            current_bad_detected = False
            
            if largest_contour is not None:
                x, y, w, h = cv2.boundingRect(largest_contour)
                center_x = x + w // 2
                center_y = y + h // 2
                
                # 计算该区域占整个画面的比例
                frame_area = frame.shape[0] * frame.shape[1]
                area_percentage = (max_area / frame_area) * 100
                
                # 如果当前区域比例超过阈值，认为是坏果
                if area_percentage >= bad_fruit_threshold:
                    current_bad_detected = True
                    
                    # 绘制边界框和信息
                    cv2.rectangle(frame, (x, y), (x + w, y + h), (128, 128, 128), 2)
                    cv2.putText(frame, f'Bad Fruit (Area: {area_percentage:.1f}%)', 
                               (x, y-10), cv2.FONT_HERSHEY_SIMPLEX, 0.7, (128, 128, 128), 2)
                    
                    # 如果当前坏果与之前检测的位置相近，认为是同一个坏果
                    if last_bad_position is not None:
                        dist = np.sqrt((center_x - last_bad_position[0])**2 + 
                                      (center_y - last_bad_position[1])**2)
                        if dist < 100:  # 距离阈值
                            bad_fruit_frames += 1
                        else:
                            bad_fruit_frames = 1
                    else:
                        bad_fruit_frames = 1
                    
                    last_bad_position = (center_x, center_y)
                    
                    # 显示坏果检测状态
                    cv2.putText(frame, f'Bad Fruit Detected: {bad_fruit_frames}/{consecutive_frames}', 
                               (10, 450), cv2.FONT_HERSHEY_SIMPLEX, 0.7, (0, 0, 255), 2)
            
            # 如果当前帧没有检测到坏果，重置计数器
            if not current_bad_detected:
                bad_fruit_frames = 0
                last_bad_position = None
            
            # 当连续检测到足够多帧坏果时，确认是坏果并控制 PWM
            if bad_fruit_frames >= consecutive_frames and not bad_fruit_detected:
                bad_fruit_detected = True
                # 启用 PWM 输出，设置占空比为 50%
                pwm.set_duty_cycle_percent(91)
                pwm.enable()
                print("PWM enabled, duty cycle 91%")
                # 启动延迟操作线程
                threading.Thread(target=delayed_pwm_action, args=(pwm,)).start()
            
            # 如果当前检测到坏果但未达到阈值，或已确认坏果但当前帧未检测到
            if (0 < bad_fruit_frames < consecutive_frames) or (bad_fruit_detected and not current_bad_detected):
                bad_fruit_detected = False  # 重置坏果确认状态
                # 禁用 PWM 输出
                pwm.disable()
                print("PWM disabled")
        
        # 显示参数信息
        cv2.putText(frame, f'Bad Threshold: {bad_fruit_threshold}%', (10, 30),
                   cv2.FONT_HERSHEY_SIMPLEX, 0.7, (255, 255, 255), 2)
        cv2.putText(frame, f'Min Area: {min_area_threshold}', (10, 60),
                   cv2.FONT_HERSHEY_SIMPLEX, 0.7, (255, 255, 255), 2)
        
        cv2.imshow('Bad Fruit Detection', frame)
        
        # 按键控制：
        # + 键增加坏果阈值
        # - 键减少坏果阈值
        # m 键切换识别模式
        # q 键退出程序
        key = cv2.waitKey(1) & 0xFF
        if key == ord('q'):
            break
        elif key == ord('+') or key == ord('='):
            bad_fruit_threshold += 1
            print(f"坏果阈值已增加到: {bad_fruit_threshold}%")
        elif key == ord('-'):
            bad_fruit_threshold = max(1, bad_fruit_threshold - 1)
            print(f"坏果阈值已减少到: {bad_fruit_threshold}%")
        elif key == ord('m'):  # 新增：模式切换
            detection_mode = 'good' if detection_mode == 'bad' else 'bad'
            status = "好果检测" if detection_mode == 'good' else "坏果检测"
    
    # 释放资源
    pwm.disable()
    pwm.unexport()
    cap.release()
    cv2.destroyAllWindows()

if __name__ == "__main__":
    detect_bad_fruits()
