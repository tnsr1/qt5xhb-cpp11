/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QURL
#endif

CLASS QWebEngineHttpRequest

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD delete
   METHOD swap
   METHOD method
   METHOD setMethod
   METHOD url
   METHOD setUrl
   METHOD postData
   METHOD setPostData
   METHOD hasHeader
   METHOD headers
   METHOD header
   METHOD setHeader
   METHOD unsetHeader

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QWebEngineHttpRequest
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtWebEngineCore/QWebEngineHttpRequest>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"

#ifdef __XHARBOUR__
#include <QtWebEngineCore/QWebEngineHttpRequest>
#endif

/*
explicit QWebEngineHttpRequest(const QUrl &url = QUrl(), const QWebEngineHttpRequest::Method &method = QWebEngineHttpRequest::Get)
*/
HB_FUNC_STATIC( QWEBENGINEHTTPREQUEST_NEW1 )
{
  auto obj = new QWebEngineHttpRequest( ISNIL(1)? QUrl() : *(QUrl *) Qt5xHb::itemGetPtr(1), ISNIL(2)? (const QWebEngineHttpRequest::Method &) QWebEngineHttpRequest::Get : (const QWebEngineHttpRequest::Method &) hb_parni(2) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
QWebEngineHttpRequest(const QWebEngineHttpRequest &other)
*/
HB_FUNC_STATIC( QWEBENGINEHTTPREQUEST_NEW2 )
{
  auto obj = new QWebEngineHttpRequest( *PQWEBENGINEHTTPREQUEST(1) );
  Qt5xHb::returnNewObject( obj, true );
}

/*
[1]explicit QWebEngineHttpRequest(const QUrl &url = QUrl(), const QWebEngineHttpRequest::Method &method = QWebEngineHttpRequest::Get)
[2]QWebEngineHttpRequest(const QWebEngineHttpRequest &other)
*/

HB_FUNC_STATIC( QWEBENGINEHTTPREQUEST_NEW )
{
}

/*
~QWebEngineHttpRequest()
*/
HB_FUNC_STATIC( QWEBENGINEHTTPREQUEST_DELETE )
{
  auto obj = (QWebEngineHttpRequest *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    delete obj;
    obj = nullptr;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( nullptr, nullptr );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
static QWebEngineHttpRequest postRequest(const QUrl &url, const QMap<QString, QString> &postData)
*/

/*
void swap(QWebEngineHttpRequest &other)
*/
HB_FUNC_STATIC( QWEBENGINEHTTPREQUEST_SWAP )
{
  auto obj = (QWebEngineHttpRequest *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQWEBENGINEHTTPREQUEST(1) )
    {
#endif
      obj->swap( *PQWEBENGINEHTTPREQUEST(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
Method method() const
*/
HB_FUNC_STATIC( QWEBENGINEHTTPREQUEST_METHOD )
{
  auto obj = (QWebEngineHttpRequest *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->method() );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setMethod(QWebEngineHttpRequest::Method method)
*/
HB_FUNC_STATIC( QWEBENGINEHTTPREQUEST_SETMETHOD )
{
  auto obj = (QWebEngineHttpRequest *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setMethod( (QWebEngineHttpRequest::Method) hb_parni(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QUrl url() const
*/
HB_FUNC_STATIC( QWEBENGINEHTTPREQUEST_URL )
{
  auto obj = (QWebEngineHttpRequest *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QUrl( obj->url() );
      Qt5xHb::createReturnClass( ptr, "QURL", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setUrl(const QUrl &url)
*/
HB_FUNC_STATIC( QWEBENGINEHTTPREQUEST_SETURL )
{
  auto obj = (QWebEngineHttpRequest *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQURL(1) )
    {
#endif
      obj->setUrl( *PQURL(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QByteArray postData() const
*/
HB_FUNC_STATIC( QWEBENGINEHTTPREQUEST_POSTDATA )
{
  auto obj = (QWebEngineHttpRequest *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QByteArray( obj->postData() );
      Qt5xHb::createReturnClass( ptr, "QBYTEARRAY", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setPostData(const QByteArray &postData)
*/
HB_FUNC_STATIC( QWEBENGINEHTTPREQUEST_SETPOSTDATA )
{
  auto obj = (QWebEngineHttpRequest *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
    {
#endif
      obj->setPostData( *PQBYTEARRAY(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool hasHeader(const QByteArray &headerName) const
*/
HB_FUNC_STATIC( QWEBENGINEHTTPREQUEST_HASHEADER )
{
  auto obj = (QWebEngineHttpRequest *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
    {
#endif
      RBOOL( obj->hasHeader( *PQBYTEARRAY(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QVector<QByteArray> headers() const
*/
HB_FUNC_STATIC( QWEBENGINEHTTPREQUEST_HEADERS )
{
  auto obj = (QWebEngineHttpRequest *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVector<QByteArray> list = obj->headers();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( auto i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( nullptr );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( nullptr );
          hb_itemPutPtr( pItem, (QByteArray *) new QByteArray( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( nullptr );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, nullptr, "QBYTEARRAY", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QByteArray header(const QByteArray &headerName) const
*/
HB_FUNC_STATIC( QWEBENGINEHTTPREQUEST_HEADER )
{
  auto obj = (QWebEngineHttpRequest *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
    {
#endif
      auto ptr = new QByteArray( obj->header( *PQBYTEARRAY(1) ) );
      Qt5xHb::createReturnClass( ptr, "QBYTEARRAY", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setHeader(const QByteArray &headerName, const QByteArray &value)
*/
HB_FUNC_STATIC( QWEBENGINEHTTPREQUEST_SETHEADER )
{
  auto obj = (QWebEngineHttpRequest *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQBYTEARRAY(1) && ISQBYTEARRAY(2) )
    {
#endif
      obj->setHeader( *PQBYTEARRAY(1), *PQBYTEARRAY(2) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void unsetHeader(const QByteArray &headerName)
*/
HB_FUNC_STATIC( QWEBENGINEHTTPREQUEST_UNSETHEADER )
{
  auto obj = (QWebEngineHttpRequest *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
    {
#endif
      obj->unsetHeader( *PQBYTEARRAY(1) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, nullptr, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
