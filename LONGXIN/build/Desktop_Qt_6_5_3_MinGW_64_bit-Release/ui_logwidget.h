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
    QLabel *label_3;
    QLineEdit *edit_name;
    QLineEdit *edit_pw;
    QPushButton *btn_log;
    QPushButton *btn_clear;
    QPushButton *btn_signup;
    QLabel *label_image;

    void setupUi(QWidget *LogWidget)
    {
        if (LogWidget->objectName().isEmpty())
            LogWidget->setObjectName("LogWidget");
        LogWidget->resize(622, 399);
        LogWidget->setStyleSheet(QString::fromUtf8("background-color: rgb(255, 255, 255);"));
        label_3 = new QLabel(LogWidget);
        label_3->setObjectName("label_3");
        label_3->setGeometry(QRect(110, 40, 111, 51));
        label_3->setStyleSheet(QString::fromUtf8("font: 87 20pt \"Arial Black\";\n"
"color: rgb(9, 41, 171);"));
        edit_name = new QLineEdit(LogWidget);
        edit_name->setObjectName("edit_name");
        edit_name->setGeometry(QRect(30, 120, 261, 31));
        edit_name->setStyleSheet(QString::fromUtf8("background-color: rgb(247, 247, 247);\n"
"border:1px groove gray;border-radius:\n"
"7px;padding:2px 4px;\n"
"font: 14pt \"Candara\";"));
        edit_pw = new QLineEdit(LogWidget);
        edit_pw->setObjectName("edit_pw");
        edit_pw->setGeometry(QRect(30, 180, 261, 31));
        edit_pw->setStyleSheet(QString::fromUtf8("background-color: rgb(247, 247, 247);\n"
"border:1px groove gray;border-radius:\n"
"7px;padding:2px 4px;\n"
"font: 14pt \"Candara\";"));
        edit_pw->setEchoMode(QLineEdit::Password);
        edit_pw->setReadOnly(false);
        btn_log = new QPushButton(LogWidget);
        btn_log->setObjectName("btn_log");
        btn_log->setGeometry(QRect(10, 250, 81, 31));
        QFont font;
        font.setFamilies({QString::fromUtf8("Bahnschrift Light")});
        font.setPointSize(15);
        font.setBold(false);
        font.setItalic(false);
        btn_log->setFont(font);
        btn_log->setStyleSheet(QString::fromUtf8("background-color: rgb(29, 123, 255);\n"
"color: rgb(255, 255, 255);\n"
""));
        btn_clear = new QPushButton(LogWidget);
        btn_clear->setObjectName("btn_clear");
        btn_clear->setGeometry(QRect(110, 250, 81, 31));
        btn_clear->setFont(font);
        btn_clear->setStyleSheet(QString::fromUtf8("background-color: rgb(29, 123, 255);\n"
"color: rgb(255, 255, 255);\n"
""));
        btn_signup = new QPushButton(LogWidget);
        btn_signup->setObjectName("btn_signup");
        btn_signup->setGeometry(QRect(210, 250, 81, 31));
        btn_signup->setFont(font);
        btn_signup->setStyleSheet(QString::fromUtf8("background-color: rgb(29, 123, 255);\n"
"color: rgb(255, 255, 255);\n"
""));
        label_image = new QLabel(LogWidget);
        label_image->setObjectName("label_image");
        label_image->setGeometry(QRect(300, -10, 331, 411));

        retranslateUi(LogWidget);

        QMetaObject::connectSlotsByName(LogWidget);
    } // setupUi

    void retranslateUi(QWidget *LogWidget)
    {
        LogWidget->setWindowTitle(QCoreApplication::translate("LogWidget", "Form", nullptr));
        label_3->setText(QCoreApplication::translate("LogWidget", "LOGIN", nullptr));
        edit_name->setInputMask(QString());
        edit_name->setPlaceholderText(QCoreApplication::translate("LogWidget", "please input your id", nullptr));
        edit_pw->setText(QString());
        edit_pw->setPlaceholderText(QCoreApplication::translate("LogWidget", "please input your password", nullptr));
        btn_log->setText(QCoreApplication::translate("LogWidget", "sign in", nullptr));
        btn_clear->setText(QCoreApplication::translate("LogWidget", "clear", nullptr));
        btn_signup->setText(QCoreApplication::translate("LogWidget", "sign up", nullptr));
        label_image->setText(QCoreApplication::translate("LogWidget", "TextLabel", nullptr));
    } // retranslateUi

};

namespace Ui {
    class LogWidget: public Ui_LogWidget {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_LOGWIDGET_H
