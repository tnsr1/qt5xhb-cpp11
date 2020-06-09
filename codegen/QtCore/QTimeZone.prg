%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore
$added=5,2,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTimeZone()
$internalConstructor=|new1|

$prototype=QTimeZone(const QByteArray &ianaId)
$internalConstructor=|new2|const QByteArray &

$prototype=QTimeZone(int offsetSeconds)
$internalConstructor=|new3|int

$prototype=QTimeZone(const QByteArray &zoneId, int offsetSeconds, const QString &name,const QString &abbreviation, QLocale::Country country = QLocale::AnyCountry,const QString &comment = QString())
$internalConstructor=|new4|const QByteArray &,int,const QString &,const QString &,QLocale::Country=QLocale::AnyCountry,const QString &=QString()

$prototype=QTimeZone(const QTimeZone &other)
$internalConstructor=|new5|const QTimeZone &

/*
[1]QTimeZone()
[2]QTimeZone(const QByteArray &ianaId)
[3]QTimeZone(int offsetSeconds)
[4]QTimeZone(const QByteArray &zoneId, int offsetSeconds, const QString &name,const QString &abbreviation, QLocale::Country country = QLocale::AnyCountry,const QString &comment = QString())
[5]QTimeZone(const QTimeZone &other)
*/

HB_FUNC_STATIC( QTIMEZONE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTimeZone_new1();
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QTimeZone_new2();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTimeZone_new3();
  }
  else if( ISBETWEEN(4,6) && ISQBYTEARRAY(1) && ISNUM(2) && ISCHAR(3) && ISCHAR(4) && ISOPTNUM(5) && ISOPTCHAR(6) )
  {
    QTimeZone_new4();
  }
  else if( ISNUMPAR(1) && ISQTIMEZONE(1) )
  {
    QTimeZone_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void swap(QTimeZone &other)
$method=|void|swap|QTimeZone &

$prototypeV2=bool isValid() const

$prototypeV2=QByteArray id() const

$prototypeV2=QLocale::Country country() const

$prototypeV2=QString comment() const

$prototype=QString displayName(const QDateTime &atDateTime,QTimeZone::NameType nameType = QTimeZone::DefaultName,const QLocale &locale = QLocale()) const
$internalMethod=|QString|displayName,displayName1|const QDateTime &,QTimeZone::NameType=QTimeZone::DefaultName,const QLocale &=QLocale()

$prototype=QString displayName(QTimeZone::TimeType timeType,QTimeZone::NameType nameType = QTimeZone::DefaultName,const QLocale &locale = QLocale()) const
$internalMethod=|QString|displayName,displayName2|QTimeZone::TimeType,QTimeZone::NameType=QTimeZone::DefaultName,const QLocale &=QLocale()

/*
[1]QString displayName(const QDateTime &atDateTime,QTimeZone::NameType nameType = QTimeZone::DefaultName,const QLocale &locale = QLocale()) const
[2]QString displayName(QTimeZone::TimeType timeType,QTimeZone::NameType nameType = QTimeZone::DefaultName,const QLocale &locale = QLocale()) const
*/

HB_FUNC_STATIC( QTIMEZONE_DISPLAYNAME )
{
  if( ISBETWEEN(1,3) && ISQDATETIME(1) && ISOPTNUM(2) && (ISQLOCALE(3)||ISNIL(3)) )
  {
    QTimeZone_displayName1();
  }
  else if( ISBETWEEN(1,3) && ISNUM(1) && ISOPTNUM(2) && (ISQLOCALE(3)||ISNIL(3)) )
  {
    QTimeZone_displayName2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=displayName

$prototype=QString abbreviation(const QDateTime &atDateTime) const
$method=|QString|abbreviation|const QDateTime &

$prototype=int offsetFromUtc(const QDateTime &atDateTime) const
$method=|int|offsetFromUtc|const QDateTime &

$prototype=int standardTimeOffset(const QDateTime &atDateTime) const
$method=|int|standardTimeOffset|const QDateTime &

$prototype=int daylightTimeOffset(const QDateTime &atDateTime) const
$method=|int|daylightTimeOffset|const QDateTime &

$prototypeV2=bool hasDaylightTime() const

$prototype=bool isDaylightTime(const QDateTime &atDateTime) const
$method=|bool|isDaylightTime|const QDateTime &

$prototypeV2=bool hasTransitions() const

$prototypeV2=static QByteArray systemTimeZoneId()

$prototype=static bool isTimeZoneIdAvailable(const QByteArray &ianaId)
$staticMethod=|bool|isTimeZoneIdAvailable|const QByteArray &

$prototype=static QList<QByteArray> availableTimeZoneIds()
$staticMethod=|QList<QByteArray>|availableTimeZoneIds,availableTimeZoneIds1|

$prototype=static QList<QByteArray> availableTimeZoneIds(QLocale::Country country)
$staticMethod=|QList<QByteArray>|availableTimeZoneIds,availableTimeZoneIds2|QLocale::Country

$prototype=static QList<QByteArray> availableTimeZoneIds(int offsetSeconds)
$staticMethod=|QList<QByteArray>|availableTimeZoneIds,availableTimeZoneIds3|int

/*
[1]static QList<QByteArray> availableTimeZoneIds()
[2]static QList<QByteArray> availableTimeZoneIds(QLocale::Country country)
[3]static QList<QByteArray> availableTimeZoneIds(int offsetSeconds)
*/

HB_FUNC_STATIC( QTIMEZONE_AVAILABLETIMEZONEIDS ) // TODO: resolver conflito entre [2] e [3]
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTIMEZONE_AVAILABLETIMEZONEIDS1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QTIMEZONE_AVAILABLETIMEZONEIDS2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QTIMEZONE_AVAILABLETIMEZONEIDS3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=availableTimeZoneIds

$prototype=static QByteArray ianaIdToWindowsId(const QByteArray &ianaId)
$staticMethod=|QByteArray|ianaIdToWindowsId|const QByteArray &

$prototype=static QByteArray windowsIdToDefaultIanaId(const QByteArray &windowsId)
$internalStaticMethod=|QByteArray|windowsIdToDefaultIanaId,windowsIdToDefaultIanaId1|const QByteArray &

$prototype=static QByteArray windowsIdToDefaultIanaId(const QByteArray &windowsId,QLocale::Country country)
$internalStaticMethod=|QByteArray|windowsIdToDefaultIanaId,windowsIdToDefaultIanaId2|const QByteArray &,QLocale::Country

/*
[1]static QByteArray windowsIdToDefaultIanaId(const QByteArray &windowsId)
[2]static QByteArray windowsIdToDefaultIanaId(const QByteArray &windowsId,QLocale::Country country)
*/

HB_FUNC_STATIC( QTIMEZONE_WINDOWSIDTODEFAULTIANAID )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QTimeZone_windowsIdToDefaultIanaId1();
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISNUM(2) )
  {
    QTimeZone_windowsIdToDefaultIanaId2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=windowsIdToDefaultIanaId

$prototype=static QList<QByteArray> windowsIdToIanaIds(const QByteArray &windowsId)
$internalStaticMethod=|QList<QByteArray>|windowsIdToIanaIds,windowsIdToIanaIds1|const QByteArray &

$prototype=static QList<QByteArray> windowsIdToIanaIds(const QByteArray &windowsId,QLocale::Country country)
$internalStaticMethod=|QList<QByteArray>|windowsIdToIanaIds,windowsIdToIanaIds2|const QByteArray &,QLocale::Country

/*
[1]static QList<QByteArray> windowsIdToIanaIds(const QByteArray &windowsId)
[2]static QList<QByteArray> windowsIdToIanaIds(const QByteArray &windowsId,QLocale::Country country)
*/

HB_FUNC_STATIC( QTIMEZONE_WINDOWSIDTOIANAIDS )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QTimeZone_windowsIdToIanaIds1();
  }
  else if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISNUM(2) )
  {
    QTimeZone_windowsIdToIanaIds2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=windowsIdToIanaIds

$extraMethods

#pragma ENDDUMP
