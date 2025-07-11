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
    QGroupBox *groupBox_3;
    QCustomPlot *widget_plot;
    QTableWidget *tableWidget;
    QPushButton *btnLoadData;
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
        groupBox->setGeometry(QRect(10, 20, 191, 141));
        scanSerialBtn = new QPushButton(groupBox);
        scanSerialBtn->setObjectName("scanSerialBtn");
        scanSerialBtn->setGeometry(QRect(0, 100, 101, 41));
        openSerialBtn = new QPushButton(groupBox);
        openSerialBtn->setObjectName("openSerialBtn");
        openSerialBtn->setGeometry(QRect(100, 100, 91, 41));
        serialPortBox = new QComboBox(groupBox);
        serialPortBox->setObjectName("serialPortBox");
        serialPortBox->setGeometry(QRect(80, 30, 91, 31));
        label = new QLabel(groupBox);
        label->setObjectName("label");
        label->setGeometry(QRect(10, 30, 61, 41));
        QFont font;
        font.setPointSize(15);
        label->setFont(font);
        groupBox_2 = new QGroupBox(centralwidget);
        groupBox_2->setObjectName("groupBox_2");
        groupBox_2->setGeometry(QRect(10, 220, 201, 171));
        label_Temp = new QLabel(groupBox_2);
        label_Temp->setObjectName("label_Temp");
        label_Temp->setGeometry(QRect(10, 30, 61, 71));
        QFont font1;
        font1.setPointSize(20);
        label_Temp->setFont(font1);
        label_Humi = new QLabel(groupBox_2);
        label_Humi->setObjectName("label_Humi");
        label_Humi->setGeometry(QRect(10, 90, 51, 71));
        label_Humi->setFont(font1);
        line_Temp = new QLineEdit(groupBox_2);
        line_Temp->setObjectName("line_Temp");
        line_Temp->setGeometry(QRect(80, 40, 113, 41));
        line_Humi = new QLineEdit(groupBox_2);
        line_Humi->setObjectName("line_Humi");
        line_Humi->setGeometry(QRect(80, 110, 113, 41));
        groupBox_3 = new QGroupBox(centralwidget);
        groupBox_3->setObjectName("groupBox_3");
        groupBox_3->setGeometry(QRect(250, 10, 371, 221));
        widget_plot = new QCustomPlot(groupBox_3);
        widget_plot->setObjectName("widget_plot");
        widget_plot->setGeometry(QRect(0, 20, 361, 201));
        tableWidget = new QTableWidget(centralwidget);
        tableWidget->setObjectName("tableWidget");
        tableWidget->setGeometry(QRect(250, 270, 381, 192));
        btnLoadData = new QPushButton(centralwidget);
        btnLoadData->setObjectName("btnLoadData");
        btnLoadData->setGeometry(QRect(260, 480, 80, 18));
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
        label_Temp->setText(QCoreApplication::translate("MainWindow", "\346\270\251\345\272\246", nullptr));
        label_Humi->setText(QCoreApplication::translate("MainWindow", "\346\271\277\345\272\246", nullptr));
        groupBox_3->setTitle(QCoreApplication::translate("MainWindow", "\345\256\236\346\227\266\345\212\250\346\200\201\346\233\262\347\272\277\346\230\276\347\244\272", nullptr));
        btnLoadData->setText(QCoreApplication::translate("MainWindow", "\345\210\267\346\226\260\346\225\260\346\215\256", nullptr));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
