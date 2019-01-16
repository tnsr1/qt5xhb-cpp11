/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
#endif

CLASS QHCandlestickModelMapper INHERIT QCandlestickModelMapper

   METHOD new
   METHOD timestampColumn
   METHOD setTimestampColumn
   METHOD openColumn
   METHOD setOpenColumn
   METHOD highColumn
   METHOD setHighColumn
   METHOD lowColumn
   METHOD setLowColumn
   METHOD closeColumn
   METHOD setCloseColumn
   METHOD firstSetRow
   METHOD setFirstSetRow
   METHOD lastSetRow
   METHOD setLastSetRow
   METHOD orientation

   METHOD onCloseColumnChanged
   METHOD onFirstSetRowChanged
   METHOD onHighColumnChanged
   METHOD onLastSetRowChanged
   METHOD onLowColumnChanged
   METHOD onOpenColumnChanged
   METHOD onTimestampColumnChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QHCandlestickModelMapper
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QHCandlestickModelMapper>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QHCandlestickModelMapper>
#endif
#endif

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
using namespace QtCharts;
#endif

/*
explicit QHCandlestickModelMapper(QObject *parent = nullptr)
*/
HB_FUNC_STATIC( QHCANDLESTICKMODELMAPPER_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QHCandlestickModelMapper * o = new QHCandlestickModelMapper ( OPQOBJECT(1,nullptr) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
int timestampColumn() const
*/
HB_FUNC_STATIC( QHCANDLESTICKMODELMAPPER_TIMESTAMPCOLUMN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QHCandlestickModelMapper * obj = (QHCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->timestampColumn () );
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
void setTimestampColumn(int timestampColumn)
*/
HB_FUNC_STATIC( QHCANDLESTICKMODELMAPPER_SETTIMESTAMPCOLUMN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QHCandlestickModelMapper * obj = (QHCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setTimestampColumn ( PINT(1) );
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
int openColumn() const
*/
HB_FUNC_STATIC( QHCANDLESTICKMODELMAPPER_OPENCOLUMN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QHCandlestickModelMapper * obj = (QHCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->openColumn () );
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
void setOpenColumn(int openColumn)
*/
HB_FUNC_STATIC( QHCANDLESTICKMODELMAPPER_SETOPENCOLUMN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QHCandlestickModelMapper * obj = (QHCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setOpenColumn ( PINT(1) );
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
int highColumn() const
*/
HB_FUNC_STATIC( QHCANDLESTICKMODELMAPPER_HIGHCOLUMN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QHCandlestickModelMapper * obj = (QHCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->highColumn () );
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
void setHighColumn(int highColumn)
*/
HB_FUNC_STATIC( QHCANDLESTICKMODELMAPPER_SETHIGHCOLUMN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QHCandlestickModelMapper * obj = (QHCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setHighColumn ( PINT(1) );
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
int lowColumn() const
*/
HB_FUNC_STATIC( QHCANDLESTICKMODELMAPPER_LOWCOLUMN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QHCandlestickModelMapper * obj = (QHCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->lowColumn () );
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
void setLowColumn(int lowColumn)
*/
HB_FUNC_STATIC( QHCANDLESTICKMODELMAPPER_SETLOWCOLUMN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QHCandlestickModelMapper * obj = (QHCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setLowColumn ( PINT(1) );
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
int closeColumn() const
*/
HB_FUNC_STATIC( QHCANDLESTICKMODELMAPPER_CLOSECOLUMN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QHCandlestickModelMapper * obj = (QHCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->closeColumn () );
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
void setCloseColumn(int closeColumn)
*/
HB_FUNC_STATIC( QHCANDLESTICKMODELMAPPER_SETCLOSECOLUMN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QHCandlestickModelMapper * obj = (QHCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setCloseColumn ( PINT(1) );
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
int firstSetRow() const
*/
HB_FUNC_STATIC( QHCANDLESTICKMODELMAPPER_FIRSTSETROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QHCandlestickModelMapper * obj = (QHCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->firstSetRow () );
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
void setFirstSetRow(int firstSetRow)
*/
HB_FUNC_STATIC( QHCANDLESTICKMODELMAPPER_SETFIRSTSETROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QHCandlestickModelMapper * obj = (QHCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setFirstSetRow ( PINT(1) );
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
int lastSetRow() const
*/
HB_FUNC_STATIC( QHCANDLESTICKMODELMAPPER_LASTSETROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QHCandlestickModelMapper * obj = (QHCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->lastSetRow () );
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
void setLastSetRow(int lastSetRow)
*/
HB_FUNC_STATIC( QHCANDLESTICKMODELMAPPER_SETLASTSETROW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QHCandlestickModelMapper * obj = (QHCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setLastSetRow ( PINT(1) );
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
Qt::Orientation orientation() const
*/
HB_FUNC_STATIC( QHCANDLESTICKMODELMAPPER_ORIENTATION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QHCandlestickModelMapper * obj = (QHCandlestickModelMapper *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->orientation () );
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

#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
using namespace QtCharts;
#endif

/*
void closeColumnChanged()
*/
HB_FUNC_STATIC( QHCANDLESTICKMODELMAPPER_ONCLOSECOLUMNCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  if( hb_pcount() == 1 )
  {
    QHCandlestickModelMapper * sender = (QHCandlestickModelMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "closeColumnChanged()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QHCandlestickModelMapper::closeColumnChanged, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "closeColumnChanged()" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QHCANDLESTICKMODELMAPPER" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "closeColumnChanged()", connection );

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
  else if( hb_pcount() == 0 )
  {
    QHCandlestickModelMapper * sender = (QHCandlestickModelMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "closeColumnChanged()" );

      QObject::disconnect( Signals2_get_connection( sender, "closeColumnChanged()" ) );

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
#endif
}

/*
void firstSetRowChanged()
*/
HB_FUNC_STATIC( QHCANDLESTICKMODELMAPPER_ONFIRSTSETROWCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  if( hb_pcount() == 1 )
  {
    QHCandlestickModelMapper * sender = (QHCandlestickModelMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "firstSetRowChanged()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QHCandlestickModelMapper::firstSetRowChanged, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "firstSetRowChanged()" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QHCANDLESTICKMODELMAPPER" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "firstSetRowChanged()", connection );

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
  else if( hb_pcount() == 0 )
  {
    QHCandlestickModelMapper * sender = (QHCandlestickModelMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "firstSetRowChanged()" );

      QObject::disconnect( Signals2_get_connection( sender, "firstSetRowChanged()" ) );

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
#endif
}

/*
void highColumnChanged()
*/
HB_FUNC_STATIC( QHCANDLESTICKMODELMAPPER_ONHIGHCOLUMNCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  if( hb_pcount() == 1 )
  {
    QHCandlestickModelMapper * sender = (QHCandlestickModelMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "highColumnChanged()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QHCandlestickModelMapper::highColumnChanged, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "highColumnChanged()" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QHCANDLESTICKMODELMAPPER" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "highColumnChanged()", connection );

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
  else if( hb_pcount() == 0 )
  {
    QHCandlestickModelMapper * sender = (QHCandlestickModelMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "highColumnChanged()" );

      QObject::disconnect( Signals2_get_connection( sender, "highColumnChanged()" ) );

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
#endif
}

/*
void lastSetRowChanged()
*/
HB_FUNC_STATIC( QHCANDLESTICKMODELMAPPER_ONLASTSETROWCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  if( hb_pcount() == 1 )
  {
    QHCandlestickModelMapper * sender = (QHCandlestickModelMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "lastSetRowChanged()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QHCandlestickModelMapper::lastSetRowChanged, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "lastSetRowChanged()" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QHCANDLESTICKMODELMAPPER" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "lastSetRowChanged()", connection );

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
  else if( hb_pcount() == 0 )
  {
    QHCandlestickModelMapper * sender = (QHCandlestickModelMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "lastSetRowChanged()" );

      QObject::disconnect( Signals2_get_connection( sender, "lastSetRowChanged()" ) );

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
#endif
}

/*
void lowColumnChanged()
*/
HB_FUNC_STATIC( QHCANDLESTICKMODELMAPPER_ONLOWCOLUMNCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  if( hb_pcount() == 1 )
  {
    QHCandlestickModelMapper * sender = (QHCandlestickModelMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "lowColumnChanged()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QHCandlestickModelMapper::lowColumnChanged, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "lowColumnChanged()" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QHCANDLESTICKMODELMAPPER" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "lowColumnChanged()", connection );

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
  else if( hb_pcount() == 0 )
  {
    QHCandlestickModelMapper * sender = (QHCandlestickModelMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "lowColumnChanged()" );

      QObject::disconnect( Signals2_get_connection( sender, "lowColumnChanged()" ) );

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
#endif
}

/*
void openColumnChanged()
*/
HB_FUNC_STATIC( QHCANDLESTICKMODELMAPPER_ONOPENCOLUMNCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  if( hb_pcount() == 1 )
  {
    QHCandlestickModelMapper * sender = (QHCandlestickModelMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "openColumnChanged()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QHCandlestickModelMapper::openColumnChanged, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "openColumnChanged()" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QHCANDLESTICKMODELMAPPER" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "openColumnChanged()", connection );

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
  else if( hb_pcount() == 0 )
  {
    QHCandlestickModelMapper * sender = (QHCandlestickModelMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "openColumnChanged()" );

      QObject::disconnect( Signals2_get_connection( sender, "openColumnChanged()" ) );

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
#endif
}

/*
void timestampColumnChanged()
*/
HB_FUNC_STATIC( QHCANDLESTICKMODELMAPPER_ONTIMESTAMPCOLUMNCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  if( hb_pcount() == 1 )
  {
    QHCandlestickModelMapper * sender = (QHCandlestickModelMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "timestampColumnChanged()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QHCandlestickModelMapper::timestampColumnChanged, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "timestampColumnChanged()" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QHCANDLESTICKMODELMAPPER" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "timestampColumnChanged()", connection );

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
  else if( hb_pcount() == 0 )
  {
    QHCandlestickModelMapper * sender = (QHCandlestickModelMapper *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "timestampColumnChanged()" );

      QObject::disconnect( Signals2_get_connection( sender, "timestampColumnChanged()" ) );

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
#endif
}

#pragma ENDDUMP
