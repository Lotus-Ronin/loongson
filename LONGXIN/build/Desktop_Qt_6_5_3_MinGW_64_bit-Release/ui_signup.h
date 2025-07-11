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
    QLabel *label_image;

    void setupUi(QWidget *Signup)
    {
        if (Signup->objectName().isEmpty())
            Signup->setObjectName("Signup");
        Signup->resize(627, 386);
        Signup->setStyleSheet(QString::fromUtf8("background-color: rgb(255, 255, 255);"));
        label = new QLabel(Signup);
        label->setObjectName("label");
        label->setGeometry(QRect(340, 50, 91, 16));
        label->setStyleSheet(QString::fromUtf8("font: 10pt \"Arial\";"));
        lineEdit_username = new QLineEdit(Signup);
        lineEdit_username->setObjectName("lineEdit_username");
        lineEdit_username->setGeometry(QRect(340, 70, 241, 31));
        label_2 = new QLabel(Signup);
        label_2->setObjectName("label_2");
        label_2->setGeometry(QRect(340, 130, 111, 16));
        label_2->setStyleSheet(QString::fromUtf8("font: 10pt \"Arial\";"));
        lineEdit_passwd = new QLineEdit(Signup);
        lineEdit_passwd->setObjectName("lineEdit_passwd");
        lineEdit_passwd->setGeometry(QRect(340, 150, 241, 31));
        label_3 = new QLabel(Signup);
        label_3->setObjectName("label_3");
        label_3->setGeometry(QRect(340, 200, 141, 16));
        label_3->setStyleSheet(QString::fromUtf8("font: 10pt \"Arial\";"));
        lineEdit_surepasswd = new QLineEdit(Signup);
        lineEdit_surepasswd->setObjectName("lineEdit_surepasswd");
        lineEdit_surepasswd->setGeometry(QRect(340, 220, 241, 31));
        Sure = new QPushButton(Signup);
        Sure->setObjectName("Sure");
        Sure->setGeometry(QRect(410, 270, 80, 31));
        Sure->setStyleSheet(QString::fromUtf8("QPushButton {\n"
"    background-color: #3399ff;       /* \344\270\273\344\275\223\350\203\214\346\231\257\350\211\262 */\n"
"    color: white;                    /* \345\255\227\344\275\223\351\242\234\350\211\262 */\n"
"    border-radius: 10px;             /* \345\234\206\350\247\222\345\215\212\345\276\204 */\n"
"    padding: 5px 10px;               /* \345\206\205\350\276\271\350\267\235 */\n"
"    font-size: 14px;\n"
"    font-weight: bold;\n"
"    border: 1px solid #007acc;       /* \350\276\271\346\241\206\351\242\234\350\211\262 */\n"
"}\n"
"\n"
"QPushButton:hover {\n"
"    background-color: #007acc;       /* \346\202\254\346\265\256\346\227\266\350\203\214\346\231\257\350\211\262 */\n"
"}\n"
"\n"
"QPushButton:pressed {\n"
"    background-color: #005f99;       /* \346\214\211\344\270\213\346\227\266\350\203\214\346\231\257\350\211\262 */\n"
"}\n"
""));
        btn_return = new QPushButton(Signup);
        btn_return->setObjectName("btn_return");
        btn_return->setGeometry(QRect(350, 320, 201, 31));
        btn_return->setStyleSheet(QString::fromUtf8("QPushButton {\n"
"    background-color: #3399ff;       /* \344\270\273\344\275\223\350\203\214\346\231\257\350\211\262 */\n"
"    color: white;                    /* \345\255\227\344\275\223\351\242\234\350\211\262 */\n"
"    border-radius: 10px;             /* \345\234\206\350\247\222\345\215\212\345\276\204 */\n"
"    padding: 5px 10px;               /* \345\206\205\350\276\271\350\267\235 */\n"
"    font-size: 14px;\n"
"    font-weight: bold;\n"
"    border: 1px solid #007acc;       /* \350\276\271\346\241\206\351\242\234\350\211\262 */\n"
"}\n"
"\n"
"QPushButton:hover {\n"
"    background-color: #007acc;       /* \346\202\254\346\265\256\346\227\266\350\203\214\346\231\257\350\211\262 */\n"
"}\n"
"\n"
"QPushButton:pressed {\n"
"    background-color: #005f99;       /* \346\214\211\344\270\213\346\227\266\350\203\214\346\231\257\350\211\262 */\n"
"}\n"
""));
        label_4 = new QLabel(Signup);
        label_4->setObjectName("label_4");
        label_4->setGeometry(QRect(130, 10, 171, 81));
        label_4->setStyleSheet(QString::fromUtf8("font: 87 20pt \"Arial Black\";\n"
"color: rgb(0, 0, 0);"));
        label_5 = new QLabel(Signup);
        label_5->setObjectName("label_5");
        label_5->setGeometry(QRect(120, 70, 131, 31));
        label_5->setStyleSheet(QString::fromUtf8("font: 87 20pt \"Arial Black\";\n"
"color: rgb(0, 0, 0);"));
        label_image = new QLabel(Signup);
        label_image->setObjectName("label_image");
        label_image->setGeometry(QRect(80, 120, 221, 211));

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
        label_image->setText(QCoreApplication::translate("Signup", "TextLabel", nullptr));
    } // retranslateUi

};

namespace Ui {
    class Signup: public Ui_Signup {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_SIGNUP_H
