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

$beginClassFrom=QIODevice

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QBuffer ( QObject * parent = nullptr )
$internalConstructor=|new1|QObject *=nullptr

$prototype=QBuffer ( QByteArray * byteArray, QObject * parent = nullptr )
$internalConstructor=|new2|QByteArray *,QObject *=nullptr

/*
[1]QBuffer ( QObject * parent = nullptr )
[2]QBuffer ( QByteArray * byteArray, QObject * parent = nullptr )
*/

HB_FUNC_STATIC( QBUFFER_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QBuffer_new1();
  }
  else if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && ISOPTQOBJECT(2) )
  {
    QBuffer_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QByteArray & buffer ()
$method=|QByteArray &|buffer,buffer1|

$prototype=const QByteArray & buffer () const
$method=|const QByteArray &|buffer,buffer2|

/*
[1]QByteArray & buffer ()
[2]const QByteArray & buffer () const
*/

%% TODO: verificar se [2] � realmente necess�rio

HB_FUNC_STATIC( QBUFFER_BUFFER )
{
  HB_FUNC_EXEC( QBUFFER_BUFFER1 );
}
$addMethod=buffer

$prototype=const QByteArray & data () const
$method=|const QByteArray &|data|

$prototype=void setBuffer ( QByteArray * byteArray )
$method=|void|setBuffer|QByteArray *

$prototype=void setData ( const QByteArray & data )
$internalMethod=|void|setData,setData1|const QByteArray &

$prototype=void setData ( const char * data, int size )
$internalMethod=|void|setData,setData2|const char *,int

/*
[1]void setData ( const QByteArray & data )
[2]void setData ( const char * data, int size )
*/

HB_FUNC_STATIC( QBUFFER_SETDATA )
{
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    QBuffer_setData1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    QBuffer_setData2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setData

$prototypeV2=virtual bool atEnd() const

$prototypeV2=virtual bool canReadLine() const

$prototypeV2=virtual void close()

$prototype=virtual bool open ( OpenMode flags )
$virtualMethod=|bool|open|QBuffer::OpenMode

$prototypeV2=virtual qint64 pos() const

$prototype=virtual bool seek ( qint64 pos )
$virtualMethod=|bool|seek|qint64

$prototypeV2=virtual qint64 size() const

#pragma ENDDUMP
