/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QSURFACE3DSERIES
REQUEST QVALUE3DAXIS
#endif

CLASS Q3DSurface INHERIT QAbstract3DGraph

   METHOD new
   METHOD delete
   METHOD axisX
   METHOD setAxisX
   METHOD axisY
   METHOD setAxisY
   METHOD axisZ
   METHOD setAxisZ
   METHOD selectedSeries
   METHOD flipHorizontalGrid
   METHOD setFlipHorizontalGrid
   METHOD addSeries
   METHOD removeSeries
   METHOD seriesList
   METHOD addAxis
   METHOD releaseAxis
   METHOD axes

   METHOD onAxisXChanged
   METHOD onAxisYChanged
   METHOD onAxisZChanged
   METHOD onFlipHorizontalGridChanged
   METHOD onSelectedSeriesChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS Q3DSurface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtDataVisualization/Q3DSurface>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtDataVisualization/Q3DSurface>
#endif
#endif

using namespace QtDataVisualization;

/*
explicit Q3DSurface(const QSurfaceFormat *format = nullptr, QWindow *parent = nullptr)
*/
HB_FUNC_STATIC( Q3DSURFACE_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( ISBETWEEN(0,2) && (ISQSURFACEFORMAT(1)||ISNIL(1)) && (ISQWINDOW(2)||ISNIL(2)) )
  {
    auto obj = new Q3DSurface( ISNIL(1)? nullptr : (QSurfaceFormat *) Qt5xHb::itemGetPtr(1), OPQWINDOW(2,nullptr) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
virtual ~Q3DSurface()
*/
HB_FUNC_STATIC( Q3DSURFACE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (Q3DSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    Events_disconnect_all_events( obj, true );
    Signals5_disconnect_all_signals( obj, true );
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
QValue3DAxis *axisX() const
*/
HB_FUNC_STATIC( Q3DSURFACE_AXISX )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (Q3DSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QValue3DAxis * ptr = obj->axisX();
      Qt5xHb::createReturnQObjectClass( ptr, "QVALUE3DAXIS" );
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
void setAxisX(QValue3DAxis *axis)
*/
HB_FUNC_STATIC( Q3DSURFACE_SETAXISX )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (Q3DSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVALUE3DAXIS(1) )
    {
#endif
      obj->setAxisX( PQVALUE3DAXIS(1) );
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
QValue3DAxis *axisY() const
*/
HB_FUNC_STATIC( Q3DSURFACE_AXISY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (Q3DSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QValue3DAxis * ptr = obj->axisY();
      Qt5xHb::createReturnQObjectClass( ptr, "QVALUE3DAXIS" );
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
void setAxisY(QValue3DAxis *axis)
*/
HB_FUNC_STATIC( Q3DSURFACE_SETAXISY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (Q3DSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVALUE3DAXIS(1) )
    {
#endif
      obj->setAxisY( PQVALUE3DAXIS(1) );
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
QValue3DAxis *axisZ() const
*/
HB_FUNC_STATIC( Q3DSURFACE_AXISZ )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (Q3DSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QValue3DAxis * ptr = obj->axisZ();
      Qt5xHb::createReturnQObjectClass( ptr, "QVALUE3DAXIS" );
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
void setAxisZ(QValue3DAxis *axis)
*/
HB_FUNC_STATIC( Q3DSURFACE_SETAXISZ )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (Q3DSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVALUE3DAXIS(1) )
    {
#endif
      obj->setAxisZ( PQVALUE3DAXIS(1) );
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
QSurface3DSeries *selectedSeries() const
*/
HB_FUNC_STATIC( Q3DSURFACE_SELECTEDSERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (Q3DSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QSurface3DSeries * ptr = obj->selectedSeries();
      Qt5xHb::createReturnQObjectClass( ptr, "QSURFACE3DSERIES" );
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
bool flipHorizontalGrid() const
*/
HB_FUNC_STATIC( Q3DSURFACE_FLIPHORIZONTALGRID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (Q3DSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->flipHorizontalGrid() );
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
void setFlipHorizontalGrid(bool flip)
*/
HB_FUNC_STATIC( Q3DSURFACE_SETFLIPHORIZONTALGRID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (Q3DSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setFlipHorizontalGrid( PBOOL(1) );
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
void addSeries(QSurface3DSeries *series)
*/
HB_FUNC_STATIC( Q3DSURFACE_ADDSERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (Q3DSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSURFACE3DSERIES(1) )
    {
#endif
      obj->addSeries( PQSURFACE3DSERIES(1) );
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
void removeSeries(QSurface3DSeries *series)
*/
HB_FUNC_STATIC( Q3DSURFACE_REMOVESERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (Q3DSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSURFACE3DSERIES(1) )
    {
#endif
      obj->removeSeries( PQSURFACE3DSERIES(1) );
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
QList<QSurface3DSeries *> seriesList() const
*/
HB_FUNC_STATIC( Q3DSURFACE_SERIESLIST )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (Q3DSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QSurface3DSeries *> list = obj->seriesList();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QSURFACE3DSERIES" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( auto i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QSurface3DSeries *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QSURFACE3DSERIES", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
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
void addAxis(QValue3DAxis *axis)
*/
HB_FUNC_STATIC( Q3DSURFACE_ADDAXIS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (Q3DSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVALUE3DAXIS(1) )
    {
#endif
      obj->addAxis( PQVALUE3DAXIS(1) );
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
void releaseAxis(QValue3DAxis *axis)
*/
HB_FUNC_STATIC( Q3DSURFACE_RELEASEAXIS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (Q3DSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQVALUE3DAXIS(1) )
    {
#endif
      obj->releaseAxis( PQVALUE3DAXIS(1) );
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
QList<QValue3DAxis *> axes() const
*/
HB_FUNC_STATIC( Q3DSURFACE_AXES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (Q3DSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QValue3DAxis *> list = obj->axes();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QVALUE3DAXIS" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( auto i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QValue3DAxis *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QVALUE3DAXIS", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
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
void axisXChanged( QValue3DAxis * axis )
*/
HB_FUNC_STATIC( Q3DSURFACE_ONAXISXCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (Q3DSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("axisXChanged(QValue3DAxis*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals5_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &Q3DSurface::axisXChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (QValue3DAxis * arg1) {
          PHB_ITEM cb = Signals5_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals5_return_qobject( (QObject *) sender, "Q3DSURFACE" );
            PHB_ITEM pArg1 = Signals5_return_qobject( (QObject *) arg1, "QVALUE3DAXIS" );
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

/*
void axisYChanged( QValue3DAxis * axis )
*/
HB_FUNC_STATIC( Q3DSURFACE_ONAXISYCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (Q3DSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("axisYChanged(QValue3DAxis*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals5_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &Q3DSurface::axisYChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (QValue3DAxis * arg1) {
          PHB_ITEM cb = Signals5_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals5_return_qobject( (QObject *) sender, "Q3DSURFACE" );
            PHB_ITEM pArg1 = Signals5_return_qobject( (QObject *) arg1, "QVALUE3DAXIS" );
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

/*
void axisZChanged( QValue3DAxis * axis )
*/
HB_FUNC_STATIC( Q3DSURFACE_ONAXISZCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (Q3DSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("axisZChanged(QValue3DAxis*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals5_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &Q3DSurface::axisZChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (QValue3DAxis * arg1) {
          PHB_ITEM cb = Signals5_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals5_return_qobject( (QObject *) sender, "Q3DSURFACE" );
            PHB_ITEM pArg1 = Signals5_return_qobject( (QObject *) arg1, "QVALUE3DAXIS" );
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

/*
void flipHorizontalGridChanged( bool flip )
*/
HB_FUNC_STATIC( Q3DSURFACE_ONFLIPHORIZONTALGRIDCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (Q3DSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("flipHorizontalGridChanged(bool)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals5_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &Q3DSurface::flipHorizontalGridChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (bool arg1) {
          PHB_ITEM cb = Signals5_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals5_return_qobject( (QObject *) sender, "Q3DSURFACE" );
            PHB_ITEM pArg1 = hb_itemPutL( NULL, arg1 );
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

/*
void selectedSeriesChanged( QSurface3DSeries * series )
*/
HB_FUNC_STATIC( Q3DSURFACE_ONSELECTEDSERIESCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (Q3DSurface *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("selectedSeriesChanged(QSurface3DSeries*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals5_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &Q3DSurface::selectedSeriesChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (QSurface3DSeries * arg1) {
          PHB_ITEM cb = Signals5_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals5_return_qobject( (QObject *) sender, "Q3DSURFACE" );
            PHB_ITEM pArg1 = Signals5_return_qobject( (QObject *) arg1, "QSURFACE3DSERIES" );
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
