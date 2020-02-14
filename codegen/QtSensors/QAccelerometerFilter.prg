%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtSensors
$added=5,1,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QSensorFilter

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$deleteMethod

$prototype=virtual bool filter(QAccelerometerReading *reading) = 0
$virtualMethod=|bool|filter|QAccelerometerReading *

#pragma ENDDUMP
