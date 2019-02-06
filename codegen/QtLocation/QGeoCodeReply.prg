%%
%% Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtLocation

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes=5,4,0

#include <QtPositioning/QGeoShape>

$prototype=QGeoCodeReply(Error error, const QString &errorString, QObject *parent = nullptr)
$constructor=5,4,0|new|QGeoCodeReply::Error,const QString &,QObject *=nullptr

$deleteMethod=5,4,0

$prototype=bool isFinished() const
$method=5,4,0|bool|isFinished|

$prototype=Error error() const
$method=5,4,0|QGeoCodeReply::Error|error|

$prototype=QString errorString() const
$method=5,4,0|QString|errorString|

$prototype=QGeoShape viewport() const
$method=5,4,0|QGeoShape|viewport|

$prototype=QList<QGeoLocation> locations() const
$method=5,4,0|QList<QGeoLocation>|locations|

$prototype=int limit() const
$method=5,4,0|int|limit|

$prototype=int offset() const
$method=5,4,0|int|offset|

$prototype=virtual void abort()
$virtualMethod=5,4,0|void|abort|

%%
%% SIGNALS
%%

$prototype=void finished()
$signalMethod=5,4,0|void|finished|

$prototype=void error( QGeoCodeReply::Error error, const QString & errorString = QString() )
$signalMethod=5,4,0|void|error,error,QOverload<QGeoCodeReply::Error COMMA const QString &>|QGeoCodeReply::Error,const QString &

#pragma ENDDUMP
