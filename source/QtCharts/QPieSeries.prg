/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QPIESLICE
#endif

CLASS QPieSeries INHERIT QAbstractSeries

   METHOD new
   METHOD delete
   METHOD horizontalPosition
   METHOD setHorizontalPosition
   METHOD verticalPosition
   METHOD setVerticalPosition
   METHOD pieSize
   METHOD setPieSize
   METHOD pieStartAngle
   METHOD setPieStartAngle
   METHOD pieEndAngle
   METHOD setPieEndAngle
   METHOD count
   METHOD sum
   METHOD holeSize
   METHOD setHoleSize
   METHOD type
   METHOD append
   METHOD insert
   METHOD remove
   METHOD take
   METHOD clear
   METHOD slices
   METHOD isEmpty
   METHOD setLabelsVisible
   METHOD setLabelsPosition

   METHOD onAdded
   METHOD onClicked
   METHOD onCountChanged
   METHOD onDoubleClicked
   METHOD onHovered
   METHOD onPressed
   METHOD onReleased
   METHOD onRemoved
   METHOD onSumChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPieSeries
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QPieSeries>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
#include <QPieSeries>
#endif
#endif

using namespace QtCharts;

/*
explicit QPieSeries(QObject *parent = Q_NULLPTR)
*/
HB_FUNC_STATIC( QPIESERIES_NEW )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QPieSeries * o = new QPieSeries ( OPQOBJECT(1,Q_NULLPTR) );
    _qt5xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
virtual ~QPieSeries()
*/
HB_FUNC_STATIC( QPIESERIES_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
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
qreal horizontalPosition() const
*/
HB_FUNC_STATIC( QPIESERIES_HORIZONTALPOSITION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->horizontalPosition () );
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
void setHorizontalPosition(qreal relativePosition)
*/
HB_FUNC_STATIC( QPIESERIES_SETHORIZONTALPOSITION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setHorizontalPosition ( PQREAL(1) );
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
qreal verticalPosition() const
*/
HB_FUNC_STATIC( QPIESERIES_VERTICALPOSITION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->verticalPosition () );
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
void setVerticalPosition(qreal relativePosition)
*/
HB_FUNC_STATIC( QPIESERIES_SETVERTICALPOSITION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setVerticalPosition ( PQREAL(1) );
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
qreal pieSize() const
*/
HB_FUNC_STATIC( QPIESERIES_PIESIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->pieSize () );
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
void setPieSize(qreal relativeSize)
*/
HB_FUNC_STATIC( QPIESERIES_SETPIESIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setPieSize ( PQREAL(1) );
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
qreal pieStartAngle() const
*/
HB_FUNC_STATIC( QPIESERIES_PIESTARTANGLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->pieStartAngle () );
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
void setPieStartAngle(qreal startAngle)
*/
HB_FUNC_STATIC( QPIESERIES_SETPIESTARTANGLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setPieStartAngle ( PQREAL(1) );
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
qreal pieEndAngle() const
*/
HB_FUNC_STATIC( QPIESERIES_PIEENDANGLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->pieEndAngle () );
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
void setPieEndAngle(qreal endAngle)
*/
HB_FUNC_STATIC( QPIESERIES_SETPIEENDANGLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setPieEndAngle ( PQREAL(1) );
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
HB_FUNC_STATIC( QPIESERIES_COUNT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->count () );
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
qreal sum() const
*/
HB_FUNC_STATIC( QPIESERIES_SUM )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->sum () );
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
qreal holeSize() const
*/
HB_FUNC_STATIC( QPIESERIES_HOLESIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->holeSize () );
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
void setHoleSize(qreal holeSize)
*/
HB_FUNC_STATIC( QPIESERIES_SETHOLESIZE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setHoleSize ( PQREAL(1) );
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
QAbstractSeries::SeriesType type() const
*/
HB_FUNC_STATIC( QPIESERIES_TYPE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->type () );
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
bool append(QPieSlice *slice)
*/
void QPieSeries_append1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      RBOOL( obj->append ( PQPIESLICE(1) ) );
  }
#endif
}

/*
bool append(QList<QPieSlice *> slices)
*/
void QPieSeries_append2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
       QList<QPieSlice *> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
  par1 << (QPieSlice *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
      RBOOL( obj->append ( par1 ) );
  }
#endif
}

/*
QPieSlice *append(QString label, qreal value)
*/
void QPieSeries_append3 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      QPieSlice * ptr = obj->append ( PQSTRING(1), PQREAL(2) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QPIESLICE" );
  }
#endif
}

//[1]bool append(QPieSlice *slice)
//[2]bool append(QList<QPieSlice *> slices)
//[3]QPieSlice *append(QString label, qreal value)

HB_FUNC_STATIC( QPIESERIES_APPEND )
{
  if( ISNUMPAR(1) && ISQPIESLICE(1) )
  {
    QPieSeries_append1();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    QPieSeries_append2();
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISNUM(2) )
  {
    QPieSeries_append3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool insert(int index, QPieSlice *slice)
*/
HB_FUNC_STATIC( QPIESERIES_INSERT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISQPIESLICE(2) )
    {
#endif
      RBOOL( obj->insert ( PINT(1), PQPIESLICE(2) ) );
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
bool remove(QPieSlice *slice)
*/
HB_FUNC_STATIC( QPIESERIES_REMOVE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPIESLICE(1) )
    {
#endif
      RBOOL( obj->remove ( PQPIESLICE(1) ) );
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
bool take(QPieSlice *slice)
*/
HB_FUNC_STATIC( QPIESERIES_TAKE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPIESLICE(1) )
    {
#endif
      RBOOL( obj->take ( PQPIESLICE(1) ) );
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
void clear()
*/
HB_FUNC_STATIC( QPIESERIES_CLEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clear ();
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
QList<QPieSlice *> slices() const
*/
HB_FUNC_STATIC( QPIESERIES_SLICES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QPieSlice *> list = obj->slices ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QPIESLICE" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      int i;
      for(i=0;i<list.count();i++)
      {
        if( pDynSym )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QPieSlice *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QPIESLICE", HB_ERR_ARGS_BASEPARAMS );
        }
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
bool isEmpty() const
*/
HB_FUNC_STATIC( QPIESERIES_ISEMPTY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isEmpty () );
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
void setLabelsVisible(bool visible = true)
*/
HB_FUNC_STATIC( QPIESERIES_SETLABELSVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTLOG(1) )
    {
#endif
      obj->setLabelsVisible ( OPBOOL(1,true) );
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
void setLabelsPosition(QPieSlice::LabelPosition position)
*/
HB_FUNC_STATIC( QPIESERIES_SETLABELSPOSITION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  QPieSeries * obj = (QPieSeries *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setLabelsPosition ( (QPieSlice::LabelPosition) hb_parni(1) );
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

using namespace QtCharts;

/*
void added( QList<QPieSlice*> slices )
*/
HB_FUNC_STATIC( QPIESERIES_ONADDED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( hb_pcount() == 1 )
  {
    QPieSeries * sender = (QPieSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "added(QList<QPieSlice*>)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QPieSeries::added, 
                                                              [sender]
                                                              (QList<QPieSlice*> arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "added(QList<QPieSlice*>)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QPIESERIES" );
            PHB_DYNS pDynSym = hb_dynsymFindName( "QPIESLICE" );
            PHB_ITEM pArg1 = hb_itemArrayNew(0);
            int i;
            for(i=0;i<arg1.count();i++)
            {
              if( pDynSym )
              {
                hb_vmPushDynSym( pDynSym );
                hb_vmPushNil();
                hb_vmDo( 0 );
                PHB_ITEM pTempObject = hb_itemNew( NULL );
                hb_itemCopy( pTempObject, hb_stackReturnItem() );
                PHB_ITEM pTempItem = hb_itemNew( NULL );
                hb_itemPutPtr( pTempItem, (QPieSlice *) arg1 [i] );
                hb_objSendMsg( pTempObject, "NEWFROMPOINTER", 1, pTempItem );
                hb_arrayAddForward( pArg1, pTempObject );
                hb_itemRelease( pTempObject );
                hb_itemRelease( pTempItem );
              }
              else
              {
                hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QPIESLICE", HB_ERR_ARGS_BASEPARAMS );
              }
            }
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "added(QList<QPieSlice*>)", connection );

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
    QPieSeries * sender = (QPieSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "added(QList<QPieSlice*>)" );

      QObject::disconnect( Signals2_get_connection( sender, "added(QList<QPieSlice*>)" ) );

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
void clicked( QPieSlice * slice )
*/
HB_FUNC_STATIC( QPIESERIES_ONCLICKED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( hb_pcount() == 1 )
  {
    QPieSeries * sender = (QPieSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "clicked(QPieSlice*)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QPieSeries::clicked, 
                                                              [sender]
                                                              (QPieSlice * arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "clicked(QPieSlice*)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QPIESERIES" );
            PHB_ITEM pArg1 = Signals2_return_qobject( (QObject *) arg1, "QPIESLICE" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "clicked(QPieSlice*)", connection );

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
    QPieSeries * sender = (QPieSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "clicked(QPieSlice*)" );

      QObject::disconnect( Signals2_get_connection( sender, "clicked(QPieSlice*)" ) );

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
void countChanged()
*/
HB_FUNC_STATIC( QPIESERIES_ONCOUNTCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( hb_pcount() == 1 )
  {
    QPieSeries * sender = (QPieSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "countChanged()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QPieSeries::countChanged, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "countChanged()" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QPIESERIES" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "countChanged()", connection );

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
    QPieSeries * sender = (QPieSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "countChanged()" );

      QObject::disconnect( Signals2_get_connection( sender, "countChanged()" ) );

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
void doubleClicked( QPieSlice * slice )
*/
HB_FUNC_STATIC( QPIESERIES_ONDOUBLECLICKED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( hb_pcount() == 1 )
  {
    QPieSeries * sender = (QPieSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "doubleClicked(QPieSlice*)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QPieSeries::doubleClicked, 
                                                              [sender]
                                                              (QPieSlice * arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "doubleClicked(QPieSlice*)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QPIESERIES" );
            PHB_ITEM pArg1 = Signals2_return_qobject( (QObject *) arg1, "QPIESLICE" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "doubleClicked(QPieSlice*)", connection );

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
    QPieSeries * sender = (QPieSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "doubleClicked(QPieSlice*)" );

      QObject::disconnect( Signals2_get_connection( sender, "doubleClicked(QPieSlice*)" ) );

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
void hovered( QPieSlice * slice, bool state )
*/
HB_FUNC_STATIC( QPIESERIES_ONHOVERED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( hb_pcount() == 1 )
  {
    QPieSeries * sender = (QPieSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "hovered(QPieSlice*,bool)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QPieSeries::hovered, 
                                                              [sender]
                                                              (QPieSlice * arg1, bool arg2) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "hovered(QPieSlice*,bool)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QPIESERIES" );
            PHB_ITEM pArg1 = Signals2_return_qobject( (QObject *) arg1, "QPIESLICE" );
            PHB_ITEM pArg2 = hb_itemPutL( NULL, arg2 );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
          }

        });

        Signals2_store_connection( sender, "hovered(QPieSlice*,bool)", connection );

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
    QPieSeries * sender = (QPieSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "hovered(QPieSlice*,bool)" );

      QObject::disconnect( Signals2_get_connection( sender, "hovered(QPieSlice*,bool)" ) );

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
void pressed( QPieSlice * slice )
*/
HB_FUNC_STATIC( QPIESERIES_ONPRESSED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( hb_pcount() == 1 )
  {
    QPieSeries * sender = (QPieSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "pressed(QPieSlice*)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QPieSeries::pressed, 
                                                              [sender]
                                                              (QPieSlice * arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "pressed(QPieSlice*)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QPIESERIES" );
            PHB_ITEM pArg1 = Signals2_return_qobject( (QObject *) arg1, "QPIESLICE" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "pressed(QPieSlice*)", connection );

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
    QPieSeries * sender = (QPieSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "pressed(QPieSlice*)" );

      QObject::disconnect( Signals2_get_connection( sender, "pressed(QPieSlice*)" ) );

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
void released( QPieSlice * slice )
*/
HB_FUNC_STATIC( QPIESERIES_ONRELEASED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( hb_pcount() == 1 )
  {
    QPieSeries * sender = (QPieSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "released(QPieSlice*)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QPieSeries::released, 
                                                              [sender]
                                                              (QPieSlice * arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "released(QPieSlice*)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QPIESERIES" );
            PHB_ITEM pArg1 = Signals2_return_qobject( (QObject *) arg1, "QPIESLICE" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "released(QPieSlice*)", connection );

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
    QPieSeries * sender = (QPieSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "released(QPieSlice*)" );

      QObject::disconnect( Signals2_get_connection( sender, "released(QPieSlice*)" ) );

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
void removed( QList<QPieSlice*> slices )
*/
HB_FUNC_STATIC( QPIESERIES_ONREMOVED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( hb_pcount() == 1 )
  {
    QPieSeries * sender = (QPieSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "removed(QList<QPieSlice*>)" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QPieSeries::removed, 
                                                              [sender]
                                                              (QList<QPieSlice*> arg1) {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "removed(QList<QPieSlice*>)" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QPIESERIES" );
            PHB_DYNS pDynSym = hb_dynsymFindName( "QPIESLICE" );
            PHB_ITEM pArg1 = hb_itemArrayNew(0);
            int i;
            for(i=0;i<arg1.count();i++)
            {
              if( pDynSym )
              {
                hb_vmPushDynSym( pDynSym );
                hb_vmPushNil();
                hb_vmDo( 0 );
                PHB_ITEM pTempObject = hb_itemNew( NULL );
                hb_itemCopy( pTempObject, hb_stackReturnItem() );
                PHB_ITEM pTempItem = hb_itemNew( NULL );
                hb_itemPutPtr( pTempItem, (QPieSlice *) arg1 [i] );
                hb_objSendMsg( pTempObject, "NEWFROMPOINTER", 1, pTempItem );
                hb_arrayAddForward( pArg1, pTempObject );
                hb_itemRelease( pTempObject );
                hb_itemRelease( pTempItem );
              }
              else
              {
                hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QPIESLICE", HB_ERR_ARGS_BASEPARAMS );
              }
            }
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals2_store_connection( sender, "removed(QList<QPieSlice*>)", connection );

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
    QPieSeries * sender = (QPieSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "removed(QList<QPieSlice*>)" );

      QObject::disconnect( Signals2_get_connection( sender, "removed(QList<QPieSlice*>)" ) );

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
void sumChanged()
*/
HB_FUNC_STATIC( QPIESERIES_ONSUMCHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,7,0))
  if( hb_pcount() == 1 )
  {
    QPieSeries * sender = (QPieSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "sumChanged()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QPieSeries::sumChanged, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "sumChanged()" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QPIESERIES" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "sumChanged()", connection );

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
    QPieSeries * sender = (QPieSeries *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "sumChanged()" );

      QObject::disconnect( Signals2_get_connection( sender, "sumChanged()" ) );

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
