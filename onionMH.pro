TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
        main.cpp \
    cops/mkp.cpp \
    cops/sat.cpp \
    cops/tsp.cpp \
    lib/parameters.cpp \
    mh/rrga.cpp \
    lib/loopcontroller.cpp \
    lib/facilities.cpp \
    lib/stddecorators.cpp \
    lib/random.cpp

HEADERS += \
    lib/algorithm.h \
    cops/tsp.h \
    cops/sat.h \
    lib/facilities.h \
    lib/onion.h \
    garbage.h \
    lib/dataload.h \
    cops/mkp.h \
    test/dataloaders.h \
    lib/parameters.h \
    lib/decorator.h \
    mh/rrga.h \
    lib/create.h \
    lib/neighbor.h \
    lib/accept.h \
    lib/objective.h \
    lib/update.h \
    lib/functor.h \
    lib/loopcontroller.h \
    lib/stddecorators.h \
    lib/types.h \
    lib/random.h

CONFIG(debug, debug|release) {
    DEFINES += "__DEBUG__"
}
CONFIG(release, debug|release) {
    macx | linux: QMAKE_CXXFLAGS += -O3
}
