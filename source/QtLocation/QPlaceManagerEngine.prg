/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QLOCALE
REQUEST QPLACE
REQUEST QPLACECATEGORY
REQUEST QPLACECONTENTREPLY
REQUEST QPLACEDETAILSREPLY
REQUEST QPLACEIDREPLY
REQUEST QPLACEMATCHREPLY
REQUEST QPLACEREPLY
REQUEST QPLACESEARCHREPLY
REQUEST QPLACESEARCHSUGGESTIONREPLY
REQUEST QURL
#endif

CLASS QPlaceManagerEngine INHERIT QObject

   METHOD delete
   METHOD managerName
   METHOD managerVersion
   METHOD getPlaceDetails
   METHOD getPlaceContent
   METHOD search
   METHOD searchSuggestions
   METHOD savePlace
   METHOD removePlace
   METHOD saveCategory
   METHOD removeCategory
   METHOD initializeCategories
   METHOD parentCategoryId
   METHOD childCategoryIds
   METHOD category
   METHOD childCategories
   METHOD locales
   METHOD setLocales
   METHOD constructIconUrl
   METHOD compatiblePlace
   METHOD matchingPlaces

   METHOD onFinished
   METHOD onError
   METHOD onPlaceAdded
   METHOD onPlaceUpdated
   METHOD onPlaceRemoved
   METHOD onCategoryAdded
   METHOD onCategoryUpdated
   METHOD onCategoryRemoved
   METHOD onDataChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QPlaceManagerEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtLocation/QPlaceManagerEngine>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals3.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
#include <QtLocation/QPlaceManagerEngine>
#endif
#endif

#include <QtLocation/QPlaceSearchReply>

HB_FUNC_STATIC( QPLACEMANAGERENGINE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * obj = (QPlaceManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

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
QString managerName() const
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_MANAGERNAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * obj = (QPlaceManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->managerName () );
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
int managerVersion() const
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_MANAGERVERSION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * obj = (QPlaceManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->managerVersion () );
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
virtual QPlaceDetailsReply *getPlaceDetails(const QString &placeId)
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_GETPLACEDETAILS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * obj = (QPlaceManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      QPlaceDetailsReply * ptr = obj->getPlaceDetails ( PQSTRING(1) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QPLACEDETAILSREPLY" );
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
virtual QPlaceContentReply *getPlaceContent(const QPlaceContentRequest &request)
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_GETPLACECONTENT )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * obj = (QPlaceManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPLACECONTENTREQUEST(1) )
    {
#endif
      QPlaceContentReply * ptr = obj->getPlaceContent ( *PQPLACECONTENTREQUEST(1) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QPLACECONTENTREPLY" );
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
virtual QPlaceSearchReply *search(const QPlaceSearchRequest &request)
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_SEARCH )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * obj = (QPlaceManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPLACESEARCHREQUEST(1) )
    {
#endif
      QPlaceSearchReply * ptr = obj->search ( *PQPLACESEARCHREQUEST(1) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QPLACESEARCHREPLY" );
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
virtual QPlaceSearchSuggestionReply *searchSuggestions(const QPlaceSearchRequest &request)
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_SEARCHSUGGESTIONS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * obj = (QPlaceManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPLACESEARCHREQUEST(1) )
    {
#endif
      QPlaceSearchSuggestionReply * ptr = obj->searchSuggestions ( *PQPLACESEARCHREQUEST(1) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QPLACESEARCHSUGGESTIONREPLY" );
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
virtual QPlaceIdReply *savePlace(const QPlace &place)
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_SAVEPLACE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * obj = (QPlaceManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPLACE(1) )
    {
#endif
      QPlaceIdReply * ptr = obj->savePlace ( *PQPLACE(1) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QPLACEIDREPLY" );
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
virtual QPlaceIdReply *removePlace(const QString &placeId)
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_REMOVEPLACE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * obj = (QPlaceManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      QPlaceIdReply * ptr = obj->removePlace ( PQSTRING(1) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QPLACEIDREPLY" );
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
virtual QPlaceIdReply *saveCategory(const QPlaceCategory &category, const QString &parentId)
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_SAVECATEGORY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * obj = (QPlaceManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQPLACECATEGORY(1) && ISCHAR(2) )
    {
#endif
      QPlaceIdReply * ptr = obj->saveCategory ( *PQPLACECATEGORY(1), PQSTRING(2) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QPLACEIDREPLY" );
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
virtual QPlaceIdReply *removeCategory(const QString &categoryId)
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_REMOVECATEGORY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * obj = (QPlaceManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      QPlaceIdReply * ptr = obj->removeCategory ( PQSTRING(1) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QPLACEIDREPLY" );
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
virtual QPlaceReply *initializeCategories()
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_INITIALIZECATEGORIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * obj = (QPlaceManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QPlaceReply * ptr = obj->initializeCategories ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QPLACEREPLY" );
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
virtual QString parentCategoryId(const QString &categoryId) const
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_PARENTCATEGORYID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * obj = (QPlaceManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      RQSTRING( obj->parentCategoryId ( PQSTRING(1) ) );
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
virtual QStringList childCategoryIds(const QString &categoryId) const
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_CHILDCATEGORYIDS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * obj = (QPlaceManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      RQSTRINGLIST( obj->childCategoryIds ( PQSTRING(1) ) );
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
virtual QPlaceCategory category(const QString &categoryId) const
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_CATEGORY )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * obj = (QPlaceManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      QPlaceCategory * ptr = new QPlaceCategory( obj->category ( PQSTRING(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QPLACECATEGORY", true );
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
virtual QList<QPlaceCategory> childCategories(const QString &parentId) const
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_CHILDCATEGORIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * obj = (QPlaceManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      QList<QPlaceCategory> list = obj->childCategories ( PQSTRING(1) );
      PHB_DYNS pDynSym = hb_dynsymFindName( "QPLACECATEGORY" );
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
          hb_itemPutPtr( pItem, (QPlaceCategory *) new QPlaceCategory ( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QPLACECATEGORY", HB_ERR_ARGS_BASEPARAMS );
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
virtual QList<QLocale> locales() const
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_LOCALES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * obj = (QPlaceManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QLocale> list = obj->locales ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QLOCALE" );
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
          hb_itemPutPtr( pItem, (QLocale *) new QLocale ( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
        else
        {
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QLOCALE", HB_ERR_ARGS_BASEPARAMS );
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
virtual void setLocales(const QList<QLocale> &locales)
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_SETLOCALES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * obj = (QPlaceManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISARRAY(1) )
    {
#endif
      QList<QLocale> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
  par1 << *(QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
      obj->setLocales ( par1 );
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
virtual QUrl constructIconUrl(const QPlaceIcon &icon, const QSize &size) const
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_CONSTRUCTICONURL )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * obj = (QPlaceManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISQPLACEICON(1) && ISQSIZE(2) )
    {
#endif
      QUrl * ptr = new QUrl( obj->constructIconUrl ( *PQPLACEICON(1), *PQSIZE(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QURL", true );
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
virtual QPlace compatiblePlace(const QPlace &original) const
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_COMPATIBLEPLACE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * obj = (QPlaceManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPLACE(1) )
    {
#endif
      QPlace * ptr = new QPlace( obj->compatiblePlace ( *PQPLACE(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QPLACE", true );
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
virtual QPlaceMatchReply *matchingPlaces(const QPlaceMatchRequest &request)
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_MATCHINGPLACES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * obj = (QPlaceManagerEngine *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQPLACEMATCHREQUEST(1) )
    {
#endif
      QPlaceMatchReply * ptr = obj->matchingPlaces ( *PQPLACEMATCHREQUEST(1) );
      _qt5xhb_createReturnQObjectClass ( ptr, "QPLACEMATCHREPLY" );
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
void finished( QPlaceReply * reply )
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_ONFINISHED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * sender = (QPlaceManagerEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int index = sender->metaObject()->indexOfSignal("finished(QPlaceReply*)");

    if( hb_pcount() == 1 )
    {
      if( Signals3_connection( sender, index ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QPlaceManagerEngine::finished, 
                                                              [sender,index]
                                                              (QPlaceReply * arg1) {
          PHB_ITEM cb = Signals3_return_codeblock( sender, index );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals3_return_qobject ( (QObject *) sender, "QPLACEMANAGERENGINE" );
            PHB_ITEM pArg1 = Signals3_return_qobject( (QObject *) arg1, "QPLACEREPLY" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals3_store_connection( sender, index, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals3_disconnection( sender, index );

      QObject::disconnect( Signals3_get_connection( sender, index ) );

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
void error( QPlaceReply * reply, QPlaceReply::Error error, const QString & errorString = QString() )
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_ONERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * sender = (QPlaceManagerEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int index = sender->metaObject()->indexOfSignal("error(QPlaceReply*,QPlaceReply::Error,QString)");

    if( hb_pcount() == 1 )
    {
      if( Signals3_connection( sender, index ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QPlaceManagerEngine::error, 
                                                              [sender,index]
                                                              (QPlaceReply * arg1, QPlaceReply::Error arg2, const QString & arg3) {
          PHB_ITEM cb = Signals3_return_codeblock( sender, index );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals3_return_qobject ( (QObject *) sender, "QPLACEMANAGERENGINE" );
            PHB_ITEM pArg1 = Signals3_return_qobject( (QObject *) arg1, "QPLACEREPLY" );
            PHB_ITEM pArg2 = hb_itemPutNI( NULL, (int) arg2 );
            PHB_ITEM pArg3 = hb_itemPutC( NULL, QSTRINGTOSTRING(arg3) );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 4, pSender, pArg1, pArg2, pArg3 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
            hb_itemRelease( pArg3 );
          }

        });

        Signals3_store_connection( sender, index, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals3_disconnection( sender, index );

      QObject::disconnect( Signals3_get_connection( sender, index ) );

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
void placeAdded( const QString & placeId )
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_ONPLACEADDED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * sender = (QPlaceManagerEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int index = sender->metaObject()->indexOfSignal("placeAdded(QString)");

    if( hb_pcount() == 1 )
    {
      if( Signals3_connection( sender, index ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QPlaceManagerEngine::placeAdded, 
                                                              [sender,index]
                                                              (const QString & arg1) {
          PHB_ITEM cb = Signals3_return_codeblock( sender, index );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals3_return_qobject ( (QObject *) sender, "QPLACEMANAGERENGINE" );
            PHB_ITEM pArg1 = hb_itemPutC( NULL, QSTRINGTOSTRING(arg1) );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals3_store_connection( sender, index, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals3_disconnection( sender, index );

      QObject::disconnect( Signals3_get_connection( sender, index ) );

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
void placeUpdated( const QString & placeId )
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_ONPLACEUPDATED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * sender = (QPlaceManagerEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int index = sender->metaObject()->indexOfSignal("placeUpdated(QString)");

    if( hb_pcount() == 1 )
    {
      if( Signals3_connection( sender, index ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QPlaceManagerEngine::placeUpdated, 
                                                              [sender,index]
                                                              (const QString & arg1) {
          PHB_ITEM cb = Signals3_return_codeblock( sender, index );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals3_return_qobject ( (QObject *) sender, "QPLACEMANAGERENGINE" );
            PHB_ITEM pArg1 = hb_itemPutC( NULL, QSTRINGTOSTRING(arg1) );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals3_store_connection( sender, index, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals3_disconnection( sender, index );

      QObject::disconnect( Signals3_get_connection( sender, index ) );

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
void placeRemoved( const QString & placeId )
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_ONPLACEREMOVED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * sender = (QPlaceManagerEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int index = sender->metaObject()->indexOfSignal("placeRemoved(QString)");

    if( hb_pcount() == 1 )
    {
      if( Signals3_connection( sender, index ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QPlaceManagerEngine::placeRemoved, 
                                                              [sender,index]
                                                              (const QString & arg1) {
          PHB_ITEM cb = Signals3_return_codeblock( sender, index );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals3_return_qobject ( (QObject *) sender, "QPLACEMANAGERENGINE" );
            PHB_ITEM pArg1 = hb_itemPutC( NULL, QSTRINGTOSTRING(arg1) );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals3_store_connection( sender, index, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals3_disconnection( sender, index );

      QObject::disconnect( Signals3_get_connection( sender, index ) );

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
void categoryAdded( const QPlaceCategory & category, const QString & parentCategoryId )
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_ONCATEGORYADDED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * sender = (QPlaceManagerEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int index = sender->metaObject()->indexOfSignal("categoryAdded(QPlaceCategory,QString)");

    if( hb_pcount() == 1 )
    {
      if( Signals3_connection( sender, index ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QPlaceManagerEngine::categoryAdded, 
                                                              [sender,index]
                                                              (const QPlaceCategory & arg1, const QString & arg2) {
          PHB_ITEM cb = Signals3_return_codeblock( sender, index );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals3_return_qobject ( (QObject *) sender, "QPLACEMANAGERENGINE" );
            PHB_ITEM pArg1 = Signals3_return_object( (void *) &arg1, "QPLACECATEGORY" );
            PHB_ITEM pArg2 = hb_itemPutC( NULL, QSTRINGTOSTRING(arg2) );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
          }

        });

        Signals3_store_connection( sender, index, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals3_disconnection( sender, index );

      QObject::disconnect( Signals3_get_connection( sender, index ) );

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
void categoryUpdated( const QPlaceCategory & category, const QString & parentCategoryId )
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_ONCATEGORYUPDATED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * sender = (QPlaceManagerEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int index = sender->metaObject()->indexOfSignal("categoryUpdated(QPlaceCategory,QString)");

    if( hb_pcount() == 1 )
    {
      if( Signals3_connection( sender, index ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QPlaceManagerEngine::categoryUpdated, 
                                                              [sender,index]
                                                              (const QPlaceCategory & arg1, const QString & arg2) {
          PHB_ITEM cb = Signals3_return_codeblock( sender, index );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals3_return_qobject ( (QObject *) sender, "QPLACEMANAGERENGINE" );
            PHB_ITEM pArg1 = Signals3_return_object( (void *) &arg1, "QPLACECATEGORY" );
            PHB_ITEM pArg2 = hb_itemPutC( NULL, QSTRINGTOSTRING(arg2) );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
          }

        });

        Signals3_store_connection( sender, index, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals3_disconnection( sender, index );

      QObject::disconnect( Signals3_get_connection( sender, index ) );

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
void categoryRemoved( const QString & categoryId, const QString & parentCategoryId )
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_ONCATEGORYREMOVED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * sender = (QPlaceManagerEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int index = sender->metaObject()->indexOfSignal("categoryRemoved(QString,QString)");

    if( hb_pcount() == 1 )
    {
      if( Signals3_connection( sender, index ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QPlaceManagerEngine::categoryRemoved, 
                                                              [sender,index]
                                                              (const QString & arg1, const QString & arg2) {
          PHB_ITEM cb = Signals3_return_codeblock( sender, index );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals3_return_qobject ( (QObject *) sender, "QPLACEMANAGERENGINE" );
            PHB_ITEM pArg1 = hb_itemPutC( NULL, QSTRINGTOSTRING(arg1) );
            PHB_ITEM pArg2 = hb_itemPutC( NULL, QSTRINGTOSTRING(arg2) );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
          }

        });

        Signals3_store_connection( sender, index, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals3_disconnection( sender, index );

      QObject::disconnect( Signals3_get_connection( sender, index ) );

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
void dataChanged()
*/
HB_FUNC_STATIC( QPLACEMANAGERENGINE_ONDATACHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,4,0))
  QPlaceManagerEngine * sender = (QPlaceManagerEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( sender != nullptr )
  {
    int index = sender->metaObject()->indexOfSignal("dataChanged()");

    if( hb_pcount() == 1 )
    {
      if( Signals3_connection( sender, index ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QPlaceManagerEngine::dataChanged, 
                                                              [sender,index]
                                                              () {
          PHB_ITEM cb = Signals3_return_codeblock( sender, index );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals3_return_qobject ( (QObject *) sender, "QPLACEMANAGERENGINE" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals3_store_connection( sender, index, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals3_disconnection( sender, index );

      QObject::disconnect( Signals3_get_connection( sender, index ) );

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
