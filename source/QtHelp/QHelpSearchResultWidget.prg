/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QHelpSearchResultWidget INHERIT QWidget

   METHOD delete
   METHOD linkAt

   METHOD onRequestShowLink

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QHelpSearchResultWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtHelp/QHelpSearchResultWidget>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#include <QtHelp/QHelpSearchResultWidget>
#endif

HB_FUNC_STATIC( QHELPSEARCHRESULTWIDGET_DELETE )
{
  QHelpSearchResultWidget * obj = (QHelpSearchResultWidget *) _qt5xhb_itemGetPtrStackSelfItem();

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
QUrl linkAt ( const QPoint & point )
*/
HB_FUNC_STATIC( QHELPSEARCHRESULTWIDGET_LINKAT )
{
  QHelpSearchResultWidget * obj = (QHelpSearchResultWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPOINT(1) )
    {
#endif
      auto ptr = new QUrl( obj->linkAt ( *PQPOINT(1) ) );
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

/*
void requestShowLink( const QUrl & link )
*/
HB_FUNC_STATIC( QHELPSEARCHRESULTWIDGET_ONREQUESTSHOWLINK )
{
  QHelpSearchResultWidget * sender = (QHelpSearchResultWidget *) _qt5xhb_itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("requestShowLink(QUrl)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QHelpSearchResultWidget::requestShowLink, 
                                                              [sender, indexOfCodeBlock]
                                                              (const QUrl & arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QHELPSEARCHRESULTWIDGET" );
            PHB_ITEM pArg1 = Signals4_return_object( (void *) &arg1, "QURL" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
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
