/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QICON
REQUEST QRECT
REQUEST QSIZE
#endif

CLASS QMenu INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD actionAt
   METHOD actionGeometry
   METHOD activeAction
   METHOD setActiveAction
   METHOD addAction
   METHOD addMenu
   METHOD addSeparator
   METHOD clear
   METHOD defaultAction
   METHOD setDefaultAction
   METHOD exec
   METHOD hideTearOffMenu
   METHOD icon
   METHOD setIcon
   METHOD insertMenu
   METHOD insertSeparator
   METHOD isEmpty
   METHOD isTearOffEnabled
   METHOD setTearOffEnabled
   METHOD isTearOffMenuVisible
   METHOD menuAction
   METHOD popup
   METHOD separatorsCollapsible
   METHOD setSeparatorsCollapsible
   METHOD title
   METHOD setTitle
   METHOD sizeHint
   METHOD wceMenu
   METHOD addSection
   METHOD insertSection
   METHOD setNoReplayFor
   METHOD setAsDockMenu
   METHOD toolTipsVisible
   METHOD setToolTipsVisible
   METHOD toNSMenu

   METHOD onAboutToHide
   METHOD onAboutToShow
   METHOD onHovered
   METHOD onTriggered

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QMenu
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWidgets/QMenu>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#include <QtWidgets/QMenu>
#endif

/*
explicit QMenu ( QWidget * parent = nullptr )
*/
void QMenu_new1 ()
{
  auto obj = new QMenu ( OPQWIDGET(1,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
explicit QMenu ( const QString & title, QWidget * parent = nullptr )
*/
void QMenu_new2 ()
{
  auto obj = new QMenu ( PQSTRING(1), OPQWIDGET(2,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
}

//[1]explicit QMenu ( QWidget * parent = nullptr )
//[2]explicit QMenu ( const QString & title, QWidget * parent = nullptr )

HB_FUNC_STATIC( QMENU_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QMenu_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQWIDGET(2) )
  {
    QMenu_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QMENU_DELETE )
{
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

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
}

/*
QAction * actionAt ( const QPoint & pt ) const
*/
HB_FUNC_STATIC( QMENU_ACTIONAT )
{
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPOINT(1) )
    {
#endif
      QAction * ptr = obj->actionAt ( *PQPOINT(1) );
      Qt5xHb::createReturnQObjectClass ( ptr, "QACTION" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QRect actionGeometry ( QAction * act ) const
*/
HB_FUNC_STATIC( QMENU_ACTIONGEOMETRY )
{
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQACTION(1) )
    {
#endif
      auto ptr = new QRect( obj->actionGeometry ( PQACTION(1) ) );
      Qt5xHb::createReturnClass ( ptr, "QRECT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QAction * activeAction () const
*/
HB_FUNC_STATIC( QMENU_ACTIVEACTION )
{
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAction * ptr = obj->activeAction ();
      Qt5xHb::createReturnQObjectClass ( ptr, "QACTION" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setActiveAction ( QAction * act )
*/
HB_FUNC_STATIC( QMENU_SETACTIVEACTION )
{
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQACTION(1) )
    {
#endif
      obj->setActiveAction ( PQACTION(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QAction * addAction ( const QString & text )
*/
void QMenu_addAction1 ()
{
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    QAction * ptr = obj->addAction ( PQSTRING(1) );
    Qt5xHb::createReturnQObjectClass ( ptr, "QACTION" );
  }
}

/*
QAction * addAction ( const QIcon & icon, const QString & text )
*/
void QMenu_addAction2 ()
{
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    QAction * ptr = obj->addAction ( ISOBJECT(1)? *(QIcon *) Qt5xHb::itemGetPtr(1) : QIcon(hb_parc(1)), PQSTRING(2) );
    Qt5xHb::createReturnQObjectClass ( ptr, "QACTION" );
  }
}

/*
QAction * addAction ( const QString & text, const QObject * receiver, const char * member, const QKeySequence & shortcut = 0 )
*/
void QMenu_addAction3 ()
{
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    QAction * ptr = obj->addAction ( PQSTRING(1), PQOBJECT(2), PCONSTCHAR(3), ISNIL(4)? 0 : *(QKeySequence *) Qt5xHb::itemGetPtr(4) );
    Qt5xHb::createReturnQObjectClass ( ptr, "QACTION" );
  }
}

/*
QAction * addAction ( const QIcon & icon, const QString & text, const QObject * receiver, const char * member, const QKeySequence & shortcut = 0 )
*/
void QMenu_addAction4 ()
{
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    QAction * ptr = obj->addAction ( ISOBJECT(1)? *(QIcon *) Qt5xHb::itemGetPtr(1) : QIcon(hb_parc(1)), PQSTRING(2), PQOBJECT(3), PCONSTCHAR(4), ISNIL(5)? 0 : *(QKeySequence *) Qt5xHb::itemGetPtr(5) );
    Qt5xHb::createReturnQObjectClass ( ptr, "QACTION" );
  }
}

/*
void addAction ( QAction * action )
*/
void QMenu_addAction5 ()
{
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->addAction ( PQACTION(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]QAction * addAction ( const QString & text )
//[2]QAction * addAction ( const QIcon & icon, const QString & text )
//[3]QAction * addAction ( const QString & text, const QObject * receiver, const char * member, const QKeySequence & shortcut = 0 )
//[4]QAction * addAction ( const QIcon & icon, const QString & text, const QObject * receiver, const char * member, const QKeySequence & shortcut = 0 )
//[5]void addAction ( QAction * action )

HB_FUNC_STATIC( QMENU_ADDACTION )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QMenu_addAction1();
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) )
  {
    QMenu_addAction2();
  }
  else if( ISBETWEEN(3,4) && ISCHAR(1) && ISQOBJECT(2) && ISCHAR(3) && (ISQKEYSEQUENCE(4)||ISNIL(4)) )
  {
    QMenu_addAction3();
  }
  else if( ISBETWEEN(4,5) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) && ISQOBJECT(3) && ISCHAR(4) && (ISQKEYSEQUENCE(5)||ISNIL(5)) )
  {
    QMenu_addAction4();
  }
  else if( ISNUMPAR(1) && ISQACTION(1) )
  {
    QMenu_addAction5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAction * addMenu ( QMenu * menu )
*/
void QMenu_addMenu1 ()
{
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    QAction * ptr = obj->addMenu ( PQMENU(1) );
    Qt5xHb::createReturnQObjectClass ( ptr, "QACTION" );
  }
}

/*
QMenu * addMenu ( const QString & title )
*/
void QMenu_addMenu2 ()
{
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    QMenu * ptr = obj->addMenu ( PQSTRING(1) );
    Qt5xHb::createReturnQWidgetClass ( ptr, "QMENU" );
  }
}

/*
QMenu * addMenu ( const QIcon & icon, const QString & title )
*/
void QMenu_addMenu3 ()
{
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    QMenu * ptr = obj->addMenu ( ISOBJECT(1)? *(QIcon *) Qt5xHb::itemGetPtr(1) : QIcon(hb_parc(1)), PQSTRING(2) );
    Qt5xHb::createReturnQWidgetClass ( ptr, "QMENU" );
  }
}

//[1]QAction * addMenu ( QMenu * menu )
//[2]QMenu * addMenu ( const QString & title )
//[3]QMenu * addMenu ( const QIcon & icon, const QString & title )

HB_FUNC_STATIC( QMENU_ADDMENU )
{
  if( ISNUMPAR(1) && ISQMENU(1) )
  {
    QMenu_addMenu1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QMenu_addMenu2();
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) )
  {
    QMenu_addMenu3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAction * addSeparator ()
*/
HB_FUNC_STATIC( QMENU_ADDSEPARATOR )
{
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAction * ptr = obj->addSeparator ();
      Qt5xHb::createReturnQObjectClass ( ptr, "QACTION" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void clear ()
*/
HB_FUNC_STATIC( QMENU_CLEAR )
{
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

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
}

/*
QAction * defaultAction () const
*/
HB_FUNC_STATIC( QMENU_DEFAULTACTION )
{
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAction * ptr = obj->defaultAction ();
      Qt5xHb::createReturnQObjectClass ( ptr, "QACTION" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setDefaultAction ( QAction * act )
*/
HB_FUNC_STATIC( QMENU_SETDEFAULTACTION )
{
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQACTION(1) )
    {
#endif
      obj->setDefaultAction ( PQACTION(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QAction * exec ()
*/
void QMenu_exec1 ()
{
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    QAction * ptr = obj->exec ();
    Qt5xHb::createReturnQObjectClass ( ptr, "QACTION" );
  }
}

/*
QAction * exec ( const QPoint & pos, QAction * at = nullptr )
*/
void QMenu_exec2 ()
{
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    QAction * ptr = obj->exec ( *PQPOINT(1), OPQACTION(2,nullptr) );
    Qt5xHb::createReturnQObjectClass ( ptr, "QACTION" );
  }
}

/*
static QAction *exec(QList<QAction*> actions, const QPoint &pos, QAction *at=0, QWidget *parent=0)
*/
void QMenu_exec3 ()
{
  QList<QAction *> par1;
  PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
  int i1;
  int nLen1 = hb_arrayLen(aList1);
  for (i1=0;i1<nLen1;i1++)
  {
    par1 << (QAction *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
  }
  QAction * ptr = QMenu::exec ( par1, *PQPOINT(2), OPQACTION(3,0), OPQWIDGET(4,0) );
  _qt5xhb_createReturnClass ( ptr, "QACTION" );
}

//[1]QAction * exec ()
//[2]QAction * exec ( const QPoint & pos, QAction * at = 0 )
//[3]static QAction *exec(QList<QAction*> actions, const QPoint &pos, QAction *at=0, QWidget *parent=0)

HB_FUNC_STATIC( QMENU_EXEC )
{
  if( ISNUMPAR(0) )
  {
    QMenu_exec1();
  }
  else if( ISBETWEEN(1,2) && ISQPOINT(1) && ISOPTQACTION(2) )
  {
    QMenu_exec2();
  }
  else if( ISBETWEEN(2,4) && ISARRAY(1) && ISQPOINT(2) && ISOPTQACTION(3) && ISOPTQWIDGET(4) )
  {
    QMenu_exec3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void hideTearOffMenu ()
*/
HB_FUNC_STATIC( QMENU_HIDETEAROFFMENU )
{
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->hideTearOffMenu ();
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QIcon icon () const
*/
HB_FUNC_STATIC( QMENU_ICON )
{
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QIcon( obj->icon () );
      Qt5xHb::createReturnClass ( ptr, "QICON", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setIcon ( const QIcon & icon )
*/
HB_FUNC_STATIC( QMENU_SETICON )
{
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && (ISQICON(1)||ISCHAR(1)) )
    {
#endif
      obj->setIcon ( ISOBJECT(1)? *(QIcon *) Qt5xHb::itemGetPtr(1) : QIcon(hb_parc(1)) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QAction * insertMenu ( QAction * before, QMenu * menu )
*/
HB_FUNC_STATIC( QMENU_INSERTMENU )
{
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQACTION(1) && ISQMENU(2) )
    {
#endif
      QAction * ptr = obj->insertMenu ( PQACTION(1), PQMENU(2) );
      Qt5xHb::createReturnQObjectClass ( ptr, "QACTION" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QAction * insertSeparator ( QAction * before )
*/
HB_FUNC_STATIC( QMENU_INSERTSEPARATOR )
{
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQACTION(1) )
    {
#endif
      QAction * ptr = obj->insertSeparator ( PQACTION(1) );
      Qt5xHb::createReturnQObjectClass ( ptr, "QACTION" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool isEmpty () const
*/
HB_FUNC_STATIC( QMENU_ISEMPTY )
{
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

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
}

/*
bool isTearOffEnabled () const
*/
HB_FUNC_STATIC( QMENU_ISTEAROFFENABLED )
{
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isTearOffEnabled () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setTearOffEnabled ( bool )
*/
HB_FUNC_STATIC( QMENU_SETTEAROFFENABLED )
{
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setTearOffEnabled ( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool isTearOffMenuVisible () const
*/
HB_FUNC_STATIC( QMENU_ISTEAROFFMENUVISIBLE )
{
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isTearOffMenuVisible () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QAction * menuAction () const
*/
HB_FUNC_STATIC( QMENU_MENUACTION )
{
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAction * ptr = obj->menuAction ();
      Qt5xHb::createReturnQObjectClass ( ptr, "QACTION" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void popup ( const QPoint & pos, QAction * at = nullptr )
*/
HB_FUNC_STATIC( QMENU_POPUP )
{
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISQPOINT(1) && (ISQACTION(2)||ISNIL(2)) )
    {
#endif
      obj->popup ( *PQPOINT(1), OPQACTION(2,nullptr) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool separatorsCollapsible () const
*/
HB_FUNC_STATIC( QMENU_SEPARATORSCOLLAPSIBLE )
{
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->separatorsCollapsible () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setSeparatorsCollapsible ( bool collapse )
*/
HB_FUNC_STATIC( QMENU_SETSEPARATORSCOLLAPSIBLE )
{
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setSeparatorsCollapsible ( PBOOL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString title () const
*/
HB_FUNC_STATIC( QMENU_TITLE )
{
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->title () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setTitle ( const QString & title )
*/
HB_FUNC_STATIC( QMENU_SETTITLE )
{
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setTitle ( PQSTRING(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSize sizeHint () const
*/
HB_FUNC_STATIC( QMENU_SIZEHINT )
{
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QSize( obj->sizeHint () );
      Qt5xHb::createReturnClass ( ptr, "QSIZE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
HMENU wceMenu ()
*/
HB_FUNC_STATIC( QMENU_WCEMENU )
{
#ifdef Q_OS_WINCE
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      hb_retptr( (HMENU) obj->wceMenu () );
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
QAction * addSection ( const QString & text )
*/
void QMenu_addSection1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    QAction * ptr = obj->addSection ( PQSTRING(1) );
    Qt5xHb::createReturnQObjectClass ( ptr, "QACTION" );
  }
#endif
}

/*
QAction *addSection(const QIcon &icon, const QString &text)
*/
void QMenu_addSection2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    QAction * ptr = obj->addSection ( ISOBJECT(1)? *(QIcon *) Qt5xHb::itemGetPtr(1) : QIcon(hb_parc(1)), PQSTRING(2) );
    Qt5xHb::createReturnQObjectClass ( ptr, "QACTION" );
  }
#endif
}

//[1]QAction *addSection(const QString &text)
//[2]QAction *addSection(const QIcon &icon, const QString &text)

HB_FUNC_STATIC( QMENU_ADDSECTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QMenu_addSection1();
  }
  else if( ISNUMPAR(2) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) )
  {
    QMenu_addSection2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
QAction *insertSection(QAction *before, const QString &text)
*/
void QMenu_insertSection1 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    QAction * ptr = obj->insertSection ( PQACTION(1), PQSTRING(2) );
    Qt5xHb::createReturnQObjectClass ( ptr, "QACTION" );
  }
#endif
}

/*
QAction *insertSection(QAction *before, const QIcon &icon, const QString &text)
*/
void QMenu_insertSection2 ()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    QAction * ptr = obj->insertSection ( PQACTION(1), ISOBJECT(2)? *(QIcon *) Qt5xHb::itemGetPtr(2) : QIcon(hb_parc(2)), PQSTRING(3) );
    Qt5xHb::createReturnQObjectClass ( ptr, "QACTION" );
  }
#endif
}

//[1]QAction *insertSection(QAction *before, const QString &text)
//[2]QAction *insertSection(QAction *before, const QIcon &icon, const QString &text)

HB_FUNC_STATIC( QMENU_INSERTSECTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  if( ISNUMPAR(2) && ISQACTION(1) && ISCHAR(2) )
  {
    QMenu_insertSection1();
  }
  else if( ISNUMPAR(3) && ISQACTION(1) && (ISQICON(2)||ISCHAR(2)) && ISCHAR(3) )
  {
    QMenu_insertSection2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
void setNoReplayFor(QWidget *widget)
*/
HB_FUNC_STATIC( QMENU_SETNOREPLAYFOR )
{
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWIDGET(1) )
    {
#endif
      obj->setNoReplayFor ( PQWIDGET(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setAsDockMenu()
*/
HB_FUNC_STATIC( QMENU_SETASDOCKMENU )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifdef Q_OS_OSX
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->setAsDockMenu ();
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
#endif
}

/*
bool toolTipsVisible() const
*/
HB_FUNC_STATIC( QMENU_TOOLTIPSVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->toolTipsVisible () );
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
void setToolTipsVisible(bool visible)
*/
HB_FUNC_STATIC( QMENU_SETTOOLTIPSVISIBLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,1,0))
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setToolTipsVisible ( PBOOL(1) );
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
NSMenu * QMenu::toNSMenu()
*/
HB_FUNC_STATIC( QMENU_TONSMENU )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,2,0))
#ifdef Q_OS_OSX
  auto obj = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      hb_retptr( (NSMenu *) obj->toNSMenu () );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
#endif
#endif
}

/*
void aboutToHide()
*/
HB_FUNC_STATIC( QMENU_ONABOUTTOHIDE )
{
  auto sender = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("aboutToHide()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QMenu::aboutToHide, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QMENU" );
            hb_vmEvalBlockV( cb, 1, pSender );
            hb_itemRelease( pSender );
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
}

/*
void aboutToShow()
*/
HB_FUNC_STATIC( QMENU_ONABOUTTOSHOW )
{
  auto sender = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("aboutToShow()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QMenu::aboutToShow, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QMENU" );
            hb_vmEvalBlockV( cb, 1, pSender );
            hb_itemRelease( pSender );
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
}

/*
void hovered( QAction * action )
*/
HB_FUNC_STATIC( QMENU_ONHOVERED )
{
  auto sender = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("hovered(QAction*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QMenu::hovered, 
                                                              [sender, indexOfCodeBlock]
                                                              (QAction * arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QMENU" );
            PHB_ITEM pArg1 = Signals4_return_qobject( (QObject *) arg1, "QACTION" );
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
}

/*
void triggered( QAction * action )
*/
HB_FUNC_STATIC( QMENU_ONTRIGGERED )
{
  auto sender = (QMenu *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("triggered(QAction*)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QMenu::triggered, 
                                                              [sender, indexOfCodeBlock]
                                                              (QAction * arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QMENU" );
            PHB_ITEM pArg1 = Signals4_return_qobject( (QObject *) arg1, "QACTION" );
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
}

#pragma ENDDUMP
