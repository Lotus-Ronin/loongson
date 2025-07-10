#include "mainwindow.h"
#include "ui_mainwindow.h"
#include <QProcess>
#include <QMessageBox>
#include <QDir>
#include <QFileInfo>

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
    faceProcess = nullptr;  // 安全初始化为空

    myserial = new QSerialPort();
    serial_flag = true;
    start_flag = true;
    allow_db_insert_flag = true;  //初始化为允许写数据库

    InitDatabase();
    setupPlot();

    m_log = new LogWidget;
    m_log->show();

    connect(m_log, SIGNAL(login()), this, SLOT(show()));
}

void MainWindow::showEvent(QShowEvent *event)
{
    QMainWindow::showEvent(event);

    if (!faceProcess) {
        faceProcess = new QProcess(this);

        QString pythonPath = "C:/Users/Conor/AppData/Local/Programs/Python/Python39/python.exe";
        QString scriptPath = "D:/face_detection/face_recognition_example.py";

        faceProcess->start(pythonPath, QStringList() << scriptPath);
        ui->pushButton_2->setText("停止人脸识别");

        qDebug() << "人脸识别脚本已自动启动";
    }
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_scanSerialBtn_clicked()
{
    ui->serialPortBox->clear();
    foreach(const QSerialPortInfo &info, QSerialPortInfo::availablePorts())
    {
        ui->serialPortBox->addItem(info.portName());
    }
}

void MainWindow::on_openSerialBtn_clicked()
{
    if (serial_flag)
    {
        myserial->setPortName(ui->serialPortBox->currentText());
        myserial->setBaudRate(QSerialPort::Baud115200);
        myserial->setDataBits(QSerialPort::Data8);
        myserial->setParity(QSerialPort::NoParity);
        myserial->setStopBits(QSerialPort::OneStop);
        myserial->setFlowControl(QSerialPort::NoFlowControl);
        if (myserial->open(QIODevice::ReadWrite))
        {
            connect(myserial, &QSerialPort::readyRead, this, &MainWindow::AnalyzeData);
            mystarttime = QDateTime::currentDateTime();
            qDebug() << "串口打开成功";
        }
        else
        {
            qDebug() << "串口打开失败";
        }
        ui->openSerialBtn->setText("关闭串口");
        serial_flag = false;
        allow_db_insert_flag = true; // ✅ 串口打开后允许写数据库
    }
    else
    {
        ui->serialPortBox->setEnabled(true);
        myserial->close();
        ui->openSerialBtn->setText("打开串口");
        serial_flag = true;
        allow_db_insert_flag = false; // ✅ 串口关闭后禁止写数据库
    }
}

void MainWindow::AnalyzeData()
{
    if (!allow_db_insert_flag)
    {
        qDebug() << "串口已关闭，阻止数据库写入";
        return;
    }

    m_receiveBuffer.append(myserial->readAll());
    qDebug() << "Buffer:" << m_receiveBuffer;

    while (m_receiveBuffer.contains("T") &&
           m_receiveBuffer.contains("P") &&
           m_receiveBuffer.contains("H") &&
           m_receiveBuffer.contains("I"))
    {
        int posT = m_receiveBuffer.indexOf("T");
        int posP = m_receiveBuffer.indexOf("P", posT + 1);
        int posH = m_receiveBuffer.indexOf("H", posP + 1);
        int posI = m_receiveBuffer.indexOf("I", posH + 1);
        int posW = m_receiveBuffer.indexOf("W", posH + 1);

        if (posW >= posI) posW = -1;
        bool hasWeight = (posW != -1);

        if (posT < posP && posP < posH && posH < posI)
        {
            QString StrI1 = QString::fromUtf8(m_receiveBuffer.mid(posT + 1, posP - posT - 1));
            QString StrI2;
            if (hasWeight)
                StrI2 = QString::fromUtf8(m_receiveBuffer.mid(posH + 1, posW - posH - 1));
            else
                StrI2 = QString::fromUtf8(m_receiveBuffer.mid(posH + 1, posI - posH - 1));

            QString StrI3 = "0";
            if (hasWeight)
                StrI3 = QString::fromUtf8(m_receiveBuffer.mid(posW + 1, posI - posW - 1));

            ui->line_Temp->setText(StrI1);
            ui->line_Humi->setText(StrI2);
            ui->line_Weight->setText(StrI3);

            bool ok1, ok2, ok3;
            float dataI1 = StrI1.toFloat(&ok1);
            float dataI2 = StrI2.toFloat(&ok2);
            float dataI3 = StrI3.toFloat(&ok3);

            if (ok1 && ok2)
            {
                mycurrenttime = QDateTime::currentDateTime();
                double xzb = mystarttime.msecsTo(mycurrenttime) / 1000.0;

                ui->widget_plot->graph(0)->addData(xzb, dataI1);
                ui->widget_plot->graph(1)->addData(xzb, dataI2);

                if (xzb > 30)
                    ui->widget_plot->xAxis->setRange((double)qRound(xzb - 30), xzb);
                else
                    ui->widget_plot->xAxis->setRange(0, 30);

                ui->widget_plot->replot();

                QSqlDatabase db = QSqlDatabase::database("my_connection");
                QSqlQuery query(db);
                if (hasWeight && ok3 && dataI3 > 0)
                {
                    query.prepare("INSERT INTO SensorData (timestamp, temperature, humidity, weight) "
                                  "VALUES (:timestamp, :temperature, :humidity, :weight)");
                    query.bindValue(":timestamp", mycurrenttime.toString("yyyy-MM-dd HH:mm:ss"));
                    query.bindValue(":temperature", dataI1);
                    query.bindValue(":humidity", dataI2);
                    query.bindValue(":weight", dataI3);
                }
                else
                {
                    query.prepare("INSERT INTO SensorData (timestamp, temperature, humidity, weight) "
                                  "VALUES (:timestamp, :temperature, :humidity, NULL)");
                    query.bindValue(":timestamp", mycurrenttime.toString("yyyy-MM-dd HH:mm:ss"));
                    query.bindValue(":temperature", dataI1);
                    query.bindValue(":humidity", dataI2);
                }

                if (query.exec()) {
                    qDebug() << "Insert success";
                    LoadDataToTable();
                } else {
                    qDebug() << "Insert failed:" << query.lastError().text();
                }
            }

            m_receiveBuffer = m_receiveBuffer.mid(posI + 1);
        } else {
            break;
        }
    }
}

void MainWindow::InitDatabase()
{
    if (QSqlDatabase::contains("my_connection")) {
        QSqlDatabase::removeDatabase("my_connection");
    }

    QSqlDatabase db = QSqlDatabase::addDatabase("QSQLITE", "my_connection");
    db.setDatabaseName("data.db");

    if (!db.open()) {
        qDebug() << "Failed to open database:" << db.lastError().text();
        return;
    }

    QSqlQuery query(db);

    QString createTableSql = R"(
        CREATE TABLE IF NOT EXISTS SensorData (
            id INTEGER PRIMARY KEY AUTOINCREMENT,
            timestamp TEXT,
            temperature REAL,
            humidity REAL,
            weight REAL
        )
    )";

    if (query.exec(createTableSql)) {
        qDebug() << "Table created or exists.";
    } else {
        qDebug() << "Create table failed:" << query.lastError().text();
    }
}

void MainWindow::LoadDataToTable()
{
    qDebug() << "LoadDataToTable called";

    QSqlDatabase db = QSqlDatabase::database("my_connection");
    if (!db.isOpen()) {
        qDebug() << "Database not open!";
        return;
    }

    QSqlQuery query(db);

    if (!query.exec("SELECT * FROM SensorData ORDER BY id DESC")) {
        qDebug() << "Query error:" << query.lastError().text();
        return;
    }

    ui->tableWidget->setColumnCount(5);
    QStringList headers = {"ID", "时间戳", "温度 (°C)", "湿度 (%)", "重量 (g)"};
    ui->tableWidget->setHorizontalHeaderLabels(headers);
    ui->tableWidget->setRowCount(0);

    int row = 0;
    while (query.next()) {
        ui->tableWidget->insertRow(row);
        ui->tableWidget->setItem(row, 0, new QTableWidgetItem(query.value("id").toString()));
        ui->tableWidget->setItem(row, 1, new QTableWidgetItem(query.value("timestamp").toString()));
        ui->tableWidget->setItem(row, 2, new QTableWidgetItem(query.value("temperature").toString()));
        ui->tableWidget->setItem(row, 3, new QTableWidgetItem(query.value("humidity").toString()));

        QVariant weightVar = query.value("weight");
        QString weightStr = weightVar.isNull() ? "" : weightVar.toString();
        ui->tableWidget->setItem(row, 4, new QTableWidgetItem(weightStr));

        row++;
    }

    ui->tableWidget->resizeColumnsToContents();
}

void MainWindow::setupPlot()
{
    ui->widget_plot->addGraph();
    QPen pen;
    pen.setWidth(1);
    pen.setColor(Qt::blue);
    ui->widget_plot->graph(0)->setPen(pen);
    ui->widget_plot->graph(0)->setBrush(QBrush(QColor(0, 0, 255, 20)));
    ui->widget_plot->graph(0)->setName("温度");

    ui->widget_plot->addGraph();
    pen.setColor(Qt::red);
    ui->widget_plot->graph(1)->setPen(pen);
    ui->widget_plot->graph(1)->setBrush(QBrush(QColor(0, 0, 255, 20)));
    ui->widget_plot->graph(1)->setName("湿度");

    ui->widget_plot->xAxis->setLabel("时间/s");
    ui->widget_plot->xAxis->setRange(0, 30);

    ui->widget_plot->yAxis->setLabel("PH & TDS");
    ui->widget_plot->yAxis->setRange(0, 100);

    ui->widget_plot->legend->setVisible(true);
    ui->widget_plot->axisRect()->insetLayout()->setInsetAlignment(0, Qt::AlignTop | Qt::AlignRight);

    ui->widget_plot->replot();
}

// ============================= 这里是按钮槽函数 ===============================

void MainWindow::on_pushButton_clicked()
{
    QProcess *process = new QProcess(this);

    connect(process, &QProcess::readyReadStandardOutput, [=]() {
        QString output = QString::fromLocal8Bit(process->readAllStandardOutput());
        qDebug() << "Python输出:" << output;

        QStringList lines = output.split('\n', Qt::SkipEmptyParts);
        for (const QString &line : lines) {
            if (line.contains("推荐传送带转速")) {
                QString speed = line.section(':', 1).trimmed();
                ui->lineEdit_speed->setText(speed);
                break;
            }
        }
    });

    QString python = "C:/Users/Conor/AppData/Local/Programs/Python/Python39/python.exe";
    QString path = "D:/loongson/loongson/main.py";
    process->start(python, QStringList() << path);
}

void MainWindow::on_pushButton_2_clicked()
{
    QString pythonPath = "C:/Users/Conor/AppData/Local/Programs/Python/Python39/python.exe";
    QString scriptPath = "D:/face_detection/face_recognition_example.py";

    if (!faceProcess) {
        // 没有进程，表示未启动，准备启动
        QFile flagFile("stop_flag.txt");
        if (flagFile.exists()) {
            flagFile.remove();
        }

        faceProcess = new QProcess(this);
        faceProcess->start(pythonPath, QStringList() << scriptPath);

        ui->pushButton_2->setText("停止人脸识别");
        qDebug() << "人脸识别系统已启动";
    }
    else {
        // 有进程，表示已启动，准备停止
        QFile flagFile("stop_flag.txt");
        if (flagFile.open(QIODevice::WriteOnly | QIODevice::Truncate)) {
            flagFile.write("stop");
            flagFile.close();
            qDebug() << "已写入 stop_flag.txt";
        }

        // 强制关闭进程
        faceProcess->terminate();
        faceProcess->waitForFinished();
        delete faceProcess;
        faceProcess = nullptr;

        ui->pushButton_2->setText("启动人脸识别");
        qDebug() << "人脸识别系统已关闭";
    }
}




void MainWindow::on_addWeight_clicked()
{
    QProcess *process = new QProcess(this);

    connect(process, &QProcess::readyReadStandardOutput, [=]() {
        QString output = QString::fromLocal8Bit(process->readAllStandardOutput());
        qDebug() << "脚本输出：" << output;

        QStringList lines = output.split('\n', Qt::SkipEmptyParts);

        // 默认先用最后一行
        QString lastLine = lines.last().trimmed();
        qDebug() << "last line:" << lastLine;

        // 用正则提取数字
        QRegularExpression re("(\\d+\\.\\d+)");
        QRegularExpressionMatch match = re.match(lastLine);
        QString weightStr;
        if (match.hasMatch()) {
            weightStr = match.captured(1);
        } else {
            weightStr = "未知";
        }

        // 弹窗显示
        QString msg = QString("今日最新重量: %1 克").arg(weightStr);
        QMessageBox::information(this, "今日重量", msg);
    });

    connect(process, &QProcess::readyReadStandardError, [=]() {
        QByteArray byteArray = process->readAllStandardError();
        QString errorOutput = QString::fromLocal8Bit(byteArray);
        qDebug() << "脚本错误输出：" << errorOutput;
    });

    connect(process, QOverload<int, QProcess::ExitStatus>::of(&QProcess::finished),
            [=](int exitCode, QProcess::ExitStatus exitStatus) {
                qDebug() << "脚本已结束，退出码：" << exitCode;
                process->deleteLater();
            });

    QString pythonPath = "C:/Users/Conor/AppData/Local/Programs/Python/Python39/python.exe";
    QString scriptPath = "D:/loongson/loongson/average_weight.py";
    process->start(pythonPath, QStringList() << scriptPath);
}



void MainWindow::on_avgweight_clicked()
{
    QString selectedDate = ui->dateEdit->date().toString("yyyy-MM-dd");
    QString avgWeightStr = ui->avg_editEdit->text();

    bool ok;
    double avgWeight = avgWeightStr.toDouble(&ok);
    if (!ok) {
        QMessageBox::warning(this, "输入错误", "请输入有效的平均重量数字！");
        return;
    }

    qDebug() << "尝试插入的数据 - 日期:" << selectedDate << "平均重量:" << avgWeight;

    QString dbPath = "D:/loongson/loongson/apple_weight_simple.db";
    QDir dir(QFileInfo(dbPath).path());
    if (!dir.exists()) {
        bool success = dir.mkpath(".");
        qDebug() << "创建目录结果:" << success;
        if (!success) {
            QMessageBox::critical(this, "路径错误", "无法创建数据库目录: " + dir.path());
            return;
        }
    }

    QSqlDatabase db;
    if (!QSqlDatabase::contains("result_db")) {
        db = QSqlDatabase::addDatabase("QSQLITE", "result_db");
        db.setDatabaseName(dbPath);
        if (!db.open()) {
            QMessageBox::critical(this, "数据库错误", "无法打开结果数据库: " + db.lastError().text());
            return;
        }
    } else {
        db = QSqlDatabase::database("result_db");
        if (!db.isOpen()) {
            if (!db.open()) {
                QMessageBox::critical(this, "数据库错误", "无法重新打开结果数据库: " + db.lastError().text());
                return;
            }
        }
    }

    db.transaction();
    QSqlQuery query(db);

    query.prepare(R"(
        CREATE TABLE IF NOT EXISTS apple_weights (
            date TEXT PRIMARY KEY,
            avg_weight REAL
        )
    )");

    if (!query.exec()) {
        db.rollback();
        QMessageBox::critical(this, "数据库错误", "创建表失败: " + query.lastError().text());
        return;
    }

    query.prepare(R"(
        INSERT INTO apple_weights (date, avg_weight)
        VALUES (?, ?)
        ON CONFLICT(date) DO UPDATE SET avg_weight = excluded.avg_weight
    )");
    query.addBindValue(selectedDate);
    query.addBindValue(avgWeight);

    if (query.exec()) {
        if (db.commit()) {
            QMessageBox::information(this, "成功", "平均重量已写入！");
        } else {
            QMessageBox::critical(this, "提交失败", "数据库事务提交失败: " + db.lastError().text());
        }
    } else {
        db.rollback();
        QMessageBox::critical(this, "写入失败", "SQL错误: " + query.lastError().text());
    }
}
