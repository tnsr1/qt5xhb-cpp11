/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QMIMEDATA
REQUEST QOBJECT
REQUEST QPIXMAP
REQUEST QPOINT
#endif

CLASS QDrag INHERIT QObject

   METHOD new
   METHOD delete
   METHOD defaultAction
   METHOD dragCursor
   METHOD exec
   METHOD hotSpot
   METHOD mimeData
   METHOD pixmap
   METHOD setDragCursor
   METHOD setHotSpot
   METHOD setMimeData
   METHOD setPixmap
   METHOD source
   METHOD supportedActions
   METHOD target

   METHOD onActionChanged
   METHOD onTargetChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDrag
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtGui/QDrag>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtGui/QDrag>
#endif

#include <QtCore/QMimeData>
#include <QtCore/QPoint>
#include <QtGui/QPixmap>

/*
QDrag(QObject * dragSource)
*/
HB_FUNC_STATIC( QDRAG_NEW )
{
  if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    auto obj = new QDrag( PQOBJECT(1) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDRAG_DELETE )
{
  auto obj = (QDrag *) Qt5xHb::itemGetPtrStackSelfItem();

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
}

/*
Qt::DropAction defaultAction() const
*/
HB_FUNC_STATIC( QDRAG_DEFAULTACTION )
{
  auto obj = (QDrag *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->defaultAction() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QPixmap dragCursor(Qt::DropAction action) const
*/
HB_FUNC_STATIC( QDRAG_DRAGCURSOR )
{
  auto obj = (QDrag *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      auto ptr = new QPixmap( obj->dragCursor( (Qt::DropAction) hb_parni(1) ) );
      Qt5xHb::createReturnClass( ptr, "QPIXMAP", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
Qt::DropAction exec(Qt::DropActions supportedActions = Qt::MoveAction)
*/
void QDrag_exec1()
{
  auto obj = (QDrag *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    RENUM( obj->exec( ISNIL(1)? (Qt::DropActions) Qt::MoveAction : (Qt::DropActions) hb_parni(1) ) );
  }
}

/*
Qt::DropAction exec(Qt::DropActions supportedActions, Qt::DropAction defaultDropAction)
*/
void QDrag_exec2()
{
  auto obj = (QDrag *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    RENUM( obj->exec( (Qt::DropActions) hb_parni(1), (Qt::DropAction) hb_parni(2) ) );
  }
}

/*
[1]Qt::DropAction exec(Qt::DropActions supportedActions = Qt::MoveAction)
[2]Qt::DropAction exec(Qt::DropActions supportedActions, Qt::DropAction defaultDropAction)
*/

HB_FUNC_STATIC( QDRAG_EXEC )
{
  if( ISBETWEEN(0,1) && ISOPTNUM(1) )
  {
    QDrag_exec1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QDrag_exec2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPoint hotSpot() const
*/
HB_FUNC_STATIC( QDRAG_HOTSPOT )
{
  auto obj = (QDrag *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QPoint( obj->hotSpot() );
      Qt5xHb::createReturnClass( ptr, "QPOINT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QMimeData * mimeData() const
*/
HB_FUNC_STATIC( QDRAG_MIMEDATA )
{
  auto obj = (QDrag *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QMimeData * ptr = obj->mimeData();
      Qt5xHb::createReturnQObjectClass( ptr, "QMIMEDATA" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QPixmap pixmap() const
*/
HB_FUNC_STATIC( QDRAG_PIXMAP )
{
  auto obj = (QDrag *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QPixmap( obj->pixmap() );
      Qt5xHb::createReturnClass( ptr, "QPIXMAP", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setDragCursor(const QPixmap & cursor, Qt::DropAction action)
*/
HB_FUNC_STATIC( QDRAG_SETDRAGCURSOR )
{
  auto obj = (QDrag *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQPIXMAP(1) && ISNUM(2) )
    {
#endif
      obj->setDragCursor( *PQPIXMAP(1), (Qt::DropAction) hb_parni(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setHotSpot(const QPoint & hotspot)
*/
HB_FUNC_STATIC( QDRAG_SETHOTSPOT )
{
  auto obj = (QDrag *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPOINT(1) )
    {
#endif
      obj->setHotSpot( *PQPOINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMimeData(QMimeData * data)
*/
HB_FUNC_STATIC( QDRAG_SETMIMEDATA )
{
  auto obj = (QDrag *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQMIMEDATA(1) )
    {
#endif
      obj->setMimeData( PQMIMEDATA(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPixmap(const QPixmap & pixmap)
*/
HB_FUNC_STATIC( QDRAG_SETPIXMAP )
{
  auto obj = (QDrag *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPIXMAP(1) )
    {
#endif
      obj->setPixmap( *PQPIXMAP(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QObject * source() const
*/
HB_FUNC_STATIC( QDRAG_SOURCE )
{
  auto obj = (QDrag *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QObject * ptr = obj->source();
      Qt5xHb::createReturnQObjectClass( ptr, "QOBJECT" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
Qt::DropActions supportedActions() const
*/
HB_FUNC_STATIC( QDRAG_SUPPORTEDACTIONS )
{
  auto obj = (QDrag *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->supportedActions() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QObject * target() const
*/
HB_FUNC_STATIC( QDRAG_TARGET )
{
  auto obj = (QDrag *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QObject * ptr = obj->target();
      Qt5xHb::createReturnQObjectClass( ptr, "QOBJECT" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void actionChanged( Qt::DropAction action )
*/
HB_FUNC_STATIC( QDRAG_ONACTIONCHANGED )
{
  auto sender = (QDrag *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("actionChanged(Qt::DropAction)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QDrag::actionChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (Qt::DropAction arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QDRAG" );
            PHB_ITEM pArg1 = hb_itemPutNI( nullptr, (int) arg1 );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
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
}

/*
void targetChanged( QObject * newTarget )
*/
HB_FUNC_STATIC( QDRAG_ONTARGETCHANGED )
{
  auto sender = (QDrag *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("targetChanged(QObject*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QDrag::targetChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (QObject * arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QDRAG" );
            PHB_ITEM pArg1 = Qt5xHb::Signals_return_qobject( (QObject *) arg1, "QOBJECT" );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
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
}

#pragma ENDDUMP
