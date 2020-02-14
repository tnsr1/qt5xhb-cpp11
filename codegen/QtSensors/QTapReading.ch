%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSensors

$header

/*
enum QTapReading::TapDirection
*/
#define QTapReading_Undefined                                        0
#define QTapReading_X                                                0x0001
#define QTapReading_Y                                                0x0002
#define QTapReading_Z                                                0x0004
#define QTapReading_X_Pos                                            0x0011
#define QTapReading_Y_Pos                                            0x0022
#define QTapReading_Z_Pos                                            0x0044
#define QTapReading_X_Neg                                            0x0101
#define QTapReading_Y_Neg                                            0x0202
#define QTapReading_Z_Neg                                            0x0404
#define QTapReading_X_Both                                           0x0111
#define QTapReading_Y_Both                                           0x0222
#define QTapReading_Z_Both                                           0x0444
