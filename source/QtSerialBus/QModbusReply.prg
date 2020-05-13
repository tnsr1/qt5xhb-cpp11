/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QModbusReply INHERIT QObject

   METHOD onFinished
   METHOD onErrorOccurred

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QModbusReply
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtSerialBus/QModbusReply>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtSerialBus/QModbusReply>
#endif
#endif

/*
QModbusReply(ReplyType type, int serverAddress, QObject *parent = nullptr)
*/

/*
ReplyType type() const
*/

/*
int serverAddress() const
*/

/*
bool isFinished() const
*/

/*
QModbusDataUnit result() const
*/

/*
QModbusResponse rawResult() const
*/

/*
QString errorString() const
*/

/*
QModbusDevice::Error error() const
*/

/*
void setResult(const QModbusDataUnit &unit)
*/

/*
void setRawResult(const QModbusResponse &unit)
*/

/*
void setFinished(bool isFinished)
*/

/*
void setError(QModbusDevice::Error error, const QString &errorText)
*/

/*
void finished()
*/
HB_FUNC_STATIC( QMODBUSREPLY_ONFINISHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto sender = (QModbusReply *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("finished()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals5_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QModbusReply::finished, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Signals5_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals5_return_qobject( (QObject *) sender, "QMODBUSREPLY" );
            hb_vmEvalBlockV( cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals5_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals5_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals5_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
#else
  hb_retl( false );
#endif
}

/*
void errorOccurred( QModbusDevice::Error error )
*/
HB_FUNC_STATIC( QMODBUSREPLY_ONERROROCCURRED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  auto sender = (QModbusReply *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("errorOccurred(QModbusDevice::Error)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals5_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QModbusReply::errorOccurred, 
                                                              [sender, indexOfCodeBlock]
                                                              (QModbusDevice::Error arg1) {
          PHB_ITEM cb = Signals5_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals5_return_qobject( (QObject *) sender, "QMODBUSREPLY" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, (int) arg1 );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals5_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals5_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals5_get_connection( sender, indexOfSignal ) );

      hb_retl( true );
    }
    else
    {
      hb_retl( false );
    }
  }
  else
  {
    hb_retl( false );
  }
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
