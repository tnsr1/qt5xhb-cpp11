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

CLASS QWebChannelAbstractTransport INHERIT QObject

   METHOD delete
   METHOD sendMessage

   METHOD onMessageReceived

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QWebChannelAbstractTransport
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtWebChannel/QWebChannelAbstractTransport>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtWebChannel/QWebChannelAbstractTransport>
#endif
#endif

#include <QtCore/QJsonObject>

/*
explicit QWebChannelAbstractTransport(QObject *parent = nullptr) (abstract)
*/

HB_FUNC_STATIC( QWEBCHANNELABSTRACTTRANSPORT_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = (QWebChannelAbstractTransport *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Qt5xHb::Signals_disconnect_all_signals( obj, true );
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, nullptr );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
virtual void sendMessage(const QJsonObject &message) = 0
*/
HB_FUNC_STATIC( QWEBCHANNELABSTRACTTRANSPORT_SENDMESSAGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto obj = (QWebChannelAbstractTransport *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQJSONOBJECT(1) )
    {
#endif
      obj->sendMessage( *PQJSONOBJECT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void messageReceived( const QJsonObject & message, QWebChannelAbstractTransport * transport )
*/
HB_FUNC_STATIC( QWEBCHANNELABSTRACTTRANSPORT_ONMESSAGERECEIVED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  auto sender = (QWebChannelAbstractTransport *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("messageReceived(QJsonObject,QWebChannelAbstractTransport*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QWebChannelAbstractTransport::messageReceived, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QJsonObject & arg1, QWebChannelAbstractTransport * arg2) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QWEBCHANNELABSTRACTTRANSPORT" );
            PHB_ITEM pArg1 = Qt5xHb::Signals_return_object( (void *) &arg1, "QJSONOBJECT" );
            PHB_ITEM pArg2 = Qt5xHb::Signals_return_qobject( (QObject *) arg2, "QWEBCHANNELABSTRACTTRANSPORT" );
            hb_vmEvalBlockV( cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
          }

        });

        Qt5xHb::Signals_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Qt5xHb::Signals_disconnection( sender, indexOfSignal );

      QObject::disconnect( Qt5xHb::Signals_get_connection( sender, indexOfSignal ) );

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
