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

CLASS QStyleOptionToolBar INHERIT QStyleOption

   METHOD new
   METHOD positionOfLine
   METHOD setPositionOfLine
   METHOD positionWithinLine
   METHOD setPositionWithinLine
   METHOD toolBarArea
   METHOD setToolBarArea
   METHOD features
   METHOD setFeatures
   METHOD lineWidth
   METHOD setLineWidth
   METHOD midLineWidth
   METHOD setMidLineWidth

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStyleOptionToolBar
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QStyleOptionToolBar>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QStyleOptionToolBar>
#endif

/*
QStyleOptionToolBar()
*/
void QStyleOptionToolBar_new1 ()
{
  auto obj = new QStyleOptionToolBar ();
  Qt5xHb::returnNewObject( obj, true );
}

/*
QStyleOptionToolBar(const QStyleOptionToolBar &other)
*/
void QStyleOptionToolBar_new2 ()
{
  auto obj = new QStyleOptionToolBar ( *PQSTYLEOPTIONTOOLBAR(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QStyleOptionToolBar(int version) [protected]
*/

//[1]QStyleOptionToolBar()
//[2]QStyleOptionToolBar(const QStyleOptionToolBar &other)
//[3]QStyleOptionToolBar(int version) [protected]

HB_FUNC_STATIC( QSTYLEOPTIONTOOLBAR_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionToolBar_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONTOOLBAR(1) )
  {
    QStyleOptionToolBar_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
ToolBarPosition positionOfLine
*/
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBAR_POSITIONOFLINE )
{
  auto obj = (QStyleOptionToolBar *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->positionOfLine  );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBAR_SETPOSITIONOFLINE )
{
  auto obj = (QStyleOptionToolBar *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->positionOfLine = (QStyleOptionToolBar::ToolBarPosition) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
ToolBarPosition positionWithinLine
*/
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBAR_POSITIONWITHINLINE )
{
  auto obj = (QStyleOptionToolBar *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->positionWithinLine  );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBAR_SETPOSITIONWITHINLINE )
{
  auto obj = (QStyleOptionToolBar *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->positionWithinLine = (QStyleOptionToolBar::ToolBarPosition) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::ToolBarArea toolBarArea
*/
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBAR_TOOLBARAREA )
{
  auto obj = (QStyleOptionToolBar *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->toolBarArea  );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBAR_SETTOOLBARAREA )
{
  auto obj = (QStyleOptionToolBar *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->toolBarArea = (Qt::ToolBarArea) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
ToolBarFeatures features
*/
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBAR_FEATURES )
{
  auto obj = (QStyleOptionToolBar *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->features  );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBAR_SETFEATURES )
{
  auto obj = (QStyleOptionToolBar *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->features = (QStyleOptionToolBar::ToolBarFeatures) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int lineWidth
*/
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBAR_LINEWIDTH )
{
  auto obj = (QStyleOptionToolBar *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->lineWidth  );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBAR_SETLINEWIDTH )
{
  auto obj = (QStyleOptionToolBar *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->lineWidth = PINT(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
int midLineWidth
*/
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBAR_MIDLINEWIDTH )
{
  auto obj = (QStyleOptionToolBar *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->midLineWidth  );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONTOOLBAR_SETMIDLINEWIDTH )
{
  auto obj = (QStyleOptionToolBar *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->midLineWidth = PINT(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
