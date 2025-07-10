import sys
import serial
import serial.tools.list_ports
import time
import requests
from PyQt5.QtWidgets import (QApplication, QMainWindow, QVBoxLayout, QHBoxLayout, QWidget, 
                             QLabel, QTextEdit, QPushButton, QScrollArea, QFrame, QMessageBox,
                             QSizePolicy)
from PyQt5.QtCore import QThread, pyqtSignal, Qt, QTimer, QObject
from PyQt5.QtGui import QFont, QPalette, QColor, QIcon, QPixmap, QTextCursor
import os
from datetime import datetime
import json

class Worker(QThread):
    finished = pyqtSignal(str, bool)
    progress = pyqtSignal(str)
    
    def __init__(self, user_input):
        super().__init__()
        self.user_input = user_input
        self.api_key = os.getenv("OPENAI_API_KEY", "sk-57b0b5e2b55f48afac11fc9ef163d9df")
        self.api_base = os.getenv("OPENAI_API_BASE", "https://api.deepseek.com")
        self.max_retries = 3
        self.retry_delay = 2
        self.is_running = True
    
    def run(self):
        if not self.api_key:
            self.finished.emit("错误：未设置API密钥", True)
            return
            
        if not self.check_internet_connection():
            self.finished.emit("错误：无法连接到网络，请检查您的网络连接", True)
            return
            
        for attempt in range(self.max_retries):
            if not self.is_running:
                return
                
            try:
                self.progress.emit(f"正在发送请求 (尝试 {attempt+1}/{self.max_retries})...")
                
                headers = {
                    "Content-Type": "application/json",
                    "Authorization": f"Bearer {self.api_key}"
                }
                
                data = {
                    "model": "deepseek-chat",
                    "messages": [
                        {"role": "system", "content": "You are a helpful assistant"},
                        {"role": "user", "content": self.user_input}
                    ],
                    "stream": False
                }
                
                response = requests.post(
                    f"{self.api_base}/v1/chat/completions",
                    headers=headers,
                    data=json.dumps(data),
                    timeout=30
                )
                
                if response.status_code == 200:
                    result = response.json()["choices"][0]["message"]["content"]
                    self.finished.emit(result, False)
                    return
                else:
                    error_msg = f"API错误 (状态码: {response.status_code}): {response.text}"
                    self.progress.emit(error_msg)
                    if attempt < self.max_retries - 1 and self.is_running:
                        self.progress.emit(f"将在{self.retry_delay}秒后重试...")
                        time.sleep(self.retry_delay)
                    else:
                        self.finished.emit(error_msg, True)
                        
            except requests.exceptions.ConnectionError:
                error_msg = "错误：无法连接到API服务器，请检查网络连接"
                self.progress.emit(error_msg)
                if attempt < self.max_retries - 1 and self.is_running:
                    self.progress.emit(f"将在{self.retry_delay}秒后重试...")
                    time.sleep(self.retry_delay)
                else:
                    self.finished.emit(error_msg, True)
                    
            except requests.exceptions.Timeout:
                error_msg = "错误：请求超时，请稍后再试"
                self.progress.emit(error_msg)
                if attempt < self.max_retries - 1 and self.is_running:
                    self.progress.emit(f"将在{self.retry_delay}秒后重试...")
                    time.sleep(self.retry_delay)
                else:
                    self.finished.emit(error_msg, True)
                    
            except requests.exceptions.RequestException as e:
                self.finished.emit(f"请求错误: {str(e)}", True)
                return
            except json.JSONDecodeError:
                self.finished.emit("错误：无法解析API响应", True)
                return
            except Exception as e:
                self.finished.emit(f"发生未知错误: {str(e)}", True)
                return
    
    def check_internet_connection(self):
        try:
            requests.get("https://www.baidu.com", timeout=10)
            return True
        except:
            return False
    
    def stop(self):
        """停止线程运行"""
        self.is_running = False
        self.wait(1000)  # 等待线程结束，超时1秒

class SerialController(QThread):
    """串口控制器：同时处理/dev/ttyS3和/dev/ttyS1数据"""
    data_received_from_s3 = pyqtSignal(str)
    data_received_from_s1 = pyqtSignal(str)
    command_sent = pyqtSignal(str)
    status_updated = pyqtSignal(str)
    speed_command_received = pyqtSignal(str)
    
    def __init__(self):
        super().__init__()
        self.is_running = True
        self.ttyS3 = None
        self.ttyS1 = None
        self.SERIAL3_CONFIG = {
            'port': '/dev/ttyS3',
            'baudrate': 115200,
            'timeout': 0.1
        }
        self.SERIAL1_CONFIG = {
            'port': '/dev/ttyS1',
            'baudrate': 115200,
            'timeout': 0.1
        }
    
    def connect_serials(self):
        try:
            self.close_serials()
            
            self.ttyS3 = serial.Serial(**self.SERIAL3_CONFIG)
            if not self.ttyS3.is_open:
                return False
            
            self.ttyS1 = serial.Serial(**self.SERIAL1_CONFIG)
            if not self.ttyS1.is_open:
                self.ttyS3.close()
                self.ttyS3 = None
                return False
            
            self.status_updated.emit("串口连接成功")
            return True
        except Exception as e:
            self.status_updated.emit(f"串口连接失败: {str(e)}")
            self.close_serials()
            return False
    
    def close_serials(self):
        if self.ttyS3 and self.ttyS3.is_open:
            self.ttyS3.close()
            self.ttyS3 = None
        if self.ttyS1 and self.ttyS1.is_open:
            self.ttyS1.close()
            self.ttyS1 = None
    
    def send_command_to_ttyS1(self, command):
        if not self.ttyS1 or not self.ttyS1.is_open:
            if not self.connect_serials():
                self.status_updated.emit("ttyS1未连接，无法发送命令")
                return False
                
        try:
            command_str = str(command)
            self.ttyS1.write(command_str.encode('ascii'))
            self.status_updated.emit(f"向ttyS1发送命令: {command_str}")
            return True
        except Exception as e:
            self.status_updated.emit(f"发送命令到ttyS1失败: {str(e)}")
            return False
    
    def send_data_to_ttyS3(self, data):
        if not self.ttyS3 or not self.ttyS3.is_open:
            if not self.connect_serials():
                self.status_updated.emit("ttyS3未连接，无法发送数据")
                return False
                
        try:
            self.ttyS3.write(data.encode('ascii'))
            self.status_updated.emit(f"向ttyS3发送数据: {data}")
            return True
        except Exception as e:
            self.status_updated.emit(f"发送数据到ttyS3失败: {str(e)}")
            return False
    
    def run(self):
        if not self.connect_serials():
            self.is_running = False
            return
            
        s3_buffer = bytearray()
        s1_buffer = bytearray()
        
        while self.is_running:
            try:
                if not self.ttyS3 or not self.ttyS3.is_open or not self.ttyS1 or not self.ttyS1.is_open:
                    if not self.connect_serials():
                        time.sleep(1)
                        continue
                    s3_buffer.clear()
                    s1_buffer.clear()
                
                if self.ttyS3 and self.ttyS3.is_open:
                    s3_data = self.ttyS3.read(1)
                    if s3_data:
                        s3_buffer.extend(s3_data)
                        
                        if s3_data in b'0123':
                            command = s3_data.decode('ascii')
                            s3_buffer.clear()
                            self.status_updated.emit(f"从ttyS3收到命令: {command}")
                            if self.send_command_to_ttyS1(command):
                                self.command_sent.emit(command)
                                self.speed_command_received.emit(command)
                        
                        elif s3_data != b'':
                            received_data = s3_buffer.decode('ascii', errors='replace')
                            self.data_received_from_s3.emit(received_data)
                
                if self.ttyS1 and self.ttyS1.is_open:
                    s1_data = self.ttyS1.read(1)
                    if s1_data:
                        s1_buffer.extend(s1_data)
                        
                        if s1_data in b'56':
                            number = s1_data.decode('ascii')
                            s1_buffer.clear()
                            self.status_updated.emit(f"从ttyS1收到数字: {number}")
                            self.data_received_from_s1.emit(number)
                        
                        elif s1_data != b'':
                            received_data = s1_buffer.decode('ascii', errors='replace')
                            self.data_received_from_s1.emit(received_data)
                
                time.sleep(0.01)
                
            except serial.SerialException:
                self.status_updated.emit("串口连接异常，正在重连...")
                self.close_serials()
                s3_buffer.clear()
                s1_buffer.clear()
                time.sleep(1)
            except Exception as e:
                self.status_updated.emit(f"串口处理错误: {str(e)}")
                time.sleep(0.5)
    
    def stop(self):
        """停止线程"""
        self.is_running = False
        self.close_serials()
        self.wait(1000)  # 等待线程结束，超时1秒

class ChatWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("智能串口控制与分析助手")
        self.setWindowIcon(QIcon("icon.png"))
        
        self.serial_controller = SerialController()
        self.serial_controller.data_received_from_s3.connect(self.on_ttys3_data_received)
        self.serial_controller.data_received_from_s1.connect(self.on_ttys1_data_received)
        self.serial_controller.command_sent.connect(self.on_command_sent)
        self.serial_controller.status_updated.connect(self.update_serial_status)
        self.serial_controller.speed_command_received.connect(self.handle_speed_command)
        
        self.current_speed = "中速"
        self.warning_active = False
        
        self.init_ui()
        self.worker = None
        self.animation_timer = QTimer(self)
        self.animation_timer.timeout.connect(self.update_animation)
        self.warning_timer = QTimer(self)
        self.warning_timer.timeout.connect(self.update_warning)
        
        self.apply_styles()
        self.serial_controller.start()
    
    def init_ui(self):
        # 创建主布局
        main_widget = QWidget()
        main_layout = QVBoxLayout(main_widget)
        main_layout.setContentsMargins(25, 25, 25, 25)
        main_layout.setSpacing(20)
        
        # 顶部标题区域
        title_frame = QFrame()
        title_frame.setObjectName("titleFrame")
        title_layout = QHBoxLayout(title_frame)
        
        title_label = QLabel("智能串口控制与分析助手")
        title_label.setObjectName("titleLabel")
        title_label.setFont(QFont("Arial", 24, QFont.Bold))
        
        icon_label = QLabel()
        if os.path.exists("icon.png"):
            icon_pixmap = QPixmap("icon.png").scaled(56, 56, Qt.KeepAspectRatio, Qt.SmoothTransformation)
            icon_label.setPixmap(icon_pixmap)
        else:
            icon_label.setText("AI")
            icon_label.setFont(QFont("Arial", 28, QFont.Bold))
            icon_label.setStyleSheet("color: white;")
        
        title_layout.addWidget(icon_label, 0, Qt.AlignLeft)
        title_layout.addWidget(title_label, 0, Qt.AlignCenter)
        title_layout.addStretch()
        
        main_layout.addWidget(title_frame)
        
        # 串口状态提示
        status_frame = QFrame()
        status_frame.setObjectName("statusFrame")
        status_layout = QHBoxLayout(status_frame)
        
        self.serial_status_label = QLabel("")
        self.serial_status_label.setObjectName("statusLabel")
        self.serial_status_label.setAlignment(Qt.AlignLeft)
        self.serial_status_label.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Preferred)
        
        self.speed_status_label = QLabel("")
        self.speed_status_label.setObjectName("speedLabel")
        self.speed_status_label.setAlignment(Qt.AlignRight)
        self.speed_status_label.setSizePolicy(QSizePolicy.Expanding, QSizePolicy.Preferred)
        self.update_speed_display()
        
        status_layout.addWidget(self.serial_status_label)
        status_layout.addWidget(self.speed_status_label)
        
        main_layout.addWidget(status_frame)
        
        # 警告提示区域
        self.warning_label = QLabel("")
        self.warning_label.setObjectName("warningLabel")
        self.warning_label.setAlignment(Qt.AlignLeft)
        self.warning_label.setWordWrap(True)
        main_layout.addWidget(self.warning_label)
        
        # 速度控制按钮区域
        speed_frame = QFrame()
        speed_frame.setObjectName("controlFrame")
        speed_layout = QHBoxLayout(speed_frame)
        speed_layout.setContentsMargins(0, 0, 0, 0)
        speed_layout.setSpacing(15)
        
        self.pause_btn = QPushButton("⏸️ 暂停")
        self.pause_btn.setObjectName("pauseButton")
        self.pause_btn.setMinimumHeight(50)
        self.pause_btn.setCursor(Qt.PointingHandCursor)
        self.pause_btn.clicked.connect(lambda: self.send_command_to_ttyS1(0))
        
        self.high_btn = QPushButton("⚡ 高速")
        self.high_btn.setObjectName("highButton")
        self.high_btn.setMinimumHeight(50)
        self.high_btn.setCursor(Qt.PointingHandCursor)
        self.high_btn.clicked.connect(lambda: self.send_command_to_ttyS1(1))
        
        self.medium_btn = QPushButton("📤 中速")
        self.medium_btn.setObjectName("mediumButton")
        self.medium_btn.setMinimumHeight(50)
        self.medium_btn.setCursor(Qt.PointingHandCursor)
        self.medium_btn.clicked.connect(lambda: self.send_command_to_ttyS1(2))
        
        self.low_btn = QPushButton("⚠️ 低速")
        self.low_btn.setObjectName("lowButton")
        self.low_btn.setMinimumHeight(50)
        self.low_btn.setCursor(Qt.PointingHandCursor)
        self.low_btn.clicked.connect(lambda: self.send_command_to_ttyS1(3))
        
        button_container = QHBoxLayout()
        button_container.addStretch()
        button_container.addWidget(self.pause_btn)
        button_container.addWidget(self.high_btn)
        button_container.addWidget(self.medium_btn)
        button_container.addWidget(self.low_btn)
        button_container.addStretch()
        
        speed_layout.addLayout(button_container)
        
        main_layout.addWidget(speed_frame)
        
        # AI聊天区域
        chat_frame = QFrame()
        chat_frame.setObjectName("chatFrame")
        chat_layout = QVBoxLayout(chat_frame)
        chat_layout.setContentsMargins(0, 0, 0, 0)
        chat_layout.setSpacing(15)
        
        # 输入区域
        input_layout = QVBoxLayout()
        input_layout.setSpacing(10)
        
        self.input_label = QLabel("请输入您的问题:")
        self.input_label.setFont(QFont("Arial", 16, QFont.Bold))
        input_layout.addWidget(self.input_label)
        
        self.input_text = QTextEdit()
        self.input_text.setPlaceholderText("留空将使用默认问题...")
        self.input_text.setMaximumHeight(120)
        self.input_text.setObjectName("inputText")
        input_layout.addWidget(self.input_text)
        
        button_layout = QHBoxLayout()
        button_layout.addStretch()
        
        self.predict_btn = QPushButton("📤 发送问题")
        self.predict_btn.setObjectName("predictButton")
        self.predict_btn.setMinimumHeight(50)
        self.predict_btn.setCursor(Qt.PointingHandCursor)
        self.predict_btn.clicked.connect(self.on_predict)
        
        button_layout.addWidget(self.predict_btn)
        input_layout.addLayout(button_layout)
        
        self.loading_label = QLabel()
        self.loading_label.setAlignment(Qt.AlignCenter)
        self.loading_label.setObjectName("loadingLabel")
        self.loading_label.hide()
        input_layout.addWidget(self.loading_label)
        
        chat_layout.addLayout(input_layout)
        
        # 输出区域
        output_layout = QVBoxLayout()
        output_layout.setSpacing(10)
        
        self.output_label = QLabel("AI 回答:")
        self.output_label.setFont(QFont("Arial", 16, QFont.Bold))
        output_layout.addWidget(self.output_label)
        
        self.output_text = QTextEdit()
        self.output_text.setReadOnly(True)
        self.output_text.setObjectName("outputText")
        self.output_text.setStyleSheet("""
            QTextEdit {
                border: 2px solid #eee;
                border-radius: 12px;
                padding: 15px;
                font-size: 14px;
                background-color: #f9f9f9;
                color: #333;
            }
        """)
        
        scroll = QScrollArea()
        scroll.setWidget(self.output_text)
        scroll.setWidgetResizable(True)
        scroll.setFrameShape(QFrame.NoFrame)
        scroll.setHorizontalScrollBarPolicy(Qt.ScrollBarAlwaysOff)
        scroll.setVerticalScrollBarPolicy(Qt.ScrollBarAsNeeded)
        output_layout.addWidget(scroll)
        
        chat_layout.addLayout(output_layout)
        
        main_layout.addWidget(chat_frame, 1)
        
        # 状态栏
        self.statusBar().showMessage("就绪")
        self.statusBar().setStyleSheet("color: #666; font-size: 13px;")
        
        self.setCentralWidget(main_widget)
        
        # 调整窗口大小
        self.setMinimumSize(800, 750)
        self.resize(850, 800)
        
        # 动画帧
        self.animation_frames = ["⢀", "⢁", "⢂", "⢃", "⢄", "⢅", "⢆", "⢇", "⢈", "⢉", "⢊", "⢋", "⢌", "⢍", "⢎", "⢏",
                               "⡀", "⡁", "⡂", "⡃", "⡄", "⡅", "⡆", "⡇", "⡈", "⡉", "⡊", "⡋", "⡌", "⡍", "⡎", "⡏"]
        self.current_frame = 0
    
    def apply_styles(self):
        # 应用现代化样式
        self.setStyleSheet("""
            QMainWindow {
                background-color: #fafafa;
                font-family: "Segoe UI", "Microsoft YaHei", sans-serif;
            }
            #titleFrame {
                background: qlineargradient(x1:0, y1:0, x2:1, y2:0, stop:0 #3498db, stop:1 #2980b9);
                border-radius: 16px;
                padding: 20px;
                color: white;
                box-shadow: 0 6px 16px rgba(0, 0, 0, 0.12);
            }
            #titleLabel {
                color: white;
                font-size: 24px;
                font-weight: 600;
                text-shadow: 0 2px 4px rgba(0, 0, 0, 0.2);
            }
            #statusFrame {
                background-color: white;
                border-radius: 12px;
                box-shadow: 0 2px 8px rgba(0, 0, 0, 0.06);
                padding: 12px;
                margin-bottom: 10px;
            }
            #statusLabel {
                color: #2ecc71;
                font-size: 14px;
                padding: 6px;
                font-weight: 500;
            }
            #speedLabel {
                font-size: 14px;
                padding: 6px;
                font-weight: 500;
            }
            #speedLabel.pause {
                color: #e74c3c;
            }
            #speedLabel.low {
                color: #2ecc71;
            }
            #speedLabel.medium {
                color: #f39c12;
            }
            #speedLabel.high {
                color: #3498db;
            }
            #controlFrame {
                background-color: white;
                border-radius: 16px;
                box-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);
                padding: 15px;
                margin-bottom: 15px;
            }
            #chatFrame {
                background-color: white;
                border-radius: 16px;
                box-shadow: 0 4px 12px rgba(0, 0, 0, 0.08);
                padding: 18px;
            }
            QPushButton {
                border-radius: 24px;
                padding: 12px 24px;
                font-weight: 500;
                font-size: 14px;
                transition: all 0.25s ease;
                border: none;
                min-width: 120px;
            }
            QPushButton:hover {
                transform: translateY(-3px);
                box-shadow: 0 8px 16px rgba(0, 0, 0, 0.12);
            }
            QPushButton:pressed {
                transform: translateY(0);
                box-shadow: none;
            }
            #predictButton {
                background-color: #3498db;
                color: white;
            }
            #predictButton:hover {
                background-color: #2980b9;
            }
            #pauseButton {
                background-color: #e74c3c;
                color: white;
            }
            #pauseButton:hover {
                background-color: #c0392b;
            }
            #highButton {
                background-color: #3498db;
                color: white;
            }
            #highButton:hover {
                background-color: #2980b9;
            }
            #mediumButton {
                background-color: #f39c12;
                color: white;
            }
            #mediumButton:hover {
                background-color: #e67e22;
            }
            #lowButton {
                background-color: #2ecc71;
                color: white;
            }
            #lowButton:hover {
                background-color: #27ae60;
            }
            #loadingLabel {
                color: #3498db;
                font-size: 16px;
                margin-top: 12px;
                font-weight: 500;
            }
            #warningLabel {
                color: #e74c3c;
                background-color: rgba(231, 76, 60, 0.1);
                border-left: 4px solid #e74c3c;
                border-radius: 4px;
                padding: 12px 15px;
                font-size: 14px;
                font-weight: 500;
                margin: 10px 0;
                opacity: 0;
                transition: opacity 0.3s, transform 0.3s;
                transform: translateY(-5px);
            }
            #warningLabel.active {
                opacity: 1;
                transform: translateY(0);
            }
            #warningLabel.warning {
                color: #e74c3c;
                background-color: rgba(231, 76, 60, 0.1);
                border-left: 4px solid #e74c3c;
            }
            #warningLabel.info {
                color: #2ecc71;
                background-color: rgba(46, 204, 113, 0.1);
                border-left: 4px solid #2ecc71;
            }
            QLabel {
                color: #333;
            }
            QTextEdit {
                border-radius: 12px;
                transition: all 0.2s ease;
            }
            #inputText {
                border: 2px solid #ddd;
                padding: 15px;
                font-size: 14px;
            }
            #inputText:focus {
                border-color: #3498db;
                box-shadow: 0 0 0 3px rgba(52, 152, 219, 0.2);
            }
            #outputText {
                border: 2px solid #eee;
                padding: 15px;
                font-size: 14px;
                background-color: #f9f9f9;
            }
        """)
    
    def update_serial_status(self, status):
        """更新串口状态显示"""
        self.serial_status_label.setText(status)
    
    def send_command_to_ttyS1(self, command):
        """向ttyS1发送命令并更新界面"""
        if not self.serial_controller or not self.serial_controller.isRunning():
            QMessageBox.warning(self, "警告", "串口控制器未运行")
            return
            
        if self.serial_controller.send_command_to_ttyS1(command):
            # 更新速度状态
            speed_map = {
                0: "暂停",
                1: "高速",
                2: "中速",
                3: "低速"
            }
            self.current_speed = speed_map[command]
            self.update_speed_display()
            
            # 在输出区域显示发送的命令
            timestamp = datetime.now().strftime("%H:%M:%S")
            command_text = {
                0: "⏸️ 已发送命令: 暂停",
                1: "⚡ 已发送命令: 高速",
                2: "📤 已发送命令: 中速",
                3: "⚠️ 已发送命令: 低速"
            }
            
            self.output_text.append(f"[{timestamp}] {command_text[command]}")
            
            # 滚动到底部
            self.scroll_to_bottom()
            
            # 添加按钮点击效果
            sender = self.sender()
            if sender:  # 只有当信号由按钮触发时才添加效果
                original_style = sender.styleSheet()
                sender.setStyleSheet(original_style + "opacity: 0.7;")
                QTimer.singleShot(300, lambda s=sender, os=original_style: s.setStyleSheet(os))
        else:
            QMessageBox.warning(self, "警告", "发送命令失败")
    
    def update_speed_display(self):
        """更新速度状态显示"""
        self.speed_status_label.setText(f"当前速度: {self.current_speed}")
        # 根据当前速度设置不同的颜色
        if self.current_speed == "暂停":
            self.speed_status_label.setStyleSheet("#speedLabel { color: #e74c3c; }")
        elif self.current_speed == "低速":
            self.speed_status_label.setStyleSheet("#speedLabel { color: #2ecc71; }")
        elif self.current_speed == "中速":
            self.speed_status_label.setStyleSheet("#speedLabel { color: #f39c12; }")
        elif self.current_speed == "高速":
            self.speed_status_label.setStyleSheet("#speedLabel { color: #3498db; }")
    
    def on_predict(self):
        # 如果有正在运行的线程，不重复启动
        if self.worker and self.worker.isRunning():
            self.statusBar().showMessage("正在处理中，请稍候...")
            return
            
        # 获取用户输入，如果为空则使用默认问题
        user_input = self.input_text.toPlainText().strip()
        if not user_input:
            current_time = datetime.now().strftime("%Y年%m月%d日")
            user_input = "我们是一家坐落于山东省济南市长清区的智能苹果分拣工厂，当前时间是{0}请根据苹果的季节性规律、本地今日天气状况、最近苹果市场销售状况，给出今日苹果销量预测，进而给出工厂传送带分推荐速度（高速、中速、低速）和经营策略".format(current_time)  # 默认问题
            self.input_text.setPlainText(user_input)
        
        # 状态栏显示
        self.statusBar().showMessage("正在发送问题到AI...")
        
        # 禁用按钮防止重复点击并添加动画效果
        self.predict_btn.setEnabled(False)
        original_style = self.predict_btn.styleSheet()
        self.predict_btn.setStyleSheet(f"{original_style} opacity: 0.6;")
        
        # 清空输出并添加用户问题 - 使用更友好的格式
        timestamp = datetime.now().strftime("%H:%M:%S")
        self.output_text.setPlainText(f"[{timestamp}] 您的问题:\n{user_input}\n\n🤔 正在思考中，请稍候...")
        
        # 滚动到底部
        self.scroll_to_bottom()
        
        # 显示加载动画
        self.loading_label.show()
        self.start_animation()
        
        # 停止可能存在的旧线程
        if self.worker:
            self.worker.stop()
            self.worker.wait(1000)  # 等待旧线程结束
            
        # 创建工作线程
        self.worker = Worker(user_input)
        self.worker.finished.connect(self.on_result_received)
        self.worker.progress.connect(self.update_progress)
        self.worker.start()
    
    def start_animation(self):
        self.current_frame = 0
        self.animation_timer.start(100)  # 每100ms更新一次
    
    def stop_animation(self):
        self.animation_timer.stop()
        self.loading_label.hide()
    
    def update_animation(self):
        self.loading_label.setText(f"思考中 {self.animation_frames[self.current_frame]}")
        self.current_frame = (self.current_frame + 1) % len(self.animation_frames)
    
    def update_progress(self, message):
        """更新进度信息"""
        self.statusBar().showMessage(message)
        self.output_text.append(f"[进度] {message}")
        self.scroll_to_bottom()
    
    def on_result_received(self, result, is_error):
        # 停止动画
        self.stop_animation()
        
        # 重新启用按钮
        self.predict_btn.setEnabled(True)
        self.predict_btn.setStyleSheet("")
        
        # 更新输出
        timestamp = datetime.now().strftime("%H:%M:%S")
        if is_error:
            self.output_text.append(f"\n[{timestamp}] 发生错误:\n{result}")
            self.statusBar().showMessage("AI请求失败")
        else:
            self.output_text.append(f"\n[{timestamp}] AI回答:\n{result}")
            self.statusBar().showMessage("回答已生成")
        
        # 滚动到底部
        self.scroll_to_bottom()
        
        # 断开信号连接并删除引用，防止内存泄漏
        if self.worker:
            self.worker.finished.disconnect(self.on_result_received)
            self.worker.progress.disconnect(self.update_progress)
            self.worker = None
    
    def scroll_to_bottom(self):
        """滚动到底部"""
        cursor = self.output_text.textCursor()
        cursor.movePosition(QTextCursor.End)
        self.output_text.setTextCursor(cursor)
    
    def on_ttys3_data_received(self, data):
        """处理从ttyS3接收到的数据"""
        timestamp = datetime.now().strftime("%H:%M:%S")
        self.output_text.append(f"[{timestamp}] 📥 从ttyS3接收到数据: {data}")
        
        # 滚动到底部
        self.scroll_to_bottom()
    
    def on_ttys1_data_received(self, data):
        """处理从ttyS1接收到的数据"""
        timestamp = datetime.now().strftime("%H:%M:%S")
        self.output_text.append(f"[{timestamp}] 📥 从ttyS1接收到数据: {data}")
        
        # 滚动到底部
        self.scroll_to_bottom()
        
        # 处理特定字符
        if '5' in data:
            self.show_warning("数据异常，请注意安全！", "warning")
        elif '6' in data:
            self.show_warning("数据正常！", "info")
    
    def on_command_sent(self, command):
        """处理命令已发送事件"""
        timestamp = datetime.now().strftime("%H:%M:%S")
        
        command_text = {
            '0': "⏸️ 已转发命令: 暂停",
            '1': "⚡ 已转发命令: 高速",
            '2': "📤 已转发命令: 中速",
            '3': "⚠️ 已转发命令: 低速"
        }
        
        self.output_text.append(f"[{timestamp}] {command_text.get(command, f'已转发命令: {command}')}")
        
        # 滚动到底部
        self.scroll_to_bottom()
    
    # 新增：处理从ttyS3接收到的速度命令
    def handle_speed_command(self, command):
        """处理从ttyS3接收到的速度命令，更新UI状态"""
        speed_map = {
            '0': "暂停",
            '1': "高速",
            '2': "中速",
            '3': "低速"
        }
        
        if command in speed_map:
            # 更新速度状态
            self.current_speed = speed_map[command]
            self.update_speed_display()
            
            # 在输出区域显示接收到的命令和更新的状态
            timestamp = datetime.now().strftime("%H:%M:%S")
            self.output_text.append(f"[{timestamp}] 🎛️ 从ttyS3接收到速度命令: {command} - 设置为{self.current_speed}")
            
            # 滚动到底部
            self.scroll_to_bottom()
            
            # 添加按钮视觉反馈
            buttons = {
                '0': self.pause_btn,
                '1': self.high_btn,
                '2': self.medium_btn,
                '3': self.low_btn
            }
            
            if command in buttons:
                btn = buttons[command]
                original_style = btn.styleSheet()
                btn.setStyleSheet(original_style + "opacity: 0.7;")
                QTimer.singleShot(300, lambda s=btn, os=original_style: s.setStyleSheet(os))
    
    def show_warning(self, message, level="warning"):
        """显示警告提示，level参数可选：warning, info"""
        self.warning_active = True
        self.warning_label.setText(message)
        
        if level == "warning":
            self.warning_label.setStyleSheet("""
                #warningLabel {
                    color: #e74c3c;
                    background-color: rgba(231, 76, 60, 0.1);
                    border-left: 4px solid #e74c3c;
                    border-radius: 4px;
                    padding: 12px 15px;
                    font-size: 14px;
                    font-weight: 500;
                    margin: 10px 0;
                    opacity: 1;
                    transition: opacity 0.3s, transform 0.3s;
                    transform: translateY(0);
                }
            """)
            # 开始闪烁动画
            self.warning_timer.start(500)  # 每500ms触发一次
        elif level == "info":
            self.warning_label.setStyleSheet("""
                #warningLabel {
                    color: #2ecc71;
                    background-color: rgba(46, 204, 113, 0.1);
                    border-left: 4px solid #2ecc71;
                    border-radius: 4px;
                    padding: 12px 15px;
                    font-size: 14px;
                    font-weight: 500;
                    margin: 10px 0;
                    opacity: 1;
                    transition: opacity 0.3s, transform 0.3s;
                    transform: translateY(0);
                }
            """)
            # 信息提示不闪烁，3秒后自动隐藏
            QTimer.singleShot(3000, self.hide_warning)
    
    def hide_warning(self):
        """隐藏警告提示"""
        self.warning_active = False
        self.warning_timer.stop()
        self.warning_label.setStyleSheet("""
            #warningLabel {
                color: #e74c3c;
                background-color: rgba(231, 76, 60, 0.1);
                border-left: 4px solid #e74c3c;
                border-radius: 4px;
                padding: 12px 15px;
                font-size: 14px;
                font-weight: 500;
                margin: 10px 0;
                opacity: 0;
                transition: opacity 0.3s, transform 0.3s;
                transform: translateY(-5px);
            }
        """)
    
    def update_warning(self):
        """更新警告闪烁效果"""
        if self.warning_active:
            current_opacity = self.warning_label.styleSheet().find("opacity: 1")
            if current_opacity != -1:
                self.warning_label.setStyleSheet("""
                    #warningLabel {
                        color: #e74c3c;
                        background-color: rgba(231, 76, 60, 0.1);
                        border-left: 4px solid #e74c3c;
                        border-radius: 4px;
                        padding: 12px 15px;
                        font-size: 14px;
                        font-weight: 500;
                        margin: 10px 0;
                        opacity: 0.7;
                        transition: opacity 0.2s;
                    }
                """)
            else:
                self.warning_label.setStyleSheet("""
                    #warningLabel {
                        color: #e74c3c;
                        background-color: rgba(231, 76, 60, 0.1);
                        border-left: 4px solid #e74c3c;
                        border-radius: 4px;
                        padding: 12px 15px;
                        font-size: 14px;
                        font-weight: 500;
                        margin: 10px 0;
                        opacity: 1;
                        transition: opacity 0.2s;
                    }
                """)

    def closeEvent(self, event):
        """窗口关闭事件"""
        # 停止所有正在运行的线程
        if self.worker and self.worker.isRunning():
            self.worker.stop()
            self.worker.wait(1000)
            
        if self.serial_controller and self.serial_controller.isRunning():
            self.serial_controller.stop()
            self.serial_controller.wait(1000)
        
        # 停止警告闪烁计时器
        self.warning_timer.stop()
        self.animation_timer.stop()
        
        event.accept()

if __name__ == "__main__":
    app = QApplication(sys.argv)
    # 设置应用全局字体
    font = QFont("Arial", 10)
    app.setFont(font)
    
    window = ChatWindow()
    window.show()
    sys.exit(app.exec_())
