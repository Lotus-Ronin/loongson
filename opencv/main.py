import cv2
import numpy as np
import serial
import serial.tools.list_ports
import time
import threading
import logging

# 配置日志
logging.basicConfig(
    level=logging.INFO,
    format='%(asctime)s - %(message)s'
)
logger = logging.getLogger(__name__)

# 串口配置
SERIAL_CONFIG = {
    'port': '/dev/ttyS2',
    'baudrate': 115200,
    'timeout': 0.1  # 降低超时时间，提高响应速度
}

ser = None
is_running = True
send_event = threading.Event()
send_data_queue = []  # 用于存储待发送的数据

def connect_serial():
    """连接串口并返回连接状态"""
    global ser
    try:
        if ser:
            try:
                ser.close()
            except Exception as e:
                logger.warning(f"关闭串口失败: {e}")
            ser = None
            
        ser = serial.Serial(**SERIAL_CONFIG)
        if ser.is_open:
            logger.info(f"串口已连接: {ser.port}")
            return True
    except Exception as e:
        logger.error(f"串口连接失败: {e}")
    return False

def send_data():
    """持续检查发送队列并发送数据"""
    global ser, is_running, send_data_queue
    
    while is_running:
        try:
            if not ser or not ser.is_open:
                logger.warning("串口未连接，尝试重连...")
                if not connect_serial():
                    time.sleep(2)
                    continue
            
            # 检查是否有数据需要发送
            if send_data_queue:
                data_to_send = send_data_queue.pop(0)
                try:
                    ser.write(data_to_send.encode())
                    logger.info(f"成功发送: {data_to_send}")
                except Exception as e:
                    logger.error(f"发送数据失败: {e}")
                    # 将数据放回队列重试
                    send_data_queue.insert(0, data_to_send)
                    if ser:
                        try:
                            ser.close()
                        except:
                            pass
                    ser = None
                    time.sleep(1)
            else:
                time.sleep(0.01)  # 减少CPU占用
                
        except Exception as e:
            logger.error(f"发送线程发生错误: {e}")
            time.sleep(1)

def detect_largest_object():
    # 尝试自动查找串口设备
    serial_port = None
    ports = serial.tools.list_ports.comports()
    for port in ports:
        if 'USB' in port.description or 'ttyUSB' in port.device:
            serial_port = port.device
            print(f"找到串口设备: {serial_port}")
            SERIAL_CONFIG['port'] = serial_port
            break
    
    if not serial_port:
        print("警告: 未自动检测到串口设备，使用默认配置")
    
    # 初始化串口连接
    if not connect_serial():
        print("错误：无法连接到串口，程序退出")
        return
    
    # 启动串口发送线程
    send_thread = threading.Thread(target=send_data)
    send_thread.daemon = True
    send_thread.start()
    
    cap = cv2.VideoCapture(2)
    
    if not cap.isOpened():
        print("错误：无法打开摄像头")
        return
    
    # 初始化计数器
    counters = {'red': 0, 'yellow': 0, 'green': 0}
    # 存储已检测物体的历史位置
    detected_objects = []
    # 距离阈值，用于判断是否为新物体
    distance_threshold = 100
    # 连续检测次数阈值，确认是新物体
    detection_threshold = 5
    # 面积阈值
    area_threshold = 2000
    # 上次发送时间
    last_send_time = {'red': 0, 'yellow': 0, 'green': 0}
    # 发送间隔（毫秒）
    send_interval = 1000
    
    # 颜色映射关系
    color_mapping = {
        'red': '1',
        'yellow': '2',
        'green': '3'
    }
    
    while True:
        ret, frame = cap.read()
        if not ret:
            print("错误：无法获取帧")
            break
        
        hsv = cv2.cvtColor(frame, cv2.COLOR_BGR2HSV)
        
        # 定义颜色范围
        color_ranges = {
            'red': [
                (np.array([0, 253, 60]), np.array([4, 255, 253]))
            ],
            'yellow': [
                (np.array([0, 71, 249]), np.array([51, 194, 255]))
            ],
            'green': [
                (np.array([40, 100, 100]), np.array([80, 255, 255]))
            ]
        }
        
        box_colors = {
            'red': (0, 0, 255),
            'yellow': (0, 255, 255),
            'green': (0, 255, 0)
        }
        
        largest_object = None  # 存储最大物体信息 (轮廓, 面积, 颜色, 中心点)
        
        # 检测所有颜色的物体并找到最大的
        for color, ranges in color_ranges.items():
            mask = np.zeros(hsv.shape[:2], dtype=np.uint8)
            for lower, upper in ranges:
                mask += cv2.inRange(hsv, lower, upper)
            
            kernel = np.ones((5, 5), np.uint8)
            mask = cv2.morphologyEx(mask, cv2.MORPH_OPEN, kernel)
            mask = cv2.morphologyEx(mask, cv2.MORPH_CLOSE, kernel)
            
            # 根据OpenCV版本调整返回值的接收方式
            if cv2.__version__.startswith('3.'):
                _, contours, _ = cv2.findContours(mask, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
            else:
                contours, _ = cv2.findContours(mask, cv2.RETR_EXTERNAL, cv2.CHAIN_APPROX_SIMPLE)
            
            for contour in contours:
                if len(contour) == 0:
                    continue
                    
                if contour.dtype != np.int32:
                    contour = np.array(contour, dtype=np.int32)
                
                area = cv2.contourArea(contour)
                if area > area_threshold:
                    x, y, w, h = cv2.boundingRect(contour)
                    center_x = x + w // 2
                    center_y = y + h // 2
                    
                    if largest_object is None or area > largest_object[1]:
                        largest_object = (contour, area, color, (center_x, center_y))
        
        # 如果找到了物体，绘制最大物体的边界框
        if largest_object is not None:
            contour, area, color, center = largest_object
            x, y, w, h = cv2.boundingRect(contour)
            color_code = box_colors[color]
            
            cv2.rectangle(frame, (x, y), (x + w, y + h), color_code, 2)
            cv2.putText(frame, f'Largest {color.capitalize()} (Area: {int(area)})', (x, y-10), 
                       cv2.FONT_HERSHEY_SIMPLEX, 0.9, color_code, 2)
            
            # 在中心绘制十字标记
            center_x, center_y = center
            cv2.line(frame, (center_x - 10, center_y), (center_x + 10, center_y), color_code, 2)
            cv2.line(frame, (center_x, center_y - 10), (center_x, center_y + 10), color_code, 2)
            
            # 物体计数逻辑
            is_new_object = True
            for obj in detected_objects:
                dist = np.sqrt((center_x - obj['center'][0])** 2 + (center_y - obj['center'][1])**2)
                if dist < distance_threshold and obj['color'] == color:
                    obj['center'] = center
                    obj['count'] += 1
                    if obj['count'] == detection_threshold and not obj.get('counted'):
                        counters[color] += 1
                        obj['counted'] = True
                        print(f"检测到新的{color}苹果，总数: {counters[color]}")
                    is_new_object = False
                    break
            
            if is_new_object:
                detected_objects.append({
                    'center': center,
                    'color': color,
                    'count': 1,
                    'area': area,
                    'counted': False
                })
            
            # 串口发送逻辑
            current_time = time.time() * 1000
            if current_time - last_send_time[color] > send_interval:
                try:
                    code_to_send = color_mapping[color]
                    send_data_queue.append(code_to_send)
                    last_send_time[color] = current_time
                    logger.info(f"排队发送: {code_to_send} ({color}苹果)")
                except Exception as e:
                    logger.error(f"发送队列错误: {e}")
        
        # 清理长时间未更新的物体记录
        current_time = time.time() * 1000
        detected_objects = [obj for obj in detected_objects 
                           if current_time - obj.get('last_updated', current_time) < 5000]
        
        # 绘制计数器显示
        display_y = 30
        for color, count in counters.items():
            color_code = box_colors[color]
            cv2.putText(frame, f'{color.capitalize()} Apples: {count}', (10, display_y),
                       cv2.FONT_HERSHEY_SIMPLEX, 0.7, color_code, 2)
            display_y += 30
        
        # 显示当前面积阈值
        cv2.putText(frame, f'Area Threshold: {area_threshold}', (10, display_y+10),
                   cv2.FONT_HERSHEY_SIMPLEX, 0.6, (255, 255, 255), 2)
        
        cv2.imshow('Largest Object Detection', frame)
        
        # 按键控制：
        key = cv2.waitKey(1) & 0xFF
        if key == ord('q'):
            break
        elif key == ord('+') or key == ord('='):
            area_threshold += 100
            print(f"面积阈值已增加到: {area_threshold}")
        elif key == ord('-'):
            area_threshold = max(100, area_threshold - 100)
            print(f"面积阈值已减少到: {area_threshold}")
    
    # 释放资源
    global is_running
    is_running = False
    if ser and ser.is_open:
        ser.close()
        print("已关闭串口连接")
        
    cap.release()
    cv2.destroyAllWindows()

if __name__ == "__main__":
    logger.info("程序启动，仅保留串口发送功能")
    detect_largest_object()
    logger.info("程序已安全退出")
