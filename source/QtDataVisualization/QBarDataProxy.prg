/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBAR3DSERIES
REQUEST QBARDATAITEM
#endif

CLASS QBarDataProxy INHERIT QAbstractDataProxy

   METHOD new
   METHOD delete
   METHOD rowCount
   METHOD rowLabels
   METHOD setRowLabels
   METHOD columnLabels
   METHOD setColumnLabels
   METHOD series
   METHOD itemAt
   METHOD resetArray
   METHOD setRow
   METHOD setRows
   METHOD setItem
   METHOD addRow
   METHOD addRows
   METHOD insertRow
   METHOD insertRows
   METHOD removeRows

   METHOD onArrayReset
   METHOD onColumnLabelsChanged
   METHOD onItemChanged
   METHOD onRowCountChanged
   METHOD onRowLabelsChanged
   METHOD onRowsAdded
   METHOD onRowsChanged
   METHOD onRowsInserted
   METHOD onRowsRemoved
   METHOD onSeriesChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QBarDataProxy
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtDataVisualization/QBarDataProxy>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtDataVisualization/QBarDataProxy>
#endif
#endif

using namespace QtDataVisualization;

#include <QtDataVisualization/QBar3DSeries>

/*
explicit QBarDataProxy(QObject *parent = nullptr)
*/
HB_FUNC_STATIC( QBARDATAPROXY_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    auto obj = new QBarDataProxy( OPQOBJECT(1,nullptr) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
explicit QBarDataProxy(QBarDataProxyPrivate *d, QObject *parent = nullptr) [protected]
*/

/*
virtual ~QBarDataProxy()
*/
HB_FUNC_STATIC( QBARDATAPROXY_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

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
int rowCount() const
*/
HB_FUNC_STATIC( QBARDATAPROXY_ROWCOUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->rowCount() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
QStringList rowLabels() const
*/
HB_FUNC_STATIC( QBARDATAPROXY_ROWLABELS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->rowLabels() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setRowLabels(const QStringList &labels)
*/
HB_FUNC_STATIC( QBARDATAPROXY_SETROWLABELS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
#endif
      obj->setRowLabels( PQSTRINGLIST(1) );
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
QStringList columnLabels() const
*/
HB_FUNC_STATIC( QBARDATAPROXY_COLUMNLABELS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->columnLabels() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
void setColumnLabels(const QStringList &labels)
*/
HB_FUNC_STATIC( QBARDATAPROXY_SETCOLUMNLABELS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
#endif
      obj->setColumnLabels( PQSTRINGLIST(1) );
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
QBar3DSeries *series() const
*/
HB_FUNC_STATIC( QBARDATAPROXY_SERIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QBar3DSeries * ptr = obj->series();
      Qt5xHb::createReturnQObjectClass( ptr, "QBAR3DSERIES" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
}

/*
const QBarDataArray *array() const
*/

/*
const QBarDataRow *rowAt(int rowIndex) const
*/

/*
const QBarDataItem *itemAt(int rowIndex, int columnIndex) const
*/
void QBarDataProxy_itemAt1()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    const QBarDataItem * ptr = obj->itemAt( PINT(1), PINT(2) );
    Qt5xHb::createReturnClass( ptr, "QBARDATAITEM", false );
  }
#endif
}

/*
const QBarDataItem *itemAt(const QPoint &position) const
*/
void QBarDataProxy_itemAt2()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    const QBarDataItem * ptr = obj->itemAt( *PQPOINT(1) );
    Qt5xHb::createReturnClass( ptr, "QBARDATAITEM", false );
  }
#endif
}

/*
[1]const QBarDataItem *itemAt(int rowIndex, int columnIndex) const
[2]const QBarDataItem *itemAt(const QPoint &position) const
*/

HB_FUNC_STATIC( QBARDATAPROXY_ITEMAT )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QBarDataProxy_itemAt1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QBarDataProxy_itemAt2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void resetArray()
*/

/*
void resetArray(QBarDataArray *newArray)
*/

/*
void resetArray(QBarDataArray *newArray, const QStringList &rowLabels, const QStringList &columnLabels)
*/

/*
[1]void resetArray()
[2]void resetArray(QBarDataArray *newArray)
[3]void resetArray(QBarDataArray *newArray, const QStringList &rowLabels, const QStringList &columnLabels)
*/

HB_FUNC_STATIC( QBARDATAPROXY_RESETARRAY )
{
}

/*
void setRow(int rowIndex, QBarDataRow *row)
*/

/*
void setRow(int rowIndex, QBarDataRow *row, const QString &label)
*/

/*
[1]void setRow(int rowIndex, QBarDataRow *row)
[2]void setRow(int rowIndex, QBarDataRow *row, const QString &label)
*/

HB_FUNC_STATIC( QBARDATAPROXY_SETROW )
{
}

/*
void setRows(int rowIndex, const QBarDataArray &rows)
*/

/*
void setRows(int rowIndex, const QBarDataArray &rows, const QStringList &labels)
*/

/*
[1]void setRows(int rowIndex, const QBarDataArray &rows)
[2]void setRows(int rowIndex, const QBarDataArray &rows, const QStringList &labels)
*/

HB_FUNC_STATIC( QBARDATAPROXY_SETROWS )
{
}

/*
void setItem(int rowIndex, int columnIndex, const QBarDataItem &item)
*/
void QBarDataProxy_setItem1()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->setItem( PINT(1), PINT(2), *PQBARDATAITEM(3) );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setItem(const QPoint &position, const QBarDataItem &item)
*/
void QBarDataProxy_setItem2()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->setItem( *PQPOINT(1), *PQBARDATAITEM(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
[1]void setItem(int rowIndex, int columnIndex, const QBarDataItem &item)
[2]void setItem(const QPoint &position, const QBarDataItem &item)
*/

HB_FUNC_STATIC( QBARDATAPROXY_SETITEM )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISQBARDATAITEM(3) )
  {
    QBarDataProxy_setItem1();
  }
  else if( ISNUMPAR(2) && ISQPOINT(1) && ISQBARDATAITEM(2) )
  {
    QBarDataProxy_setItem2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int addRow(QBarDataRow *row)
*/

/*
int addRow(QBarDataRow *row, const QString &label)
*/

/*
[1]int addRow(QBarDataRow *row)
[2]int addRow(QBarDataRow *row, const QString &label)
*/

HB_FUNC_STATIC( QBARDATAPROXY_ADDROW )
{
}

/*
int addRows(const QBarDataArray &rows)
*/

/*
int addRows(const QBarDataArray &rows, const QStringList &labels)
*/

/*
[1]int addRows(const QBarDataArray &rows)
[2]int addRows(const QBarDataArray &rows, const QStringList &labels)
*/

HB_FUNC_STATIC( QBARDATAPROXY_ADDROWS )
{
}

/*
void insertRow(int rowIndex, QBarDataRow *row)
*/

/*
void insertRow(int rowIndex, QBarDataRow *row, const QString &label)
*/

/*
[1]void insertRow(int rowIndex, QBarDataRow *row)
[2]void insertRow(int rowIndex, QBarDataRow *row, const QString &label)
*/

HB_FUNC_STATIC( QBARDATAPROXY_INSERTROW )
{
}

/*
void insertRows(int rowIndex, const QBarDataArray &rows)
*/

/*
void insertRows(int rowIndex, const QBarDataArray &rows, const QStringList &labels)
*/

/*
[1]void insertRows(int rowIndex, const QBarDataArray &rows)
[2]void insertRows(int rowIndex, const QBarDataArray &rows, const QStringList &labels)
*/

HB_FUNC_STATIC( QBARDATAPROXY_INSERTROWS )
{
}

/*
void removeRows(int rowIndex, int removeCount, bool removeLabels = true)
*/
HB_FUNC_STATIC( QBARDATAPROXY_REMOVEROWS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && ISOPTLOG(3) )
    {
#endif
      obj->removeRows( PINT(1), PINT(2), OPBOOL(3,true) );
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
void arrayReset()
*/
HB_FUNC_STATIC( QBARDATAPROXY_ONARRAYRESET )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (QBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("arrayReset()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QBarDataProxy::arrayReset, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QBARDATAPROXY" );
            hb_vmEvalBlockV( cb, 1, pSender );
            hb_itemRelease( pSender );
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

/*
void columnLabelsChanged()
*/
HB_FUNC_STATIC( QBARDATAPROXY_ONCOLUMNLABELSCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (QBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("columnLabelsChanged()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QBarDataProxy::columnLabelsChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QBARDATAPROXY" );
            hb_vmEvalBlockV( cb, 1, pSender );
            hb_itemRelease( pSender );
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

/*
void itemChanged( int rowIndex, int columnIndex )
*/
HB_FUNC_STATIC( QBARDATAPROXY_ONITEMCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (QBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("itemChanged(int,int)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QBarDataProxy::itemChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (int arg1, int arg2) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QBARDATAPROXY" );
            PHB_ITEM pArg1 = hb_itemPutNI( nullptr, arg1 );
            PHB_ITEM pArg2 = hb_itemPutNI( nullptr, arg2 );
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

/*
void rowCountChanged( int count )
*/
HB_FUNC_STATIC( QBARDATAPROXY_ONROWCOUNTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (QBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("rowCountChanged(int)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QBarDataProxy::rowCountChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (int arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QBARDATAPROXY" );
            PHB_ITEM pArg1 = hb_itemPutNI( nullptr, arg1 );
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
#else
  hb_retl( false );
#endif
}

/*
void rowLabelsChanged()
*/
HB_FUNC_STATIC( QBARDATAPROXY_ONROWLABELSCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (QBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("rowLabelsChanged()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QBarDataProxy::rowLabelsChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QBARDATAPROXY" );
            hb_vmEvalBlockV( cb, 1, pSender );
            hb_itemRelease( pSender );
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

/*
void rowsAdded( int startIndex, int count )
*/
HB_FUNC_STATIC( QBARDATAPROXY_ONROWSADDED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (QBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("rowsAdded(int,int)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QBarDataProxy::rowsAdded, 
                                                              [sender, indexOfCodeBlock]
                                                              (int arg1, int arg2) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QBARDATAPROXY" );
            PHB_ITEM pArg1 = hb_itemPutNI( nullptr, arg1 );
            PHB_ITEM pArg2 = hb_itemPutNI( nullptr, arg2 );
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

/*
void rowsChanged( int startIndex, int count )
*/
HB_FUNC_STATIC( QBARDATAPROXY_ONROWSCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (QBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("rowsChanged(int,int)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QBarDataProxy::rowsChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (int arg1, int arg2) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QBARDATAPROXY" );
            PHB_ITEM pArg1 = hb_itemPutNI( nullptr, arg1 );
            PHB_ITEM pArg2 = hb_itemPutNI( nullptr, arg2 );
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

/*
void rowsInserted( int startIndex, int count )
*/
HB_FUNC_STATIC( QBARDATAPROXY_ONROWSINSERTED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (QBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("rowsInserted(int,int)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QBarDataProxy::rowsInserted, 
                                                              [sender, indexOfCodeBlock]
                                                              (int arg1, int arg2) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QBARDATAPROXY" );
            PHB_ITEM pArg1 = hb_itemPutNI( nullptr, arg1 );
            PHB_ITEM pArg2 = hb_itemPutNI( nullptr, arg2 );
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

/*
void rowsRemoved( int startIndex, int count )
*/
HB_FUNC_STATIC( QBARDATAPROXY_ONROWSREMOVED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (QBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("rowsRemoved(int,int)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QBarDataProxy::rowsRemoved, 
                                                              [sender, indexOfCodeBlock]
                                                              (int arg1, int arg2) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QBARDATAPROXY" );
            PHB_ITEM pArg1 = hb_itemPutNI( nullptr, arg1 );
            PHB_ITEM pArg2 = hb_itemPutNI( nullptr, arg2 );
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

/*
void seriesChanged( QBar3DSeries * series )
*/
HB_FUNC_STATIC( QBARDATAPROXY_ONSERIESCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (QBarDataProxy *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("seriesChanged(QBar3DSeries*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QBarDataProxy::seriesChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (QBar3DSeries * arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QBARDATAPROXY" );
            PHB_ITEM pArg1 = Qt5xHb::Signals_return_qobject( (QObject *) arg1, "QBAR3DSERIES" );
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
#else
  hb_retl( false );
#endif
}

#pragma ENDDUMP
