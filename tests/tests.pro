include(../defaults.pri)

QT -= qt core gui

CONFIG   -= app_bundle
CONFIG += c++14 console

LIBS += -L../../libKitsunemimiCommon/src -lKitsunemimiCommon
LIBS += -L../../libKitsunemimiCommon/src/debug -lKitsunemimiCommon
LIBS += -L../../libKitsunemimiCommon/src/release -lKitsunemimiCommon
INCLUDEPATH += ../../libKitsunemimiCommon/include

LIBS +=  -lboost_filesystem -lboost_system

INCLUDEPATH += $$PWD

LIBS += -L../src -lKitsunemimiPersistence

SOURCES += \
    main.cpp \
    libKitsunemimiPersistence/files/text_file_test.cpp \
    libKitsunemimiPersistence/database/sqlite_test.cpp \
    libKitsunemimiPersistence/logger/logger_test.cpp \
    libKitsunemimiPersistence/files/binary_file_with_directIO_test.cpp \
    libKitsunemimiPersistence/files/binary_file_without_directIO_test.cpp

HEADERS += \
    libKitsunemimiPersistence/files/text_file_test.h \
    libKitsunemimiPersistence/database/sqlite_test.h \
    libKitsunemimiPersistence/logger/logger_test.h \
    libKitsunemimiPersistence/files/binary_file_with_directIO_test.h \
    libKitsunemimiPersistence/files/binary_file_without_directIO_test.h
