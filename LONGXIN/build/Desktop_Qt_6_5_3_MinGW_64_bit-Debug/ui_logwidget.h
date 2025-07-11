/********************************************************************************
** Form generated from reading UI file 'logwidget.ui'
**
** Created by: Qt User Interface Compiler version 6.5.3
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_LOGWIDGET_H
#define UI_LOGWIDGET_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_LogWidget
{
public:
    QLabel *label;
    QLabel *label_2;
    QLineEdit *edit_name;
    QLineEdit *edit_pw;
    QPushButton *btn_log;
    QPushButton *btn_clear;
    QPushButton *btn_signup;
    QLabel *label_3;

    void setupUi(QWidget *LogWidget)
    {
        if (LogWidget->objectName().isEmpty())
            LogWidget->setObjectName("LogWidget");
        LogWidget->resize(400, 300);
        LogWidget->setStyleSheet(QString::fromUtf8("background-color: rgb(255, 255, 255);"));
        label = new QLabel(LogWidget);
        label->setObjectName("label");
        label->setGeometry(QRect(20, 120, 111, 21));
        label->setStyleSheet(QString::fromUtf8("color: rgb(0, 0, 0);"));
        label_2 = new QLabel(LogWidget);
        label_2->setObjectName("label_2");
        label_2->setGeometry(QRect(20, 170, 101, 31));
        label_2->setStyleSheet(QString::fromUtf8("color: rgb(0, 0, 0);"));
        edit_name = new QLineEdit(LogWidget);
        edit_name->setObjectName("edit_name");
        edit_name->setGeometry(QRect(180, 120, 181, 21));
        edit_pw = new QLineEdit(LogWidget);
        edit_pw->setObjectName("edit_pw");
        edit_pw->setGeometry(QRect(180, 180, 181, 21));
        edit_pw->setEchoMode(QLineEdit::Password);
        edit_pw->setReadOnly(false);
        btn_log = new QPushButton(LogWidget);
        btn_log->setObjectName("btn_log");
        btn_log->setGeometry(QRect(20, 220, 80, 21));
        btn_log->setStyleSheet(QString::fromUtf8(""));
        btn_clear = new QPushButton(LogWidget);
        btn_clear->setObjectName("btn_clear");
        btn_clear->setGeometry(QRect(160, 220, 80, 18));
        btn_signup = new QPushButton(LogWidget);
        btn_signup->setObjectName("btn_signup");
        btn_signup->setGeometry(QRect(300, 220, 80, 18));
        label_3 = new QLabel(LogWidget);
        label_3->setObjectName("label_3");
        label_3->setGeometry(QRect(160, 30, 121, 51));
        label_3->setStyleSheet(QString::fromUtf8("font: 87 20pt \"Arial Black\";\n"
"color: rgb(0, 0, 0);"));

        retranslateUi(LogWidget);

        QMetaObject::connectSlotsByName(LogWidget);
    } // setupUi

    void retranslateUi(QWidget *LogWidget)
    {
        LogWidget->setWindowTitle(QCoreApplication::translate("LogWidget", "Form", nullptr));
        label->setText(QCoreApplication::translate("LogWidget", "<html><head/><body><p><span style=\" font-size:16pt; font-weight:700;\">Username</span></p></body></html>", nullptr));
        label_2->setText(QCoreApplication::translate("LogWidget", "<html><head/><body><p><span style=\" font-size:16pt; font-weight:700;\">Password</span></p></body></html>", nullptr));
        edit_name->setInputMask(QString());
        edit_name->setPlaceholderText(QCoreApplication::translate("LogWidget", "please input your id", nullptr));
        edit_pw->setText(QString());
        edit_pw->setPlaceholderText(QCoreApplication::translate("LogWidget", "please input your password", nullptr));
        btn_log->setText(QCoreApplication::translate("LogWidget", "sign in", nullptr));
        btn_clear->setText(QCoreApplication::translate("LogWidget", "clear", nullptr));
        btn_signup->setText(QCoreApplication::translate("LogWidget", "sign up", nullptr));
        label_3->setText(QCoreApplication::translate("LogWidget", "LOGIN", nullptr));
    } // retranslateUi

};

namespace Ui {
    class LogWidget: public Ui_LogWidget {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_LOGWIDGET_H
