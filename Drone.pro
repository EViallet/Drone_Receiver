QT += core network
QT -= gui

CONFIG += c++11

TARGET = Drone
CONFIG += console
CONFIG -= app_bundle

TEMPLATE = app

SOURCES += main.cpp \
    receiver.cpp \
    fligthcontroller.cpp \
    corrector.cpp \
    gyroscope/I2Cdev.cpp \
    gyroscope/MPU6050.cpp \
    sensor.cpp \
    gyroscope/MPU6050_6Axis_MotionApps20.cpp

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

HEADERS += \
    receiver.h \
    packet.h \
    fligthcontroller.h \
    corrector.h \
    gyroscope/helper_3dmath.h \
    gyroscope/I2Cdev.h \
    gyroscope/MPU6050_6Axis_MotionApps20.h \
    gyroscope/MPU6050.h \
    sensor.h


LIBS += -L/usr/local/include -lpigpio -lpthread

