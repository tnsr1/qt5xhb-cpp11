/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBRUSH
REQUEST QFONT
REQUEST QICON
REQUEST QLOCALE
REQUEST QMODELINDEX
REQUEST QSIZE
REQUEST QWIDGET
#endif

CLASS QStyleOptionViewItem INHERIT QStyleOption

   METHOD new
   METHOD displayAlignment
   METHOD setDisplayAlignment
   METHOD decorationAlignment
   METHOD setDecorationAlignment
   METHOD textElideMode
   METHOD setTextElideMode
   METHOD decorationPosition
   METHOD setDecorationPosition
   METHOD decorationSize
   METHOD setDecorationSize
   METHOD font
   METHOD setFont
   METHOD showDecorationSelected
   METHOD setShowDecorationSelected
   METHOD features
   METHOD setFeatures
   METHOD locale
   METHOD setLocale
   METHOD widget
   METHOD setWidget
   METHOD index
   METHOD setIndex
   METHOD checkState
   METHOD setCheckState
   METHOD icon
   METHOD setIcon
   METHOD text
   METHOD setText
   METHOD viewItemPosition
   METHOD setViewItemPosition
   METHOD backgroundBrush
   METHOD setBackgroundBrush

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyleOptionViewItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QStyleOptionViewItem>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QStyleOptionViewItem>
#endif

/*
QStyleOptionViewItem()
*/
void QStyleOptionViewItem_new1()
{
  auto obj = new QStyleOptionViewItem();
  Qt5xHb::returnNewObject( obj, true );
}

/*
QStyleOptionViewItem(const QStyleOptionViewItem &other)
*/
void QStyleOptionViewItem_new2()
{
  auto obj = new QStyleOptionViewItem( *PQSTYLEOPTIONVIEWITEM(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QStyleOptionViewItem(int version) [protected]
*/

/*
[1]QStyleOptionViewItem()
[2]QStyleOptionViewItem(const QStyleOptionViewItem &other) : QStyleOption(Version, Type)
[3]QStyleOptionViewItem(int version) [protected]
*/

HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_NEW )
{
  if( ISNUMPAR(0) )
  {
    QStyleOptionViewItem_new1();
  }
  else if( ISNUMPAR(1) && ISQSTYLEOPTIONVIEWITEM(1) )
  {
    QStyleOptionViewItem_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
Qt::Alignment displayAlignment
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_DISPLAYALIGNMENT )
{
  auto obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->displayAlignment );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_SETDISPLAYALIGNMENT )
{
  auto obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->displayAlignment= (Qt::Alignment) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::Alignment decorationAlignment
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_DECORATIONALIGNMENT )
{
  auto obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->decorationAlignment );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_SETDECORATIONALIGNMENT )
{
  auto obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->decorationAlignment= (Qt::Alignment) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::TextElideMode textElideMode
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_TEXTELIDEMODE )
{
  auto obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->textElideMode );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_SETTEXTELIDEMODE )
{
  auto obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->textElideMode= (Qt::TextElideMode) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Position decorationPosition
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_DECORATIONPOSITION )
{
  auto obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->decorationPosition );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_SETDECORATIONPOSITION )
{
  auto obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->decorationPosition= (QStyleOptionViewItem::Position) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize decorationSize
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_DECORATIONSIZE )
{
  auto obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      auto ptr = new QSize( obj->decorationSize );
      Qt5xHb::createReturnClass( ptr, "QSIZE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_SETDECORATIONSIZE )
{
  auto obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISQSIZE(1) )
    {
      obj->decorationSize= *PQSIZE(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QFont font
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_FONT )
{
  auto obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      auto ptr = new QFont( obj->font );
      Qt5xHb::createReturnClass( ptr, "QFONT", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_SETFONT )
{
  auto obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISQFONT(1) )
    {
      obj->font= *PQFONT(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool showDecorationSelected
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_SHOWDECORATIONSELECTED )
{
  auto obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->showDecorationSelected );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_SETSHOWDECORATIONSELECTED )
{
  auto obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->showDecorationSelected= PBOOL(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
ViewItemFeatures features
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_FEATURES )
{
  auto obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->features );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_SETFEATURES )
{
  auto obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->features= (QStyleOptionViewItem::ViewItemFeatures) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QLocale locale
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_LOCALE )
{
  auto obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      auto ptr = new QLocale( obj->locale );
      Qt5xHb::createReturnClass( ptr, "QLOCALE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_SETLOCALE )
{
  auto obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISQLOCALE(1) )
    {
      obj->locale= *PQLOCALE(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
const QWidget *widget
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_WIDGET )
{
  auto obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      const QWidget * ptr = obj->widget;
      Qt5xHb::createReturnQWidgetClass( ptr, "QWIDGET" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_SETWIDGET )
{
  auto obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
      obj->widget= PQWIDGET(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QModelIndex index
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_INDEX )
{
  auto obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      auto ptr = new QModelIndex( obj->index );
      Qt5xHb::createReturnClass( ptr, "QMODELINDEX", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_SETINDEX )
{
  auto obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISQMODELINDEX(1) )
    {
      obj->index= *PQMODELINDEX(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Qt::CheckState checkState
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_CHECKSTATE )
{
  auto obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->checkState );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_SETCHECKSTATE )
{
  auto obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->checkState= (Qt::CheckState) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QIcon icon
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_ICON )
{
  auto obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      auto ptr = new QIcon( obj->icon );
      Qt5xHb::createReturnClass( ptr, "QICON", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_SETICON )
{
  auto obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISQICON(1) )
    {
      obj->icon= *PQICON(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString text
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_TEXT )
{
  auto obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->text );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_SETTEXT )
{
  auto obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->text= PQSTRING(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
ViewItemPosition viewItemPosition
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_VIEWITEMPOSITION )
{
  auto obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      RENUM( obj->viewItemPosition );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_SETVIEWITEMPOSITION )
{
  auto obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->viewItemPosition= (QStyleOptionViewItem::ViewItemPosition) hb_parni(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QBrush backgroundBrush
*/
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_BACKGROUNDBRUSH )
{
  auto obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(0) )
    {
      auto ptr = new QBrush( obj->backgroundBrush );
      Qt5xHb::createReturnClass( ptr, "QBRUSH", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}
HB_FUNC_STATIC( QSTYLEOPTIONVIEWITEM_SETBACKGROUNDBRUSH )
{
  auto obj = (QStyleOptionViewItem *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    if( ISNUMPAR(1) && ISQBRUSH(1) )
    {
      obj->backgroundBrush= *PQBRUSH(1);
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
