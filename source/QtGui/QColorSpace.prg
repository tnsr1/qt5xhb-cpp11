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
#endif

CLASS QColorSpace

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD swap
   METHOD primaries
   METHOD transferFunction
   METHOD gamma
   METHOD setTransferFunction
   METHOD withTransferFunction
   METHOD setPrimaries
   METHOD isValid
   METHOD fromIccProfile
   METHOD iccProfile

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QColorSpace
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
#include <QtGui/QColorSpace>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
#include <QtGui/QColorSpace>
#endif
#endif

/*
QColorSpace()
*/
void QColorSpace_new1()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = new QColorSpace();
  Qt5xHb::returnNewObject( obj, true );
#endif
}

/*
QColorSpace(NamedColorSpace namedColorSpace)
*/
void QColorSpace_new2()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = new QColorSpace( (QColorSpace::NamedColorSpace) hb_parni(1) );
  Qt5xHb::returnNewObject( obj, true );
#endif
}

/*
QColorSpace(Primaries primaries, TransferFunction fun, float gamma = 0.0f)
*/
void QColorSpace_new3()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = new QColorSpace( (QColorSpace::Primaries) hb_parni(1), (QColorSpace::TransferFunction) hb_parni(2), OPFLOAT(3,0.0f) );
  Qt5xHb::returnNewObject( obj, true );
#endif
}

/*
QColorSpace(Primaries primaries, float gamma)
*/
void QColorSpace_new4()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = new QColorSpace( (QColorSpace::Primaries) hb_parni(1), PFLOAT(2) );
  Qt5xHb::returnNewObject( obj, true );
#endif
}

/*
QColorSpace(const QPointF &whitePoint, const QPointF &redPoint, const QPointF &greenPoint, const QPointF &bluePoint, TransferFunction fun, float gamma = 0.0f)
*/
void QColorSpace_new5()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = new QColorSpace( *PQPOINTF(1), *PQPOINTF(2), *PQPOINTF(3), *PQPOINTF(4), (QColorSpace::TransferFunction) hb_parni(5), OPFLOAT(6,0.0f) );
  Qt5xHb::returnNewObject( obj, true );
#endif
}

/*
QColorSpace(const QColorSpace &colorSpace)
*/
void QColorSpace_new6()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = new QColorSpace( *PQCOLORSPACE(1) );
  Qt5xHb::returnNewObject( obj, true );
#endif
}

/*
QColorSpace(QColorSpace &&colorSpace) noexcept
*/

/*
[1]QColorSpace()
[2]QColorSpace(NamedColorSpace namedColorSpace)
[3]QColorSpace(Primaries primaries, TransferFunction fun, float gamma = 0.0f)
[4]QColorSpace(Primaries primaries, float gamma)
[5]QColorSpace(const QPointF &whitePoint, const QPointF &redPoint, const QPointF &greenPoint, const QPointF &bluePoint, TransferFunction fun, float gamma = 0.0f)
[6]QColorSpace(const QColorSpace &colorSpace)
[7]QColorSpace(QColorSpace &&colorSpace) noexcept
*/

HB_FUNC_STATIC( QCOLORSPACE_NEW )
{
  if( ISNUMPAR(0) )
  {
    QColorSpace_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QColorSpace_new2();
  }
  else if( ISBETWEEN(2,3) && ISNUM(1) && ISNUM(2) && (ISNUM(3)||ISNIL(3) )
  {
    QColorSpace_new3();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QColorSpace_new4();
  }
  else if( ISBETWEEN(5,6) && ISQPOINTF(1) && ISQPOINTF(2) && ISQPOINTF(3) && ISQPOINTF(4) && ISNUM(5) && (ISNUM(6)||ISNIL(6)) )
  {
    QColorSpace_new5();
  }
  else if( ISNUMPAR(1) && ISQCOLORSPACE(1) )
  {
    QColorSpace_new6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QColorSpace()
*/
HB_FUNC_STATIC( QCOLORSPACE_DELETE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = (QColorSpace *) Qt5xHb::itemGetPtrStackSelfItem();

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
void swap(QColorSpace &colorSpace) noexcept
*/
HB_FUNC_STATIC( QCOLORSPACE_SWAP )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = (QColorSpace *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQCOLORSPACE(1) )
    {
#endif
      obj->swap( *PQCOLORSPACE(1) );
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
Primaries primaries() const noexcept
*/
HB_FUNC_STATIC( QCOLORSPACE_PRIMARIES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = (QColorSpace *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->primaries() );
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
TransferFunction transferFunction() const noexcept
*/
HB_FUNC_STATIC( QCOLORSPACE_TRANSFERFUNCTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = (QColorSpace *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->transferFunction() );
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
float gamma() const noexcept
*/
HB_FUNC_STATIC( QCOLORSPACE_GAMMA )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = (QColorSpace *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RFLOAT( obj->gamma() );
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
void setTransferFunction(TransferFunction transferFunction, float gamma = 0.0f)
*/
HB_FUNC_STATIC( QCOLORSPACE_SETTRANSFERFUNCTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = (QColorSpace *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
    {
#endif
      obj->setTransferFunction( (QColorSpace::TransferFunction) hb_parni(1), OPFLOAT(2,0.0f) );
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
QColorSpace withTransferFunction(TransferFunction transferFunction, float gamma = 0.0f) const
*/
HB_FUNC_STATIC( QCOLORSPACE_WITHTRANSFERFUNCTION )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = (QColorSpace *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTNUM(2) )
    {
#endif
      auto ptr = new QColorSpace( obj->withTransferFunction( (QColorSpace::TransferFunction) hb_parni(1), OPFLOAT(2,0.0f) ) );
      Qt5xHb::createReturnClass( ptr, "QCOLORSPACE", true );
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
void setPrimaries(Primaries primariesId)
*/
void QColorSpace_setPrimaries1()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = (QColorSpace *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->setPrimaries( (QColorSpace::Primaries) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
void setPrimaries(const QPointF &whitePoint, const QPointF &redPoint, const QPointF &greenPoint, const QPointF &bluePoint)
*/
void QColorSpace_setPrimaries2()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = (QColorSpace *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->setPrimaries( *PQPOINTF(1), *PQPOINTF(2), *PQPOINTF(3), *PQPOINTF(4) );
  }

  hb_itemReturn( hb_stackSelfItem() );
#endif
}

/*
[1]void setPrimaries(Primaries primariesId)
[2]void setPrimaries(const QPointF &whitePoint, const QPointF &redPoint, const QPointF &greenPoint, const QPointF &bluePoint)
*/

HB_FUNC_STATIC( QCOLORSPACE_SETPRIMARIES )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    QColorSpace_setPrimaries1();
  }
  else if( ISNUMPAR(4) && ISQPOINTF(1) && ISQPOINTF(2) && ISQPOINTF(3) && ISQPOINTF(4) )
  {
    QColorSpace_setPrimaries2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isValid() const noexcept
*/
HB_FUNC_STATIC( QCOLORSPACE_ISVALID )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = (QColorSpace *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isValid() );
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
static QColorSpace fromIccProfile(const QByteArray &iccProfile)
*/
HB_FUNC_STATIC( QCOLORSPACE_FROMICCPROFILE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
#endif
    auto ptr = new QColorSpace( QColorSpace::fromIccProfile( *PQBYTEARRAY(1) ) );
    Qt5xHb::createReturnClass( ptr, "QCOLORSPACE", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
#endif
}

/*
QByteArray iccProfile() const
*/
HB_FUNC_STATIC( QCOLORSPACE_ICCPROFILE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,14,0))
  auto obj = (QColorSpace *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QByteArray( obj->iccProfile() );
      Qt5xHb::createReturnClass( ptr, "QBYTEARRAY", true );
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
QColorTransform transformationToColorSpace(const QColorSpace &colorspace) const
*/

HB_FUNC_STATIC( QCOLORSPACE_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QCOLORSPACE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QCOLORSPACE_NEWFROM );
}

HB_FUNC_STATIC( QCOLORSPACE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QCOLORSPACE_NEWFROM );
}

HB_FUNC_STATIC( QCOLORSPACE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QCOLORSPACE_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
