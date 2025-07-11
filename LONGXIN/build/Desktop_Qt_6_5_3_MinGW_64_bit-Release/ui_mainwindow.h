/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 6.5.3
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QDateEdit>
#include <QtWidgets/QGroupBox>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QTableWidget>
#include <QtWidgets/QWidget>
#include "qcustomplot.h"

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QWidget *centralwidget;
    QGroupBox *groupBox;
    QPushButton *scanSerialBtn;
    QPushButton *openSerialBtn;
    QComboBox *serialPortBox;
    QLabel *label;
    QGroupBox *groupBox_2;
    QLabel *label_Temp;
    QLabel *label_Humi;
    QLineEdit *line_Temp;
    QLineEdit *line_Humi;
    QLineEdit *line_Weight;
    QLabel *label_2;
    QLabel *label_3;
    QLabel *label_4;
    QLabel *label_5;
    QGroupBox *groupBox_3;
    QCustomPlot *widget_plot;
    QGroupBox *groupBox_4;
    QTableWidget *tableWidget;
    QGroupBox *groupBox_5;
    QPushButton *pushButton;
    QLineEdit *lineEdit_speed;
    QLabel *label_6;
    QPushButton *addWeight;
    QGroupBox *groupBox_6;
    QDateEdit *dateEdit;
    QPushButton *avgweight;
    QLineEdit *avg_editEdit;
    QGroupBox *groupBox_7;
    QPushButton *pushButton_2;
    QMenuBar *menubar;
    QStatusBar *statusbar;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName("MainWindow");
        MainWindow->resize(800, 600);
        centralwidget = new QWidget(MainWindow);
        centralwidget->setObjectName("centralwidget");
        groupBox = new QGroupBox(centralwidget);
        groupBox->setObjectName("groupBox");
        groupBox->setGeometry(QRect(10, 0, 191, 111));
        scanSerialBtn = new QPushButton(groupBox);
        scanSerialBtn->setObjectName("scanSerialBtn");
        scanSerialBtn->setGeometry(QRect(0, 70, 101, 41));
        openSerialBtn = new QPushButton(groupBox);
        openSerialBtn->setObjectName("openSerialBtn");
        openSerialBtn->setGeometry(QRect(100, 70, 91, 41));
        serialPortBox = new QComboBox(groupBox);
        serialPortBox->setObjectName("serialPortBox");
        serialPortBox->setGeometry(QRect(80, 30, 91, 31));
        label = new QLabel(groupBox);
        label->setObjectName("label");
        label->setGeometry(QRect(10, 20, 61, 41));
        QFont font;
        font.setPointSize(15);
        label->setFont(font);
        groupBox_2 = new QGroupBox(centralwidget);
        groupBox_2->setObjectName("groupBox_2");
        groupBox_2->setGeometry(QRect(450, 10, 331, 181));
        label_Temp = new QLabel(groupBox_2);
        label_Temp->setObjectName("label_Temp");
        label_Temp->setGeometry(QRect(20, 30, 111, 41));
        QFont font1;
        font1.setFamilies({QString::fromUtf8("STZhongsong")});
        font1.setPointSize(20);
        label_Temp->setFont(font1);
        label_Humi = new QLabel(groupBox_2);
        label_Humi->setObjectName("label_Humi");
        label_Humi->setGeometry(QRect(20, 80, 121, 41));
        label_Humi->setFont(font1);
        line_Temp = new QLineEdit(groupBox_2);
        line_Temp->setObjectName("line_Temp");
        line_Temp->setGeometry(QRect(140, 30, 121, 41));
        QFont font2;
        font2.setPointSize(20);
        line_Temp->setFont(font2);
        line_Humi = new QLineEdit(groupBox_2);
        line_Humi->setObjectName("line_Humi");
        line_Humi->setGeometry(QRect(140, 80, 121, 41));
        line_Humi->setFont(font2);
        line_Weight = new QLineEdit(groupBox_2);
        line_Weight->setObjectName("line_Weight");
        line_Weight->setGeometry(QRect(140, 130, 121, 41));
        line_Weight->setFont(font2);
        label_2 = new QLabel(groupBox_2);
        label_2->setObjectName("label_2");
        label_2->setGeometry(QRect(20, 130, 121, 31));
        label_2->setFont(font1);
        label_3 = new QLabel(groupBox_2);
        label_3->setObjectName("label_3");
        label_3->setGeometry(QRect(280, 50, 40, 21));
        label_3->setFont(font2);
        label_4 = new QLabel(groupBox_2);
        label_4->setObjectName("label_4");
        label_4->setGeometry(QRect(270, 90, 71, 21));
        label_4->setFont(font2);
        label_5 = new QLabel(groupBox_2);
        label_5->setObjectName("label_5");
        label_5->setGeometry(QRect(290, 130, 51, 41));
        label_5->setFont(font2);
        groupBox_3 = new QGroupBox(centralwidget);
        groupBox_3->setObjectName("groupBox_3");
        groupBox_3->setGeometry(QRect(10, 110, 421, 281));
        widget_plot = new QCustomPlot(groupBox_3);
        widget_plot->setObjectName("widget_plot");
        widget_plot->setGeometry(QRect(10, 20, 391, 251));
        groupBox_4 = new QGroupBox(centralwidget);
        groupBox_4->setObjectName("groupBox_4");
        groupBox_4->setGeometry(QRect(0, 400, 411, 151));
        tableWidget = new QTableWidget(groupBox_4);
        tableWidget->setObjectName("tableWidget");
        tableWidget->setGeometry(QRect(10, 20, 391, 121));
        groupBox_5 = new QGroupBox(centralwidget);
        groupBox_5->setObjectName("groupBox_5");
        groupBox_5->setGeometry(QRect(460, 210, 301, 131));
        pushButton = new QPushButton(groupBox_5);
        pushButton->setObjectName("pushButton");
        pushButton->setGeometry(QRect(0, 80, 111, 51));
        pushButton->setFont(font);
        lineEdit_speed = new QLineEdit(groupBox_5);
        lineEdit_speed->setObjectName("lineEdit_speed");
        lineEdit_speed->setGeometry(QRect(140, 20, 151, 51));
        lineEdit_speed->setFont(font2);
        label_6 = new QLabel(groupBox_5);
        label_6->setObjectName("label_6");
        label_6->setGeometry(QRect(10, 20, 91, 41));
        QFont font3;
        font3.setPointSize(17);
        label_6->setFont(font3);
        addWeight = new QPushButton(groupBox_5);
        addWeight->setObjectName("addWeight");
        addWeight->setGeometry(QRect(110, 80, 191, 51));
        QFont font4;
        font4.setPointSize(12);
        addWeight->setFont(font4);
        groupBox_6 = new QGroupBox(centralwidget);
        groupBox_6->setObjectName("groupBox_6");
        groupBox_6->setGeometry(QRect(460, 360, 301, 101));
        dateEdit = new QDateEdit(groupBox_6);
        dateEdit->setObjectName("dateEdit");
        dateEdit->setGeometry(QRect(10, 20, 91, 31));
        dateEdit->setCalendarPopup(true);
        avgweight = new QPushButton(groupBox_6);
        avgweight->setObjectName("avgweight");
        avgweight->setGeometry(QRect(10, 50, 81, 31));
        avgweight->setFont(font);
        avg_editEdit = new QLineEdit(groupBox_6);
        avg_editEdit->setObjectName("avg_editEdit");
        avg_editEdit->setGeometry(QRect(110, 30, 131, 41));
        groupBox_7 = new QGroupBox(centralwidget);
        groupBox_7->setObjectName("groupBox_7");
        groupBox_7->setGeometry(QRect(460, 480, 301, 80));
        pushButton_2 = new QPushButton(groupBox_7);
        pushButton_2->setObjectName("pushButton_2");
        pushButton_2->setGeometry(QRect(110, 30, 131, 31));
        pushButton_2->setFont(font);
        MainWindow->setCentralWidget(centralwidget);
        menubar = new QMenuBar(MainWindow);
        menubar->setObjectName("menubar");
        menubar->setGeometry(QRect(0, 0, 800, 17));
        MainWindow->setMenuBar(menubar);
        statusbar = new QStatusBar(MainWindow);
        statusbar->setObjectName("statusbar");
        MainWindow->setStatusBar(statusbar);

        retranslateUi(MainWindow);

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QCoreApplication::translate("MainWindow", "MainWindow", nullptr));
        groupBox->setTitle(QCoreApplication::translate("MainWindow", "\344\270\262\345\217\243\350\256\276\347\275\256", nullptr));
        scanSerialBtn->setText(QCoreApplication::translate("MainWindow", "\346\211\253\346\217\217\344\270\262\345\217\243", nullptr));
        openSerialBtn->setText(QCoreApplication::translate("MainWindow", "\346\211\223\345\274\200\344\270\262\345\217\243", nullptr));
        label->setText(QCoreApplication::translate("MainWindow", "\344\270\262\345\217\243\345\217\267\357\274\232", nullptr));
        groupBox_2->setTitle(QCoreApplication::translate("MainWindow", "\345\256\236\346\227\266\346\225\260\346\215\256", nullptr));
        label_Temp->setText(QCoreApplication::translate("MainWindow", "\345\275\223\345\211\215\346\270\251\345\272\246", nullptr));
        label_Humi->setText(QCoreApplication::translate("MainWindow", "\345\275\223\345\211\215\346\271\277\345\272\246", nullptr));
        label_2->setText(QCoreApplication::translate("MainWindow", "\346\236\234\345\256\236\351\207\215\351\207\217", nullptr));
        label_3->setText(QCoreApplication::translate("MainWindow", "\342\204\203", nullptr));
        label_4->setText(QCoreApplication::translate("MainWindow", "\357\274\205RH", nullptr));
        label_5->setText(QCoreApplication::translate("MainWindow", "g", nullptr));
        groupBox_3->setTitle(QCoreApplication::translate("MainWindow", "\345\256\236\346\227\266\345\212\250\346\200\201\346\233\262\347\272\277\346\230\276\347\244\272", nullptr));
        groupBox_4->setTitle(QCoreApplication::translate("MainWindow", "\345\216\206\345\217\262\346\225\260\346\215\256\350\241\250\346\240\274", nullptr));
        groupBox_5->setTitle(QCoreApplication::translate("MainWindow", "\346\236\234\345\256\236\351\207\215\351\207\217\345\217\212\346\216\250\350\215\220\344\274\240\351\200\201\345\270\246\351\200\237\345\272\246", nullptr));
        pushButton->setText(QCoreApplication::translate("MainWindow", "\351\242\204\346\265\213", nullptr));
        lineEdit_speed->setText(QString());
        label_6->setText(QCoreApplication::translate("MainWindow", "\346\216\250\350\215\220\351\200\237\345\272\246", nullptr));
        addWeight->setText(QCoreApplication::translate("MainWindow", "\344\270\200\351\224\256\346\217\222\345\205\245\344\273\212\346\227\245\345\271\263\345\235\207\351\207\215\351\207\217", nullptr));
        groupBox_6->setTitle(QCoreApplication::translate("MainWindow", "\346\211\213\345\212\250\346\217\222\345\205\245\345\271\263\345\235\207\351\207\215\351\207\217", nullptr));
        dateEdit->setDisplayFormat(QCoreApplication::translate("MainWindow", "yyyy/MM/dd", nullptr));
        avgweight->setText(QCoreApplication::translate("MainWindow", "\346\217\222\345\205\245", nullptr));
        avg_editEdit->setText(QString());
        groupBox_7->setTitle(QCoreApplication::translate("MainWindow", "\347\233\221\346\216\247\347\263\273\347\273\237", nullptr));
        pushButton_2->setText(QCoreApplication::translate("MainWindow", "\346\211\223\345\274\200", nullptr));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
