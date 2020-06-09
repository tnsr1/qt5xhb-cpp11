%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QDebug(QIODevice *device)
$internalConstructor=|new1|QIODevice *

$prototype=QDebug(QString *string)
%% TODO: implementar
%% $internalConstructor=|new2|

$prototype=QDebug(QtMsgType t)
$internalConstructor=|new3|QtMsgType

$prototype=QDebug(const QDebug &o)
$internalConstructor=|new4|const QDebug &

/*
[1]QDebug(QIODevice *device)
[2]QDebug(QString *string)
[3]QDebug(QtMsgType t)
[4]QDebug(const QDebug &o)
*/

HB_FUNC_STATIC( QDEBUG_NEW )
{
  if( ISNUMPAR(1) && ISQIODEVICE(1) )
  {
    QDebug_new1();
  }
%%  else if( ISNUMPAR(1) && ISCHAR(1) )
%%  {
%%    QDebug_new2();
%%  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QDebug_new3();
  }
  else if( ISNUMPAR(1) && ISQDEBUG(1) )
  {
    QDebug_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void swap(QDebug &other)
$method=|void|swap|QDebug &

$prototype=QDebug &space()
$method=|QDebug &|space|

$prototype=QDebug &nospace()
$method=|QDebug &|nospace|

$prototype=QDebug &maybeSpace()
$method=|QDebug &|maybeSpace|

$prototypeV2=bool autoInsertSpaces() const

$prototype=void setAutoInsertSpaces(bool b)
$method=|void|setAutoInsertSpaces|bool

$prototype=QDebug &maybeQuote(char c = '"')
%% TODO: Qt 5.4

$prototype=QDebug &noquote()
$method=5,4,0|QDebug &|noquote|

$prototype=QDebug &quote()
$method=5,4,0|QDebug &|quote|

$prototype=QDebug &resetFormat()
$method=5,4,0|QDebug &|resetFormat|

$prototype=void setVerbosity(int verbosityLevel)
$method=5,6,0|void|setVerbosity|int

$prototype=int verbosity() const
$internalMethod=5,6,0|int|verbosity,verbosity1|

$prototype=QDebug &QDebug::verbosity(int verbosityLevel)
$internalMethod=5,13,0|QDebug &|verbosity,verbosity2|int

/*
[1]int verbosity() const
[2]QDebug &verbosity(int verbosityLevel)
*/

HB_FUNC_STATIC( QDEBUG_VERBOSITY )
{
  if( ISNUMPAR(0) )
  {
    QDebug_verbosity1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QDebug_verbosity2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=verbosity

$extraMethods

#pragma ENDDUMP
