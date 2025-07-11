/********************************************************************************
** Form generated from reading UI file 'signup.ui'
**
** Created by: Qt User Interface Compiler version 6.5.3
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_SIGNUP_H
#define UI_SIGNUP_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_Signup
{
public:
    QLabel *label;
    QLineEdit *lineEdit_username;
    QLabel *label_2;
    QLineEdit *lineEdit_passwd;
    QLabel *label_3;
    QLineEdit *lineEdit_surepasswd;
    QPushButton *Sure;
    QPushButton *btn_return;
    QLabel *label_4;
    QLabel *label_5;

    void setupUi(QWidget *Signup)
    {
        if (Signup->objectName().isEmpty())
            Signup->setObjectName("Signup");
        Signup->resize(400, 300);
        label = new QLabel(Signup);
        label->setObjectName("label");
        label->setGeometry(QRect(240, 20, 91, 16));
        lineEdit_username = new QLineEdit(Signup);
        lineEdit_username->setObjectName("lineEdit_username");
        lineEdit_username->setGeometry(QRect(240, 40, 113, 20));
        label_2 = new QLabel(Signup);
        label_2->setObjectName("label_2");
        label_2->setGeometry(QRect(240, 80, 111, 16));
        lineEdit_passwd = new QLineEdit(Signup);
        lineEdit_passwd->setObjectName("lineEdit_passwd");
        lineEdit_passwd->setGeometry(QRect(240, 100, 113, 20));
        label_3 = new QLabel(Signup);
        label_3->setObjectName("label_3");
        label_3->setGeometry(QRect(240, 150, 141, 16));
        lineEdit_surepasswd = new QLineEdit(Signup);
        lineEdit_surepasswd->setObjectName("lineEdit_surepasswd");
        lineEdit_surepasswd->setGeometry(QRect(240, 170, 113, 20));
        Sure = new QPushButton(Signup);
        Sure->setObjectName("Sure");
        Sure->setGeometry(QRect(250, 210, 80, 18));
        btn_return = new QPushButton(Signup);
        btn_return->setObjectName("btn_return");
        btn_return->setGeometry(QRect(220, 250, 151, 21));
        label_4 = new QLabel(Signup);
        label_4->setObjectName("label_4");
        label_4->setGeometry(QRect(30, 20, 171, 81));
        label_4->setStyleSheet(QString::fromUtf8("font: 87 20pt \"Arial Black\";\n"
"color: rgb(0, 0, 0);"));
        label_5 = new QLabel(Signup);
        label_5->setObjectName("label_5");
        label_5->setGeometry(QRect(30, 90, 131, 31));
        label_5->setStyleSheet(QString::fromUtf8("font: 87 20pt \"Arial Black\";\n"
"color: rgb(0, 0, 0);"));

        retranslateUi(Signup);

        QMetaObject::connectSlotsByName(Signup);
    } // setupUi

    void retranslateUi(QWidget *Signup)
    {
        Signup->setWindowTitle(QCoreApplication::translate("Signup", "Form", nullptr));
        label->setText(QCoreApplication::translate("Signup", "Username", nullptr));
        label_2->setText(QCoreApplication::translate("Signup", "Password", nullptr));
        label_3->setText(QCoreApplication::translate("Signup", "Ensure your password", nullptr));
        Sure->setText(QCoreApplication::translate("Signup", "Sure", nullptr));
        btn_return->setText(QCoreApplication::translate("Signup", "Click here to return login", nullptr));
        label_4->setText(QCoreApplication::translate("Signup", "Creat ", nullptr));
        label_5->setText(QCoreApplication::translate("Signup", "Account!", nullptr));
    } // retranslateUi

};

namespace Ui {
    class Signup: public Ui_Signup {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_SIGNUP_H
