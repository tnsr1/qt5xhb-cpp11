/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QAbstractUriResolver INHERIT QObject

   METHOD delete
   METHOD resolve

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAbstractUriResolver
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QAbstractUriResolver>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals3.h"

#ifdef __XHARBOUR__
#include <QAbstractUriResolver>
#endif

#include <QUrl>

HB_FUNC_STATIC( QABSTRACTURIRESOLVER_DELETE )
{
  QAbstractUriResolver * obj = (QAbstractUriResolver *) _qt5xhb_itemGetPtrStackSelfItem();

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
virtual QUrl resolve ( const QUrl & relative, const QUrl & baseURI ) const = 0
*/
HB_FUNC_STATIC( QABSTRACTURIRESOLVER_RESOLVE )
{
  QAbstractUriResolver * obj = (QAbstractUriResolver *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQURL(1) && ISQURL(2) )
    {
#endif
      QUrl * ptr = new QUrl( obj->resolve ( *PQURL(1), *PQURL(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QURL", true );
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
