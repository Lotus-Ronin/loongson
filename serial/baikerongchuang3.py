import sys
import time
import json
import paho.mqtt.client as mqtt
import serial
from serial.serialutil import SerialException
from PyQt5.QtWidgets import (QApplication, QMainWindow, QLabel, QVBoxLayout, 
                            QHBoxLayout, QWidget, QGroupBox, QPushButton, 
                            QTextEdit, QFormLayout, QStatusBar, QTabWidget,
                            QComboBox, QLineEdit, QGridLayout, QSplitter,
                            QMessageBox, QCheckBox, QFrame, QProgressBar,
                            QSizePolicy, QStackedWidget, QToolTip)
from PyQt5.QtCore import QThread, pyqtSignal, Qt, QTimer, QPropertyAnimation, QEasingCurve
from PyQt5.QtGui import QPainter, QPen, QColor, QFont, QPalette, QIcon, QPixmap, QBrush, QLinearGradient, QPainterPath

# 配置
MQTT_BROKER = "115.28.209.116"
MQTT_PORT = 1883
MQTT_USERNAME = "bkrc"
MQTT_PASSWORD = "88888888"
CLIENT_ID = "1c097bc15129e3e2ef44f88c286b4475"
DEVICE_ID = "29c9c7bf1dafd9ca"

TOPIC_UP = f"device/{DEVICE_ID}/up"
TOPIC_DOWN = f"device/{DEVICE_ID}/down"

SERIAL_PORT = "/dev/ttyS2"  
BAUDRATE = 115200
TIMEOUT = 3 

RECONNECT_DELAY = 5  
MAX_RECONNECT_ATTEMPTS = 11 
MIN_REPORT_INTERVAL = 5  


class CircularProgressBar(QWidget):
    """圆形进度条，优化了视觉效果和动画"""
    valueChanged = pyqtSignal(int)
    
    def __init__(self, parent=None):
        super().__init__(parent)
        self.value = 0
        self.min_value = 0
        self.max_value = 100
        self.setFixedSize(140, 140)
        self.animation = None
        self.setStyleSheet("background-color: transparent;")
        
    def set_value(self, value):
        self.value = max(self.min_value, min(value, self.max_value))
        if self.animation:
            self.animation.stop()
            
        self.animation = QPropertyAnimation(self, b'value', self)
        self.animation.setDuration(500)
        self.animation.setStartValue(self.value - (self.value * 0.1))  # 轻微过冲效果
        self.animation.setEndValue(self.value)
        self.animation.setEasingCurve(QEasingCurve.OutCubic)
        self.animation.start()
        self.valueChanged.emit(self.value)
        self.update()
        
    def set_range(self, min_value, max_value):
        self.min_value = min_value
        self.max_value = max_value
        self.update()
        
    def paintEvent(self, event):
        painter = QPainter(self)
        painter.setRenderHint(QPainter.Antialiasing)
        
        # 计算百分比
        if self.max_value > self.min_value:
            percentage = (self.value - self.min_value) / (self.max_value - self.min_value) * 100
        else:
            percentage = 0
            
        # 设置颜色 (带渐变效果)
        if percentage < 30:
            gradient = QLinearGradient(0, 0, self.width(), self.height())
            gradient.setColorAt(0, QColor(255, 100, 100))
            gradient.setColorAt(1, QColor(255, 50, 50))
            color = QBrush(gradient)
        elif percentage < 70:
            gradient = QLinearGradient(0, 0, self.width(), self.height())
            gradient.setColorAt(0, QColor(255, 180, 50))
            gradient.setColorAt(1, QColor(255, 120, 0))
            color = QBrush(gradient)
        else:
            gradient = QLinearGradient(0, 0, self.width(), self.height())
            gradient.setColorAt(0, QColor(100, 200, 100))
            gradient.setColorAt(1, QColor(50, 150, 50))
            color = QBrush(gradient)
            
        # 绘制背景圆
        painter.setPen(Qt.NoPen)
        painter.setBrush(QColor(245, 245, 245))
        painter.drawEllipse(15, 15, 110, 110)
        
        # 绘制进度圆弧
        painter.setPen(QPen(QColor(230, 230, 230), 10, Qt.SolidLine, Qt.RoundCap))
        painter.drawEllipse(15, 15, 110, 110)
        
        painter.setPen(QPen(color, 10, Qt.SolidLine, Qt.RoundCap))
        start_angle = 90 * 16  # 从顶部开始
        span_angle = -percentage * 3.6 * 16  # 顺时针方向
        painter.drawArc(15, 15, 110, 110, start_angle, span_angle)
        
        # 绘制中心装饰圆
        center_brush = QBrush(QColor(255, 255, 255))
        painter.setPen(Qt.NoPen)
        painter.setBrush(center_brush)
        painter.drawEllipse(40, 40, 60, 60)
        
        # 绘制中心文本
        painter.setPen(QColor(50, 50, 50))
        font = QFont("SimHei", 16, QFont.Bold)
        painter.setFont(font)
        painter.drawText(self.rect(), Qt.AlignCenter, f"{self.value}")
        
        # 绘制单位标识
        if self.max_value <= 100:
            painter.setFont(QFont("SimHei", 10))
            painter.drawText(self.rect(), Qt.AlignBottom | Qt.AlignHCenter, "%")


class DataThread(QThread):
    """数据采集线程，修改为基于\r\n的消息解析"""
    data_updated = pyqtSignal(dict)
    log_message = pyqtSignal(str)
    connection_status = pyqtSignal(str)
    mqtt_connected = pyqtSignal(bool)
    serial_connected = pyqtSignal(bool)
    
    def __init__(self):
        super().__init__()
        self.running = False
        self.mqtt_client = None
        self.serial_port = None
        self.reconnect_attempts = 0
        self.stored_data = {
            "temperature": None,
            "humidity": None,
            "weight": None
        }
        self.last_report_time = 0
        self.last_data_time = {
            "temperature": None,
            "humidity": None,
            "weight": None
        }
        self.buffer = ""  # 新增：用于存储未完全解析的串口数据
    
    def run(self):
        self.running = True
        self.setup_mqtt()
        
        while self.running:
            try:
                if not self.serial_port or not self.serial_port.is_open:
                    if self.reconnect_attempts >= MAX_RECONNECT_ATTEMPTS:
                        self.log_message.emit(f"达到最大重连次数({MAX_RECONNECT_ATTEMPTS})，停止尝试")
                        self.connection_status.emit("串口: 连接失败")
                        self.serial_connected.emit(False)
                        time.sleep(RECONNECT_DELAY)
                        continue
                        
                    try:
                        self.log_message.emit(f"尝试连接串口 {SERIAL_PORT} (尝试 {self.reconnect_attempts+1}/{MAX_RECONNECT_ATTEMPTS})")
                        self.serial_port = serial.Serial(SERIAL_PORT, BAUDRATE, timeout=TIMEOUT)
                        self.log_message.emit(f"成功连接串口 {SERIAL_PORT}")
                        self.reconnect_attempts = 0
                        self.connection_status.emit("串口: 已连接")
                        self.serial_connected.emit(True)
                        self.buffer = ""  # 重置缓冲区
                    except SerialException as e:
                        self.log_message.emit(f"串口连接失败: {str(e)}")
                        self.reconnect_attempts += 1
                        self.safe_close_serial()
                        self.connection_status.emit("串口: 连接失败")
                        self.serial_connected.emit(False)
                        time.sleep(RECONNECT_DELAY)
                        continue
                
                # 读取并处理串口数据
                self.process_serial_data()
                
                current_time = time.time()
                
                # 检查是否有足够的数据且达到上报时间间隔
                if (self.stored_data["temperature"] is not None and
                    self.stored_data["humidity"] is not None and
                    time.time() - self.last_report_time >= MIN_REPORT_INTERVAL):
                    
                    # 构建上报数据
                    data = {
                        "sign": DEVICE_ID,
                        "type": "1",
                        "data": {
                            "Temp": {"temp": str(self.stored_data["temperature"])},
                            "Humi": {"humi": str(self.stored_data["humidity"])},
                        }
                    }
                    # 修改部分：增加对重量数据的有效检查
                    if self.stored_data["weight"] is not None and self.stored_data["weight"] != "":
                        data["data"]["Weight"] = {"weight": str(self.stored_data["weight"])}
                    
                    # 上报数据
                    if self.mqtt_client and self.mqtt_client.is_connected():
                        self.mqtt_client.publish(TOPIC_UP, json.dumps(data, ensure_ascii=False))
                        self.log_message.emit(f"上报数据：{json.dumps(data, ensure_ascii=False)}")
                        self.last_report_time = time.time()
                    else:
                        self.log_message.emit("MQTT未连接，跳过此次上报")
            
            except SerialException as e:
                self.log_message.emit(f"串口通信异常: {str(e)}")
                self.safe_close_serial()
                self.connection_status.emit("串口: 连接断开")
                self.serial_connected.emit(False)
                self.buffer = ""  # 重置缓冲区
                time.sleep(RECONNECT_DELAY)
            except Exception as e:
                self.log_message.emit(f"程序运行错误: {str(e)}")
                time.sleep(1)
    
    def setup_mqtt(self):
        """设置MQTT客户端"""
        try:
            self.mqtt_client = mqtt.Client(client_id=CLIENT_ID, protocol=mqtt.MQTTv5)
            self.mqtt_client.username_pw_set(MQTT_USERNAME, MQTT_PASSWORD)
            self.mqtt_client.on_connect = self.on_connect
            self.mqtt_client.on_message = self.on_message
            self.mqtt_client.on_disconnect = self.on_disconnect
            self.mqtt_client.connect(MQTT_BROKER, MQTT_PORT, keepalive=60)
            self.mqtt_client.loop_start()
            self.log_message.emit("正在连接MQTT服务器...")
        except Exception as e:
            self.log_message.emit(f"MQTT连接失败: {str(e)}")
            self.connection_status.emit("MQTT: 连接失败")
            self.mqtt_connected.emit(False)
    
    def on_connect(self, client, userdata, flags, reason_code, properties):
        """MQTT连接回调函数"""
        if reason_code == 0:
            self.log_message.emit("已连接到MQTT服务器")
            self.connection_status.emit("MQTT: 已连接")
            self.mqtt_connected.emit(True)
            client.subscribe(TOPIC_DOWN)
        else:
            self.log_message.emit(f"MQTT连接失败，错误码：{reason_code}")
            self.connection_status.emit("MQTT: 连接失败")
            self.mqtt_connected.emit(False)
    
    def on_message(self, client, userdata, msg):
        """MQTT消息接收回调函数"""
        message = f"收到下行消息：{msg.topic} -> {msg.payload.decode()}"
        self.log_message.emit(message)
    
    def on_disconnect(self, client, userdata, reason_code):
        """MQTT断开连接回调函数"""
        self.log_message.emit(f"MQTT连接已断开，错误码：{reason_code}")
        self.connection_status.emit("MQTT: 连接断开")
        self.mqtt_connected.emit(False)
    
    def process_serial_data(self):
        """处理串口数据，基于\r\n分割消息"""
        if self.serial_port and self.serial_port.is_open:
            try:
                # 读取所有可用数据
                if self.serial_port.in_waiting > 0:
                    raw_bytes = self.serial_port.read(self.serial_port.in_waiting)
                    try:
                        # 尝试解码为UTF-8
                        data_chunk = raw_bytes.decode('utf-8')
                    except UnicodeDecodeError:
                        self.log_message.emit(f"无法解码串口数据，忽略此块: {raw_bytes}")
                        return
                    
                    # 将数据块添加到缓冲区
                    self.buffer += data_chunk
                    
                    # 处理所有完整消息
                    while '\r\n' in self.buffer:
                        # 分割出一条完整消息
                        message, self.buffer = self.buffer.split('\r\n', 1)
                        message = message.strip()  # 去除首尾空白
                        
                        if message:
                            self.log_message.emit(f"接收到完整消息: {message}")
                            # 解析消息
                            t, h, w = self.parse_sensor_data(message)
                            
                            current_time = time.time()
                            
                            # 更新存储数据（如果有新值）
                            if t is not None:
                                self.stored_data["temperature"] = t
                                self.last_data_time["temperature"] = current_time
                                self.data_updated.emit({"temperature": t, "timestamp": current_time})
                                
                            if h is not None:
                                self.stored_data["humidity"] = h
                                self.last_data_time["humidity"] = current_time
                                self.data_updated.emit({"humidity": h, "timestamp": current_time})
                                
                            if w is not None:
                                self.stored_data["weight"] = w
                                self.last_data_time["weight"] = current_time
                                self.data_updated.emit({"weight": w, "timestamp": current_time})
                                
            except ValueError as e:
                self.log_message.emit(f"解析串口数据错误: {str(e)}")
            except Exception as e:
                self.log_message.emit(f"处理串口数据异常: {str(e)}")
    
    def parse_sensor_data(self, raw_data):
        """解析温湿度和重量数据，当单个数据与之前不同时单独更新"""
        # 获取历史数据（使用getattr确保属性存在）
        last_temperature = getattr(self, 'last_temperature', None)
        last_humidity = getattr(self, 'last_humidity', None)
        last_weight = getattr(self, 'last_weight', None)
        
        def limit_and_predict(value, min_val, max_val, last_value):
            """限制数值范围并基于历史趋势预测"""
            if value is None:
                return None
                
            if min_val <= value <= max_val:
                return value
                
            if last_value is not None:
                change_ratio = 0.3 if abs(value - last_value) > 10 else 0.1
                max_change = max(1, abs(last_value * change_ratio))
                
                if value > max_val:
                    predicted = min(max_val, last_value + max_change)
                else:
                    predicted = max(min_val, last_value - max_change)
                    
                self.log_message.emit(f"数值超出范围: {value}，预测修正为: {predicted}")
                return predicted
                
            bounded_value = max(min_val, min(max_val, value))
            self.log_message.emit(f"数值超出范围: {value}，使用边界值: {bounded_value}")
            return bounded_value
        
        # 按\r\n分割数据
        messages = raw_data.split('\r\n')
        
        # 初始化更新标志和结果
        updated_temperature = False
        updated_humidity = False
        updated_weight = False
        current_temperature = last_temperature
        current_humidity = last_humidity
        current_weight = last_weight
        
        # 处理每个消息
        for message in messages:
            if not message.strip():  # 跳过空消息
                continue
                
            # 直接解析温度格式：T整数.小数C
            if message.startswith("T") and message.endswith("C"):
                try:
                    value_str = message[1:-1]
                    temperature = float(value_str)
                    temperature = limit_and_predict(temperature, -20, 40, last_temperature)
                    
                    # 只有当温度值不同时才更新
                    if temperature is not None and temperature != last_temperature:
                        current_temperature = temperature
                        updated_temperature = True
                        self.log_message.emit(f"温度更新: {temperature}°C")
                        
                except ValueError:
                    self.log_message.emit(f"温度解析失败: {message}")
        
            # 直接解析湿度格式：H整数.小数R
            elif message.startswith("H") and message.endswith("R"):
                try:
                    value_str = message[1:-1]
                    humidity_value = float(value_str)
                    humidity = humidity_value if humidity_value >= 10 else humidity_value + 40
                    humidity = limit_and_predict(humidity, 20, 80, last_humidity)
                    
                    # 只有当湿度值不同时才更新
                    if humidity is not None and humidity != last_humidity:
                        current_humidity = humidity
                        updated_humidity = True
                        self.log_message.emit(f"湿度更新: {humidity}%")
                        
                except ValueError:
                    self.log_message.emit(f"湿度解析失败: {message}")
        
            # 直接解析重量格式：W整数.小数g
            elif message.startswith("W") and message.endswith("g"):
                try:
                    value_str = message[1:-1]
                    weight = float(value_str)
                    
                    # 只有当重量值不同时才更新
                    if weight is not None and weight != last_weight:
                        current_weight = weight
                        updated_weight = True
                        self.log_message.emit(f"重量更新: {weight}g")
                        
                except ValueError:
                    self.log_message.emit(f"重量解析失败: {message}")
        
        # 保存当前值作为历史数据（仅更新有变化的值）
        if updated_temperature:
            self.last_temperature = current_temperature
        if updated_humidity:
            self.last_humidity = current_humidity
        if updated_weight:
            self.last_weight = current_weight
            
        # 返回更新后的值（如果没有更新则返回None）
        return (
            current_temperature if updated_temperature else None,
            current_humidity if updated_humidity else None,
            current_weight if updated_weight else None
        )
    
    def safe_close_serial(self):
        """安全关闭串口连接"""
        try:
            if self.serial_port and self.serial_port.is_open:
                self.serial_port.close()
                self.log_message.emit("串口已关闭")
        except Exception as e:
            self.log_message.emit(f"关闭串口异常: {str(e)}")
    
    def stop(self):
        """停止线程运行"""
        self.running = False
        if self.mqtt_client:
            self.mqtt_client.loop_stop()
            self.mqtt_client.disconnect()
            self.log_message.emit("已断开MQTT连接")
        self.safe_close_serial()
        self.wait()


class StatusIndicator(QLabel):
    """状态指示器，优化了视觉效果"""
    def __init__(self, parent=None):
        super().__init__(parent)
        self.setFixedSize(20, 20)
        self.set_status(False)
        self.setStyleSheet("border-radius: 10px;")
        
    def set_status(self, connected):
        if connected:
            self.setStyleSheet("background-color: #4CAF50; border: 1px solid #388E3C;")
        else:
            self.setStyleSheet("background-color: #F44336; border: 1px solid #D32F2F;")


class CustomChart(QWidget):
    """自定义图表组件，优化了视觉效果"""
    def __init__(self, parent=None):
        super().__init__(parent)
        self.data = []  # 存储数据点: [(时间, 值), ...]
        self.max_points = 100  # 最多显示的数据点数量
        self.title = "趋势图"
        self.y_label = "值"
        self.color = QColor(255, 0, 0)  # 默认红色
        self.min_value = 0
        self.max_value = 100
        self.setStyleSheet("background-color: #f9f9f9;")
        
    def set_data(self, data):
        """设置图表数据"""
        self.data = data
        if len(self.data) > self.max_points:
            self.data = self.data[-self.max_points:]
        self.update()
        
    def set_title(self, title):
        """设置图表标题"""
        self.title = title
        self.update()
        
    def set_y_label(self, label):
        """设置Y轴标签"""
        self.y_label = label
        self.update()
        
    def set_color(self, color):
        """设置线条颜色"""
        self.color = color
        self.update()
        
    def set_value_range(self, min_value, max_value):
        """设置Y轴值范围"""
        self.min_value = min_value
        self.max_value = max_value
        self.update()
        
    def paintEvent(self, event):
        """绘制图表"""
        painter = QPainter(self)
        painter.setRenderHint(QPainter.Antialiasing)
        
        # 绘制背景和边框
        painter.fillRect(self.rect(), QColor(255, 255, 255))
        pen = QPen(QColor(230, 230, 230), 1)
        painter.setPen(pen)
        painter.drawRect(0, 0, self.width()-1, self.height()-1)
        
        # 设置边距
        margin = 30
        chart_width = self.width() - 2 * margin
        chart_height = self.height() - 2 * margin
        
        # 绘制标题
        painter.setFont(QFont("SimHei", 12, QFont.Bold))
        painter.setPen(QColor(60, 60, 60))
        painter.drawText(margin, 20, self.title)
        
        # 如果没有数据，直接返回
        if not self.data:
            painter.setFont(QFont("SimHei", 10))
            painter.setPen(QColor(150, 150, 150))
            painter.drawText(margin, self.height()/2, "暂无数据")
            return
            
        # 计算时间范围和值范围
        min_time = self.data[0][0]
        max_time = self.data[-1][0]
        time_range = max_time - min_time if max_time > min_time else 1
        
        # 如果没有指定值范围，则根据数据自动计算
        if not hasattr(self, 'min_value') or not hasattr(self, 'max_value'):
            values = [d[1] for d in self.data]
            self.min_value = min(values) - 5
            self.max_value = max(values) + 5
            if self.max_value <= self.min_value:
                self.max_value = self.min_value + 10
                
        value_range = self.max_value - self.min_value
        
        # 绘制坐标轴
        painter.setPen(QPen(QColor(200, 200, 200), 1))
        painter.drawLine(margin, margin, margin, margin + chart_height)  # Y轴
        painter.drawLine(margin, margin + chart_height, margin + chart_width, margin + chart_height)  # X轴
        
        # 绘制Y轴刻度
        y_ticks = 5
        for i in range(y_ticks + 1):
            y = margin + chart_height - (i * chart_height / y_ticks)
            painter.drawLine(margin - 5, y, margin, y)
            value = self.min_value + (i * value_range / y_ticks)
            painter.setFont(QFont("SimHei", 8))
            painter.setPen(QColor(120, 120, 120))
            painter.drawText(margin - 25, y + 3, f"{value:.1f}")
            
        # 绘制X轴刻度（时间）
        x_ticks = min(5, len(self.data))
        for i in range(x_ticks + 1):
            if x_ticks > 0:
                index = int(i * (len(self.data) - 1) / x_ticks)
                if 0 <= index < len(self.data):
                    x = margin + (i * chart_width / x_ticks)
                    painter.drawLine(x, margin + chart_height, x, margin + chart_height + 5)
                    
                    # 格式化时间显示
                    timestamp = self.data[index][0]
                    time_str = time.strftime("%H:%M", time.localtime(timestamp))
                    painter.setFont(QFont("SimHei", 8))
                    painter.setPen(QColor(120, 120, 120))
                    painter.drawText(x - 10, margin + chart_height + 18, time_str)
        
        # 绘制数据点
        if len(self.data) >= 2:
            # 绘制数据区域背景
            painter.setPen(Qt.NoPen)
            painter.setBrush(QBrush(self.color, Qt.Dense4Pattern))
            painter.setOpacity(0.1)
            
            points = []
            for time_val, value in self.data:
                x = margin + ((time_val - min_time) / time_range) * chart_width
                y = margin + chart_height - ((value - self.min_value) / value_range) * chart_height
                points.append((x, y))
            
            # 绘制填充区域
            path = QPainterPath()
            if points:
                path.moveTo(points[0][0], points[0][1])
                for x, y in points[1:]:
                    path.lineTo(x, y)
                path.lineTo(margin + chart_width, margin + chart_height)
                path.lineTo(margin, margin + chart_height)
                path.closeSubpath()
                painter.drawPath(path)
            
            # 绘制数据线
            painter.setPen(QPen(self.color, 2, Qt.SolidLine))
            for i in range(len(points) - 1):
                painter.drawLine(points[i][0], points[i][1], points[i+1][0], points[i+1][1])
                
            # 绘制最后一个数据点
            if points:
                last_x, last_y = points[-1]
                painter.setBrush(self.color)
                painter.drawEllipse(last_x - 4, last_y - 4, 8, 8)
                
                # 显示最后一个数据点的值
                painter.setFont(QFont("SimHei", 9, QFont.Bold))
                painter.setPen(self.color)
                painter.drawText(last_x + 5, last_y - 5, f"{self.data[-1][1]:.1f}")


class DataCard(QWidget):
    """数据卡片组件，整合数据显示"""
    def __init__(self, title, unit, color, parent=None):
        super().__init__(parent)
        self.title = title
        self.unit = unit
        self.color = color
        self.value = "---"
        self.time = "更新时间: --:--:--"
        self.init_ui()
        
    def init_ui(self):
        """初始化用户界面"""
        main_layout = QVBoxLayout(self)
        main_layout.setContentsMargins(10, 10, 10, 10)
        main_layout.setSpacing(8)
        
        # 标题栏
        title_bar = QHBoxLayout()
        title_label = QLabel(self.title)
        title_label.setFont(QFont("SimHei", 12, QFont.Bold))
        title_label.setStyleSheet(f"color: {self.color.name()};")
        title_bar.addWidget(title_label)
        title_bar.addStretch()
        
        # 状态点
        self.status_dot = QLabel()
        self.status_dot.setFixedSize(8, 8)
        self.status_dot.setStyleSheet("background-color: #999; border-radius: 4px;")
        title_bar.addWidget(self.status_dot)
        
        main_layout.addLayout(title_bar)
        
        # 数值显示
        value_layout = QHBoxLayout()
        self.value_label = QLabel(self.value)
        self.value_label.setFont(QFont("SimHei", 24, QFont.Bold))
        self.value_label.setStyleSheet(f"color: {self.color.name()};")
        self.value_label.setAlignment(Qt.AlignCenter)
        
        self.progress_bar = CircularProgressBar()
        self.progress_bar.set_range(0, 100)
        
        value_layout.addWidget(self.progress_bar)
        value_layout.addWidget(self.value_label)
        
        main_layout.addLayout(value_layout)
        
        # 单位显示
        unit_label = QLabel(self.unit)
        unit_label.setFont(QFont("SimHei", 12))
        unit_label.setAlignment(Qt.AlignCenter)
        unit_label.setStyleSheet(f"color: {self.color.lighter(120).name()};")
        main_layout.addWidget(unit_label)
        
        # 时间显示
        self.time_label = QLabel(self.time)
        self.time_label.setFont(QFont("SimHei", 9))
        self.time_label.setAlignment(Qt.AlignCenter)
        self.time_label.setStyleSheet("color: #999;")
        main_layout.addWidget(self.time_label)
        
        # 设置卡片样式
        self.setStyleSheet(f"""
            QWidget {{
                background-color: white;
                border-radius: 10px;
                box-shadow: 0 2px 10px rgba(0, 0, 0, 0.08);
            }}
        """)
    
    def update_data(self, value, timestamp, status=True):
        """更新卡片数据"""
        self.value = f"{value:.1f}"
        self.value_label.setText(self.value)
        self.time = f"更新时间: {time.strftime('%H:%M:%S', time.localtime(timestamp))}"
        self.time_label.setText(self.time)
        self.progress_bar.set_value(int(value))
        
        # 更新状态点颜色
        if status:
            self.status_dot.setStyleSheet("background-color: #4CAF50; border-radius: 4px;")
        else:
            self.status_dot.setStyleSheet("background-color: #F44336; border-radius: 4px;")


class MainWindow(QMainWindow):
    """主窗口类，优化了界面布局和样式"""
    def __init__(self):
        super().__init__()
        self.setWindowTitle("环境数据监控系统")
        self.setGeometry(100, 100, 1200, 800)
        
        # 用于存储历史数据
        self.history_data = {
            "temperature": [],
            "humidity": [],
            "weight": []
        }
        
        self.data_thread = DataThread()
        self.setup_ui()
        self.setup_connections()
        self.data_thread.start()
        
        # 设置定时器，检查数据更新状态
        self.update_timer = QTimer()
        self.update_timer.timeout.connect(self.check_data_status)
        self.update_timer.start(5000)  # 每5秒检查一次
    
    def setup_ui(self):
        """设置用户界面"""
        # 创建主布局
        central_widget = QWidget()
        self.setCentralWidget(central_widget)
        main_layout = QVBoxLayout(central_widget)
        main_layout.setContentsMargins(0, 0, 0, 0)
        main_layout.setSpacing(0)
        
        # 创建顶部导航栏
        nav_bar = QWidget()
        nav_bar.setStyleSheet("""
            background-color: #263238;
            height: 48px;
            color: white;
            font-family: "SimHei", sans-serif;
        """)
        nav_layout = QHBoxLayout(nav_bar)
        nav_layout.setContentsMargins(15, 0, 15, 0)
        
        # 标题
        title_label = QLabel("环境数据监控系统")
        title_label.setFont(QFont("SimHei", 16, QFont.Bold))
        nav_layout.addWidget(title_label)
        
        nav_layout.addStretch()
        
        # 设备ID显示
        device_label = QLabel(f"设备ID: {DEVICE_ID}")
        device_label.setFont(QFont("SimHei", 10))
        device_label.setStyleSheet("color: #b0bec5;")
        nav_layout.addWidget(device_label)
        
        main_layout.addWidget(nav_bar)
        
        # 创建状态信息栏
        status_bar = QWidget()
        status_bar.setStyleSheet("""
            background-color: #f5f5f5;
            height: 36px;
            border-bottom: 1px solid #e0e0e0;
        """)
        status_layout = QHBoxLayout(status_bar)
        status_layout.setContentsMargins(15, 0, 15, 0)
        
        # MQTT连接状态
        status_layout.addWidget(QLabel("MQTT状态:"))
        self.mqtt_status = StatusIndicator()
        status_layout.addWidget(self.mqtt_status)
        status_layout.addWidget(QLabel("  串口状态:"))
        self.serial_status = StatusIndicator()
        status_layout.addWidget(self.serial_status)
        
        status_layout.addStretch()
        
        # 刷新按钮
        refresh_button = QPushButton("刷新")
        refresh_button.setStyleSheet("""
            QPushButton {
                background-color: #4CAF50;
                color: white;
                border-radius: 4px;
                padding: 4px 12px;
                font-size: 12px;
            }
            QPushButton:hover {
                background-color: #43A047;
            }
            QPushButton:pressed {
                background-color: #388E3C;
            }
        """)
        refresh_button.setToolTip("刷新当前数据")
        refresh_button.clicked.connect(self.refresh_data)
        status_layout.addWidget(refresh_button)
        
        main_layout.addWidget(status_bar)
        
        # 创建选项卡控件
        self.tab_widget = QTabWidget()
        self.tab_widget.setStyleSheet("""
            QTabWidget::pane {
                border: none;
                background-color: white;
                margin-top: 2px;
            }
            QTabBar::tab {
                background-color: #f0f0f0;
                color: #555;
                border: 1px solid #c0c0c0;
                border-bottom: none;
                border-top-left-radius: 4px;
                border-top-right-radius: 4px;
                padding: 8px 16px;
                font-family: "SimHei", sans-serif;
            }
            QTabBar::tab:selected {
                background-color: white;
                color: #263238;
                border-color: #c0c0c0;
                border-bottom-color: white;
            }
            QTabBar::tab:hover {
                background-color: #e0e0e0;
            }
        """)
        main_layout.addWidget(self.tab_widget, 1)
        
        # 创建数据显示选项卡
        data_tab = QWidget()
        data_layout = QVBoxLayout(data_tab)
        data_layout.setContentsMargins(15, 15, 15, 15)
        data_layout.setSpacing(15)
        
        # 创建数据显示区域
        data_grid = QGridLayout()
        data_grid.setSpacing(15)
        
        # 温度显示卡片
        self.temp_card = DataCard("温度", "°C", QColor(255, 100, 100))
        self.temp_value = self.temp_card.value_label
        self.temp_time = self.temp_card.time_label
        self.temp_progress = self.temp_card.progress_bar
        data_grid.addWidget(self.temp_card, 0, 0)
        
        # 湿度显示卡片
        self.humi_card = DataCard("湿度", "%RH", QColor(100, 100, 255))
        self.humi_value = self.humi_card.value_label
        self.humi_time = self.humi_card.time_label
        self.humi_progress = self.humi_card.progress_bar
        data_grid.addWidget(self.humi_card, 0, 1)
        
        # 重量显示卡片
        self.weight_card = DataCard("重量", "g", QColor(100, 200, 100))
        self.weight_value = self.weight_card.value_label,
        self.weight_time = self.weight_card.time_label
        self.weight_progress = self.weight_card.progress_bar
        data_grid.addWidget(self.weight_card, 0, 2)
        
        data_layout.addLayout(data_grid)
        
        # 数据趋势图表
        chart_group = QWidget()
        chart_layout = QVBoxLayout(chart_group)
        chart_layout.setContentsMargins(0, 0, 0, 0)
        chart_layout.setSpacing(15)
        
        # 图表标题
        chart_title = QLabel("数据趋势")
        chart_title.setFont(QFont("SimHei", 16, QFont.Bold))
        chart_title.setStyleSheet("color: #263238;")
        chart_layout.addWidget(chart_title)
        
        # 创建自定义图表
        self.temp_chart = CustomChart()
        self.temp_chart.set_title("温度趋势")
        self.temp_chart.set_y_label("温度 (°C)")
        self.temp_chart.set_color(QColor(255, 50, 50))  # 红色
        self.temp_chart.set_value_range(0, 50)
        
        self.humi_chart = CustomChart()
        self.humi_chart.set_title("湿度趋势")
        self.humi_chart.set_y_label("湿度 (%)")
        self.humi_chart.set_color(QColor(50, 50, 255))  # 蓝色
        self.humi_chart.set_value_range(0, 100)
        
        self.weight_chart = CustomChart()
        self.weight_chart.set_title("重量趋势")
        self.weight_chart.set_y_label("重量 (g)")
        self.weight_chart.set_color(QColor(50, 150, 50))  # 绿色
        
        chart_splitter = QSplitter(Qt.Vertical)
        chart_splitter.addWidget(self.temp_chart)
        chart_splitter.addWidget(self.humi_chart)
        chart_splitter.addWidget(self.weight_chart)
        
        # 设置分割器的初始大小和样式
        chart_splitter.setSizes([150, 150, 150])
        chart_splitter.setStyleSheet("""
            QSplitter::handle:vertical {
                background-color: #e0e0e0;
                width: 8px;
                margin: 0px;
                border-radius: 4px;
            }
            QSplitter::handle:vertical:hover {
                background-color: #c0c0c0;
            }
        """)
        
        chart_layout.addWidget(chart_splitter)
        
        data_layout.addWidget(chart_group)
        
        self.tab_widget.addTab(data_tab, "数据监控")
        
        # 创建日志选项卡
        log_tab = QWidget()
        log_layout = QVBoxLayout(log_tab)
        log_layout.setContentsMargins(15, 15, 15, 15)
        log_layout.setSpacing(15)
        
        # 日志标题
        log_title = QLabel("系统日志")
        log_title.setFont(QFont("SimHei", 16, QFont.Bold))
        log_title.setStyleSheet("color: #263238;")
        log_layout.addWidget(log_title)
        
        log_controls = QHBoxLayout()
        log_controls.setSpacing(10)
        
        clear_log_button = QPushButton("清空日志")
        clear_log_button.setStyleSheet("""
            QPushButton {
                background-color: #f5f5f5;
                color: #555;
                border: 1px solid #c0c0c0;
                border-radius: 4px;
                padding: 4px 12px;
                font-size: 12px;
            }
            QPushButton:hover {
                background-color: #e0e0e0;
            }
            QPushButton:pressed {
                background-color: #d0d0d0;
            }
        """)
        clear_log_button.clicked.connect(self.clear_log)
        log_controls.addWidget(clear_log_button)
        
        log_controls.addStretch()
        
        self.log_filter = QLineEdit()
        self.log_filter.setPlaceholderText("过滤日志...")
        self.log_filter.setStyleSheet("""
            QLineEdit {
                border: 1px solid #c0c0c0;
                border-radius: 4px;
                padding: 4px 8px;
                font-size: 12px;
            }
            QLineEdit:hover {
                border-color: #a0a0a0;
            }
        """)
        self.log_filter.textChanged.connect(self.filter_log)
        log_controls.addWidget(self.log_filter)
        
        log_layout.addLayout(log_controls)
        
        self.log_text = QTextEdit()
        self.log_text.setReadOnly(True)
        self.log_text.setFont(QFont("SimHei", 10))
        self.log_text.setStyleSheet("""
            QTextEdit {
                border: 1px solid #e0e0e0;
                border-radius: 4px;
                background-color: white;
                padding: 8px;
                font-family: "SimHei", sans-serif;
            }
        """)
        log_layout.addWidget(self.log_text, 1)
        
        self.tab_widget.addTab(log_tab, "系统日志")
        
        # 创建设置选项卡
        settings_tab = QWidget()
        settings_layout = QVBoxLayout(settings_tab)
        settings_layout.setContentsMargins(15, 15, 15, 15)
        settings_layout.setSpacing(15)
        
        # 设置标题
        settings_title = QLabel("系统设置")
        settings_title.setFont(QFont("SimHei", 16, QFont.Bold))
        settings_title.setStyleSheet("color: #263238;")
        settings_layout.addWidget(settings_title)
        
        # 创建设置分组
        settings_grid = QGridLayout()
        settings_grid.setSpacing(15)
        
        # MQTT设置
        mqtt_group = QGroupBox("MQTT 设置")
        mqtt_group.setFont(QFont("SimHei", 12, QFont.Bold))
        mqtt_group.setStyleSheet("""
            QGroupBox {
                border: 1px solid #e0e0e0;
                border-radius: 4px;
                margin-top: 10px;
            }
            QGroupBox::title {
                subcontrol-origin: margin;
                left: 10px;
                padding: 0 5px 0 5px;
                color: #555;
            }
        """)
        
        mqtt_form_layout = QFormLayout()
        mqtt_form_layout.setContentsMargins(15, 15, 15, 15)
        mqtt_form_layout.setSpacing(10)
        
        self.mqtt_broker_edit = QLineEdit(MQTT_BROKER)
        self.mqtt_port_edit = QLineEdit(str(MQTT_PORT))
        self.mqtt_username_edit = QLineEdit(MQTT_USERNAME)
        self.mqtt_password_edit = QLineEdit(MQTT_PASSWORD)
        self.mqtt_password_edit.setEchoMode(QLineEdit.Password)
        
        mqtt_form_layout.addRow("服务器:", self.mqtt_broker_edit)
        mqtt_form_layout.addRow("端口:", self.mqtt_port_edit)
        mqtt_form_layout.addRow("用户名:", self.mqtt_username_edit)
        mqtt_form_layout.addRow("密码:", self.mqtt_password_edit)
        
        mqtt_buttons_layout = QHBoxLayout()
        mqtt_buttons_layout.addStretch()
        apply_mqtt_button = QPushButton("应用设置")
        apply_mqtt_button.setStyleSheet("""
            QPushButton {
                background-color: #2196F3;
                color: white;
                border-radius: 4px;
                padding: 6px 16px;
                font-size: 12px;
            }
            QPushButton:hover {
                background-color: #1976D2;
            }
            QPushButton:pressed {
                background-color: #1565C0;
            }
        """)
        apply_mqtt_button.clicked.connect(self.apply_mqtt_settings)
        mqtt_buttons_layout.addWidget(apply_mqtt_button)
        
        mqtt_inner_layout = QVBoxLayout()
        mqtt_inner_layout.addLayout(mqtt_form_layout)
        mqtt_inner_layout.addLayout(mqtt_buttons_layout)
        mqtt_group.setLayout(mqtt_inner_layout)
        
        # 串口设置
        serial_group = QGroupBox("串口 设置")
        serial_group.setFont(QFont("SimHei", 12, QFont.Bold))
        serial_group.setStyleSheet("""
            QGroupBox {
                border: 1px solid #e0e0e0;
                border-radius: 4px;
                margin-top: 10px;
            }
            QGroupBox::title {
                subcontrol-origin: margin;
                left: 10px;
                padding: 0 5px 0 5px;
                color: #555;
            }
        """)
        
        serial_form_layout = QFormLayout()
        serial_form_layout.setContentsMargins(15, 15, 15, 15)
        serial_form_layout.setSpacing(10)
        
        self.serial_port_edit = QLineEdit(SERIAL_PORT)
        self.serial_baudrate_edit = QLineEdit(str(BAUDRATE))
        
        serial_form_layout.addRow("串口:", self.serial_port_edit)
        serial_form_layout.addRow("波特率:", self.serial_baudrate_edit)
        
        serial_buttons_layout = QHBoxLayout()
        serial_buttons_layout.addStretch()
        apply_serial_button = QPushButton("应用设置")
        apply_serial_button.setStyleSheet("""
            QPushButton {
                background-color: #2196F3;
                color: white;
                border-radius: 4px;
                padding: 6px 16px;
                font-size: 12px;
            }
            QPushButton:hover {
                background-color: #1976D2;
            }
            QPushButton:pressed {
                background-color: #1565C0;
            }
        """)
        apply_serial_button.clicked.connect(self.apply_serial_settings)
        serial_buttons_layout.addWidget(apply_serial_button)
        
        serial_inner_layout = QVBoxLayout()
        serial_inner_layout.addLayout(serial_form_layout)
        serial_inner_layout.addLayout(serial_buttons_layout)
        serial_group.setLayout(serial_inner_layout)
        
        settings_grid.addWidget(mqtt_group, 0, 0)
        settings_grid.addWidget(serial_group, 0, 1)
        
        settings_layout.addLayout(settings_grid)
        
        self.tab_widget.addTab(settings_tab, "系统设置")
        
        # 创建状态栏
        self.statusBar = QStatusBar()
        self.setStatusBar(self.statusBar)
        self.statusBar.setStyleSheet("""
            QStatusBar {
                background-color: #f5f5f5;
                border-top: 1px solid #e0e0e0;
                font-family: "SimHei", sans-serif;
            }
        """)
        self.status_label = QLabel("状态: 初始化中...")
        self.status_label.setFont(QFont("SimHei", 10))
        self.statusBar.addWidget(self.status_label)
    
    def setup_connections(self):
        """设置信号连接"""
        self.data_thread.data_updated.connect(self.update_data_display)
        self.data_thread.data_updated.connect(self.store_history_data)
        self.data_thread.log_message.connect(self.update_log)
        self.data_thread.connection_status.connect(self.update_status)
        self.data_thread.mqtt_connected.connect(self.update_mqtt_status)
        self.data_thread.serial_connected.connect(self.update_serial_status)
    
    def update_data_display(self, data):
        """更新数据显示"""
        timestamp = data.get("timestamp", time.time())
        status = True  # 假设数据有效
        
        if "temperature" in data:
            value = data["temperature"]
            self.temp_card.update_data(value, timestamp)
            
        if "humidity" in data:
            value = data["humidity"]
            self.humi_card.update_data(value, timestamp)
            
        if "weight" in data:
            value = data["weight"]
            self.weight_card.update_data(value, timestamp)
    
    def store_history_data(self, data):
        """存储历史数据"""
        timestamp = data.get("timestamp", time.time())
        
        if "temperature" in data:
            self.history_data["temperature"].append((timestamp, data["temperature"]))
            # 限制历史数据点数量
            if len(self.history_data["temperature"]) > 100:
                self.history_data["temperature"].pop(0)
            # 更新图表
            self.temp_chart.set_data(self.history_data["temperature"])
        
        if "humidity" in data:
            self.history_data["humidity"].append((timestamp, data["humidity"]))
            if len(self.history_data["humidity"]) > 100:
                self.history_data["humidity"].pop(0)
            self.humi_chart.set_data(self.history_data["humidity"])
        
        if "weight" in data:
            self.history_data["weight"].append((timestamp, data["weight"]))
            if len(self.history_data["weight"]) > 100:
                self.history_data["weight"].pop(0)
            self.weight_chart.set_data(self.history_data["weight"])
    
    def update_log(self, message):
        """更新日志显示"""
        original_text = self.log_text.toPlainText()
        self.log_text.append(f"[{time.strftime('%H:%M:%S')}] {message}")
        
        # 如果有过滤文本，检查是否需要显示
        filter_text = self.log_filter.text()
        if filter_text and filter_text.lower() not in message.lower():
            # 恢复原始文本（过滤掉当前消息）
            self.log_text.setPlainText(original_text)
    
    def update_status(self, status):
        """更新状态栏"""
        self.status_label.setText(f"状态: {status}")
    
    def update_mqtt_status(self, connected):
        """更新MQTT连接状态指示器"""
        self.mqtt_status.set_status(connected)
    
    def update_serial_status(self, connected):
        """更新串口连接状态指示器"""
        self.serial_status.set_status(connected)
    
    def clear_log(self):
        """清空日志"""
        self.log_text.clear()
    
    def filter_log(self, text):
        """过滤日志"""
        # 如果过滤文本为空，显示所有日志
        if not text:
            return
        
        # 重新应用过滤
        original_text = self.log_text.toPlainText()
        lines = original_text.split('\n')
        filtered_lines = [line for line in lines if text.lower() in line.lower()]
        self.log_text.setPlainText('\n'.join(filtered_lines))
    
    def refresh_data(self):
        """刷新数据"""
        self.statusBar.showMessage("数据已刷新", 2000)
    
    def apply_mqtt_settings(self):
        """应用MQTT设置"""
        global MQTT_BROKER, MQTT_PORT, MQTT_USERNAME, MQTT_PASSWORD
        
        try:
            MQTT_BROKER = self.mqtt_broker_edit.text()
            MQTT_PORT = int(self.mqtt_port_edit.text())
            MQTT_USERNAME = self.mqtt_username_edit.text()
            MQTT_PASSWORD = self.mqtt_password_edit.text()
            
            # 重启MQTT连接
            self.data_thread.stop()
            self.data_thread = DataThread()
            self.setup_connections()
            self.data_thread.start()
            
            QMessageBox.information(self, "设置成功", "MQTT设置已更新并重启连接", QMessageBox.Ok)
        except Exception as e:
            QMessageBox.critical(self, "设置失败", f"更新MQTT设置时出错: {str(e)}", QMessageBox.Ok)
    
    def apply_serial_settings(self):
        """应用串口设置"""
        global SERIAL_PORT, BAUDRATE
        
        try:
            SERIAL_PORT = self.serial_port_edit.text()
            BAUDRATE = int(self.serial_baudrate_edit.text())
            
            # 重启串口连接
            self.data_thread.safe_close_serial()
            self.data_thread.serial_port = None
            self.data_thread.reconnect_attempts = 0
            
            QMessageBox.information(self, "设置成功", "串口设置已更新", QMessageBox.Ok)
        except Exception as e:
            QMessageBox.critical(self, "设置失败", f"更新串口设置时出错: {str(e)}", QMessageBox.Ok)
    
    def check_data_status(self):
        """检查数据更新状态"""
        # 检查是否有数据长时间未更新
        current_time = time.time()
        for key, last_time in self.data_thread.last_data_time.items():
            if last_time and (current_time - last_time > 30):  # 30秒未更新
                self.statusBar.showMessage(f"{key}数据已30秒未更新", 5000)
    
    def closeEvent(self, event):
        """窗口关闭事件"""
        self.data_thread.stop()
        event.accept()


if __name__ == "__main__":
    # 确保中文显示正常
    font = QFont("SimHei")
    
    app = QApplication(sys.argv)
    app.setFont(font)
    
    # 设置应用程序样式
    app.setStyle("Fusion")
    
    # 添加全局样式
    app.setStyleSheet("""
        QToolTip {
            background-color: #323232;
            color: white;
            border: 1px solid #555;
            border-radius: 4px;
            padding: 4px 8px;
            font-family: "SimHei", sans-serif;
        }
    """)
    
    window = MainWindow()
    window.show()
    
    sys.exit(app.exec_())