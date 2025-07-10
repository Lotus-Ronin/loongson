#ifndef MAINWINDOW_H
#define MAINWINDOW_H
#include "logwidget.h"
#include <QMainWindow>

/*------------------------用户代码头文件---------------------------*/
#include <QtSerialPort/QSerialPort>//串口
#include <QtSerialPort/QSerialPortInfo>//串口
#include <QDebug>//用于在控制台输出调试信息
#include <QTime>//定时器
#include <QPainter>//坐标系绘图

#include <QSqlDatabase>
#include <QSqlQuery>
#include <QSqlError>
#include <QProcess>
#include <QShowEvent>

QT_BEGIN_NAMESPACE
namespace Ui {
class MainWindow;
}
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

private slots:
    void on_openSerialBtn_clicked();
    void on_scanSerialBtn_clicked();
    void AnalyzeData();           // 数据读取
    void setupPlot();             // 绘图初始化
    void InitDatabase();          // 初始化数据库
    void LoadDataToTable();       // 加载数据库到表格

    void on_pushButton_clicked(); // 启动 Python 推荐速度
    void on_pushButton_2_clicked(); // 人脸识别按钮
    void on_addWeight_clicked();  // 添加重量脚本
    void on_avgweight_clicked();  // 写平均重量

protected:
    void showEvent(QShowEvent *event) override;

private:
    Ui::MainWindow *ui;

    LogWidget *m_log;

    int serialflag;

    QSerialPort *myserial;        // 串口对象
    bool serial_flag, start_flag; // 串口标志、启动标志
    QByteArray alldata;           // 串口总数据缓存
    QByteArray m_receiveBuffer;   // 分析用缓冲区

    QDateTime mycurrenttime;      // 当前时间
    QDateTime mystarttime;        // 开始时间

    QProcess *faceProcess;

    bool allow_db_insert_flag;    // 🔥 新增标志：是否允许插入数据库
};

#endif // MAINWINDOW_H
