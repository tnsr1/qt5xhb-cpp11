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

CLASS QBarCategoryAxis INHERIT QAbstractAxis

   METHOD new
   METHOD delete
   METHOD categories
   METHOD setCategories
   METHOD count
   METHOD min
   METHOD setMin
   METHOD max
   METHOD setMax
   METHOD type
   METHOD append
   METHOD remove
   METHOD insert
   METHOD replace
   METHOD clear
   METHOD at
   METHOD setRange

   METHOD onCategoriesChanged
   METHOD onCountChanged
   METHOD onMaxChanged
   METHOD onMinChanged
   METHOD onRangeChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QBarCategoryAxis
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QBarCategoryAxis>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QtCharts/QBarCategoryAxis>
#endif
#endif

using namespace QtCharts;

/*
explicit QBarCategoryAxis(QObject *parent = nullptr)
*/
HB_FUNC_STATIC( QBARCATEGORYAXIS_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    auto obj = new QBarCategoryAxis( OPQOBJECT(1,nullptr) );
    Qt5xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
QBarCategoryAxis(QBarCategoryAxisPrivate &d, QObject *parent = nullptr) [protected]
*/

/*
~QBarCategoryAxis()
*/
HB_FUNC_STATIC( QBARCATEGORYAXIS_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QBarCategoryAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    Qt5xHb::Events_disconnect_all_events( obj, true );
    Qt5xHb::Signals_disconnect_all_signals( obj, true );
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
QStringList categories()
*/
HB_FUNC_STATIC( QBARCATEGORYAXIS_CATEGORIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QBarCategoryAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->categories() );
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
void setCategories(const QStringList &categories)
*/
HB_FUNC_STATIC( QBARCATEGORYAXIS_SETCATEGORIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QBarCategoryAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
#endif
      obj->setCategories( PQSTRINGLIST(1) );
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
int count() const
*/
HB_FUNC_STATIC( QBARCATEGORYAXIS_COUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QBarCategoryAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->count() );
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
QString min() const
*/
HB_FUNC_STATIC( QBARCATEGORYAXIS_MIN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QBarCategoryAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->min() );
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
void setMin(const QString &minCategory)
*/
HB_FUNC_STATIC( QBARCATEGORYAXIS_SETMIN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QBarCategoryAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setMin( PQSTRING(1) );
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
QString max() const
*/
HB_FUNC_STATIC( QBARCATEGORYAXIS_MAX )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QBarCategoryAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->max() );
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
void setMax(const QString &maxCategory)
*/
HB_FUNC_STATIC( QBARCATEGORYAXIS_SETMAX )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QBarCategoryAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setMax( PQSTRING(1) );
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
AxisType type() const
*/
HB_FUNC_STATIC( QBARCATEGORYAXIS_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QBarCategoryAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->type() );
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
void append(const QStringList &categories)
*/
void QBarCategoryAxis_append1()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QBarCategoryAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->append( PQSTRINGLIST(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void append(const QString &category)
*/
void QBarCategoryAxis_append2()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QBarCategoryAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->append( PQSTRING(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
[1]void append(const QStringList &categories)
[2]void append(const QString &category)
*/

HB_FUNC_STATIC( QBARCATEGORYAXIS_APPEND )
{
  if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QBarCategoryAxis_append1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QBarCategoryAxis_append2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void remove(const QString &category)
*/
HB_FUNC_STATIC( QBARCATEGORYAXIS_REMOVE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QBarCategoryAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->remove( PQSTRING(1) );
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
void insert(int index, const QString &category)
*/
HB_FUNC_STATIC( QBARCATEGORYAXIS_INSERT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QBarCategoryAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
    {
#endif
      obj->insert( PINT(1), PQSTRING(2) );
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
void replace(const QString &oldCategory, const QString &newCategory)
*/
HB_FUNC_STATIC( QBARCATEGORYAXIS_REPLACE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QBarCategoryAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
    {
#endif
      obj->replace( PQSTRING(1), PQSTRING(2) );
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
Q_INVOKABLE void clear()
*/
HB_FUNC_STATIC( QBARCATEGORYAXIS_CLEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QBarCategoryAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clear();
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
QString at(int index) const
*/
HB_FUNC_STATIC( QBARCATEGORYAXIS_AT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QBarCategoryAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RQSTRING( obj->at( PINT(1) ) );
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
void setRange(const QString &minCategory, const QString &maxCategory)
*/
HB_FUNC_STATIC( QBARCATEGORYAXIS_SETRANGE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto obj = (QBarCategoryAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
    {
#endif
      obj->setRange( PQSTRING(1), PQSTRING(2) );
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
void categoriesChanged()
*/
HB_FUNC_STATIC( QBARCATEGORYAXIS_ONCATEGORIESCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (QBarCategoryAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("categoriesChanged()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QBarCategoryAxis::categoriesChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QBARCATEGORYAXIS" );
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
void countChanged()
*/
HB_FUNC_STATIC( QBARCATEGORYAXIS_ONCOUNTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (QBarCategoryAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("countChanged()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QBarCategoryAxis::countChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QBARCATEGORYAXIS" );
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
void maxChanged( const QString & max )
*/
HB_FUNC_STATIC( QBARCATEGORYAXIS_ONMAXCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (QBarCategoryAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("maxChanged(QString)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QBarCategoryAxis::maxChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QString & arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QBARCATEGORYAXIS" );
            PHB_ITEM pArg1 = hb_itemPutC( NULL, QSTRINGTOSTRING(arg1) );
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
void minChanged( const QString & min )
*/
HB_FUNC_STATIC( QBARCATEGORYAXIS_ONMINCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (QBarCategoryAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("minChanged(QString)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QBarCategoryAxis::minChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QString & arg1) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QBARCATEGORYAXIS" );
            PHB_ITEM pArg1 = hb_itemPutC( NULL, QSTRINGTOSTRING(arg1) );
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
void rangeChanged( const QString & min, const QString & max )
*/
HB_FUNC_STATIC( QBARCATEGORYAXIS_ONRANGECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  auto sender = (QBarCategoryAxis *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("rangeChanged(QString,QString)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Qt5xHb::Signals_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QBarCategoryAxis::rangeChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QString & arg1, const QString & arg2) {
          PHB_ITEM cb = Qt5xHb::Signals_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Qt5xHb::Signals_return_qobject( (QObject *) sender, "QBARCATEGORYAXIS" );
            PHB_ITEM pArg1 = hb_itemPutC( NULL, QSTRINGTOSTRING(arg1) );
            PHB_ITEM pArg2 = hb_itemPutC( NULL, QSTRINGTOSTRING(arg2) );
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
