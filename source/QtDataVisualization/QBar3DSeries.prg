/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBARDATAPROXY
REQUEST QPOINT
#endif

CLASS QBar3DSeries INHERIT QAbstract3DSeries

   METHOD new
   METHOD delete
   METHOD dataProxy
   METHOD setDataProxy
   METHOD selectedBar
   METHOD setSelectedBar
   METHOD meshAngle
   METHOD setMeshAngle
   METHOD invalidSelectionPosition

   METHOD onDataProxyChanged
   METHOD onSelectedBarChanged
   METHOD onMeshAngleChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QBar3DSeries
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtDataVisualization/QBar3DSeries>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtDataVisualization/QBar3DSeries>
#endif
#endif

using namespace QtDataVisualization;

/*
explicit QBar3DSeries(QObject *parent = nullptr)
*/
void QBar3DSeries_new1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = new QBar3DSeries ( OPQOBJECT(1,nullptr) );
  _qt5xhb_returnNewObject( obj, false );
#endif
}

/*
explicit QBar3DSeries(QBarDataProxy *dataProxy, QObject *parent = nullptr)
*/
void QBar3DSeries_new2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = new QBar3DSeries ( PQBARDATAPROXY(1), OPQOBJECT(2,nullptr) );
  _qt5xhb_returnNewObject( obj, false );
#endif
}

//[1]explicit QBar3DSeries(QObject *parent = nullptr)
//[2]explicit QBar3DSeries(QBarDataProxy *dataProxy, QObject *parent = nullptr)

HB_FUNC_STATIC( QBAR3DSERIES_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QBar3DSeries_new1();
  }
  else if( ISBETWEEN(1,2) && ISQBARDATAPROXY(1) && (ISQOBJECT(2)||ISNIL(2)) )
  {
    QBar3DSeries_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
virtual ~QBar3DSeries()
*/
HB_FUNC_STATIC( QBAR3DSERIES_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QBar3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    Events_disconnect_all_events (obj, true);
    Signals4_disconnect_all_signals (obj, true);
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QBarDataProxy *dataProxy() const
*/
HB_FUNC_STATIC( QBAR3DSERIES_DATAPROXY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QBar3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QBarDataProxy * ptr = obj->dataProxy ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QBARDATAPROXY" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setDataProxy(QBarDataProxy *proxy)
*/
HB_FUNC_STATIC( QBAR3DSERIES_SETDATAPROXY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QBar3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBARDATAPROXY(1) )
    {
#endif
      obj->setDataProxy ( PQBARDATAPROXY(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
QPoint selectedBar() const;
*/
HB_FUNC_STATIC( QBAR3DSERIES_SELECTEDBAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QBar3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QPoint( obj->selectedBar () );
      _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setSelectedBar(const QPoint &position)
*/
HB_FUNC_STATIC( QBAR3DSERIES_SETSELECTEDBAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QBar3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPOINT(1) )
    {
#endif
      obj->setSelectedBar ( *PQPOINT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
float meshAngle() const
*/
HB_FUNC_STATIC( QBAR3DSERIES_MESHANGLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QBar3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->meshAngle () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setMeshAngle(float angle)
*/
HB_FUNC_STATIC( QBAR3DSERIES_SETMESHANGLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QBar3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setMeshAngle ( PFLOAT(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
static QPoint invalidSelectionPosition()
*/
HB_FUNC_STATIC( QBAR3DSERIES_INVALIDSELECTIONPOSITION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
  {
#endif
      auto ptr = new QPoint( QBar3DSeries::invalidSelectionPosition () );
      _qt5xhb_createReturnClass ( ptr, "QPOINT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
#endif
}

/*
void dataProxyChanged( QBarDataProxy * proxy )
*/
HB_FUNC_STATIC( QBAR3DSERIES_ONDATAPROXYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (QBar3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("dataProxyChanged(QBarDataProxy*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QBar3DSeries::dataProxyChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (QBarDataProxy * arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QBAR3DSERIES" );
            PHB_ITEM pArg1 = Signals4_return_qobject( (QObject *) arg1, "QBARDATAPROXY" );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals4_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals4_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals4_get_connection( sender, indexOfSignal ) );

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
void selectedBarChanged( const QPoint & position )
*/
HB_FUNC_STATIC( QBAR3DSERIES_ONSELECTEDBARCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (QBar3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("selectedBarChanged(QPoint)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QBar3DSeries::selectedBarChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QPoint & arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QBAR3DSERIES" );
            PHB_ITEM pArg1 = Signals4_return_object( (void *) &arg1, "QPOINT" );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals4_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals4_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals4_get_connection( sender, indexOfSignal ) );

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
void meshAngleChanged( float angle )
*/
HB_FUNC_STATIC( QBAR3DSERIES_ONMESHANGLECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (QBar3DSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("meshAngleChanged(float)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QBar3DSeries::meshAngleChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (float arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QBAR3DSERIES" );
            PHB_ITEM pArg1 = hb_itemPutND( NULL, arg1 );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals4_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals4_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals4_get_connection( sender, indexOfSignal ) );

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
