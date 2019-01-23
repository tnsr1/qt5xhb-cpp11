/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QABSTRACTVIDEOSURFACE
#endif

CLASS QVideoRendererControl INHERIT QMediaControl

   METHOD delete
   METHOD setSurface
   METHOD surface

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QVideoRendererControl
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QVideoRendererControl>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#include <QVideoRendererControl>
#endif

#include <QAbstractVideoSurface>

/*
explicit QVideoRendererControl(QObject *parent = nullptr) [protected]
*/

/*
~QVideoRendererControl()
*/
HB_FUNC_STATIC( QVIDEORENDERERCONTROL_DELETE )
{
  QVideoRendererControl * obj = (QVideoRendererControl *) _qt5xhb_itemGetPtrStackSelfItem();

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
}

/*
virtual void setSurface(QAbstractVideoSurface * surface) = 0
*/
HB_FUNC_STATIC( QVIDEORENDERERCONTROL_SETSURFACE )
{
  QVideoRendererControl * obj = (QVideoRendererControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTVIDEOSURFACE(1) )
    {
#endif
      obj->setSurface ( PQABSTRACTVIDEOSURFACE(1) );
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
virtual QAbstractVideoSurface * surface() const = 0
*/
HB_FUNC_STATIC( QVIDEORENDERERCONTROL_SURFACE )
{
  QVideoRendererControl * obj = (QVideoRendererControl *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAbstractVideoSurface * ptr = obj->surface ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QABSTRACTVIDEOSURFACE" );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

#pragma ENDDUMP
