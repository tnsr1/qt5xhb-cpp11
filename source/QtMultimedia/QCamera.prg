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
REQUEST QCAMERAEXPOSURE
REQUEST QCAMERAFOCUS
REQUEST QCAMERAIMAGEPROCESSING
REQUEST QCAMERAVIEWFINDERSETTINGS
REQUEST QSIZE
#endif

CLASS QCamera INHERIT QMediaObject

   METHOD new
   METHOD delete
   METHOD state
   METHOD status
   METHOD captureMode
   METHOD setCaptureMode
   METHOD lockStatus
   METHOD error
   METHOD errorString
   METHOD exposure
   METHOD focus
   METHOD imageProcessing
   METHOD isCaptureModeSupported
   METHOD requestedLocks
   METHOD setViewfinder
   METHOD supportedLocks
   METHOD load
   METHOD searchAndLock
   METHOD start
   METHOD stop
   METHOD unload
   METHOD unlock
   METHOD availability
   METHOD viewfinderSettings
   METHOD setViewfinderSettings
   METHOD supportedViewfinderSettings
   METHOD supportedViewfinderResolutions
   METHOD supportedViewfinderPixelFormats
   METHOD availableDevices
   METHOD deviceDescription

   METHOD onCaptureModeChanged
   METHOD onError
   METHOD onLockFailed
   METHOD onLockStatusChanged1
   METHOD onLockStatusChanged2
   METHOD onLocked
   METHOD onStateChanged
   METHOD onStatusChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCamera
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#include <QtMultimedia/QCamera>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals5.h"

#ifdef __XHARBOUR__
#include <QtMultimedia/QCamera>
#endif

/*
explicit QCamera(QObject *parent = nullptr)
*/
void QCamera_new1()
{
  auto obj = new QCamera( OPQOBJECT(1,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
explicit QCamera(const QByteArray& deviceName, QObject *parent = nullptr)
*/
void QCamera_new2()
{
  auto obj = new QCamera( *PQBYTEARRAY(1), OPQOBJECT(2,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
}

/*
explicit QCamera(const QCameraInfo& cameraInfo, QObject *parent = nullptr)
*/
void QCamera_new3()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto obj = new QCamera( *PQCAMERAINFO(1), OPQOBJECT(2,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
#endif
}

/*
explicit QCamera(QCamera::Position position, QObject *parent = nullptr)
*/
void QCamera_new4()
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,3,0))
  auto obj = new QCamera( (QCamera::Position) hb_parni(1), OPQOBJECT(2,nullptr) );
  Qt5xHb::returnNewObject( obj, false );
#endif
}

/*
[1]explicit QCamera(QObject *parent = nullptr)
[2]explicit QCamera(const QByteArray& deviceName, QObject *parent = nullptr)
[3]explicit QCamera(const QCameraInfo& cameraInfo, QObject *parent = nullptr)
[4]explicit QCamera(QCamera::Position position, QObject *parent = nullptr)
*/

HB_FUNC_STATIC( QCAMERA_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQOBJECT(1) )
  {
    QCamera_new1();
  }
  else if( ISBETWEEN(1,2) && ISQBYTEARRAY(1) && ISOPTQOBJECT(2) )
  {
    QCamera_new2();
  }
  else if( ISBETWEEN(1,2) && ISQCAMERAINFO(1) && ISOPTQOBJECT(2) )
  {
    QCamera_new3();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && ISOPTQOBJECT(2) )
  {
    QCamera_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
~QCamera()
*/
HB_FUNC_STATIC( QCAMERA_DELETE )
{
  auto obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    Events_disconnect_all_events( obj, true );
    Signals5_disconnect_all_signals( obj, true );
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
State state() const
*/
HB_FUNC_STATIC( QCAMERA_STATE )
{
  auto obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->state() );
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
Status status() const
*/
HB_FUNC_STATIC( QCAMERA_STATUS )
{
  auto obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->status() );
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
CaptureModes captureMode() const
*/
HB_FUNC_STATIC( QCAMERA_CAPTUREMODE )
{
  auto obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->captureMode() );
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
void setCaptureMode(QCamera::CaptureModes mode)
*/
HB_FUNC_STATIC( QCAMERA_SETCAPTUREMODE )
{
  auto obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setCaptureMode( (QCamera::CaptureModes) hb_parni(1) );
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
QCamera::LockStatus lockStatus() const
*/
void QCamera_lockStatus1()
{
  auto obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    RENUM( obj->lockStatus() );
  }
}

/*
QCamera::LockStatus lockStatus(QCamera::LockType lockType) const
*/
void QCamera_lockStatus2()
{
  auto obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    RENUM( obj->lockStatus( (QCamera::LockType) hb_parni(1) ) );
  }
}

/*
[1]QCamera::LockStatus lockStatus() const
[2]QCamera::LockStatus lockStatus(QCamera::LockType lockType) const
*/

HB_FUNC_STATIC( QCAMERA_LOCKSTATUS )
{
  if( ISNUMPAR(0) )
  {
    QCamera_lockStatus1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QCamera_lockStatus2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
Error error() const
*/
HB_FUNC_STATIC( QCAMERA_ERROR )
{
  auto obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->error() );
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
QString errorString() const
*/
HB_FUNC_STATIC( QCAMERA_ERRORSTRING )
{
  auto obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->errorString() );
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
QCameraExposure * exposure() const
*/
HB_FUNC_STATIC( QCAMERA_EXPOSURE )
{
  auto obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QCameraExposure * ptr = obj->exposure();
      Qt5xHb::createReturnQObjectClass( ptr, "QCAMERAEXPOSURE" );
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
QCameraFocus * focus() const
*/
HB_FUNC_STATIC( QCAMERA_FOCUS )
{
  auto obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QCameraFocus * ptr = obj->focus();
      Qt5xHb::createReturnQObjectClass( ptr, "QCAMERAFOCUS" );
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
QCameraImageProcessing * imageProcessing() const
*/
HB_FUNC_STATIC( QCAMERA_IMAGEPROCESSING )
{
  auto obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QCameraImageProcessing * ptr = obj->imageProcessing();
      Qt5xHb::createReturnQObjectClass( ptr, "QCAMERAIMAGEPROCESSING" );
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
bool isCaptureModeSupported(CaptureModes mode) const
*/
HB_FUNC_STATIC( QCAMERA_ISCAPTUREMODESUPPORTED )
{
  auto obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->isCaptureModeSupported( (QCamera::CaptureModes) hb_parni(1) ) );
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
QCamera::LockTypes requestedLocks() const
*/
HB_FUNC_STATIC( QCAMERA_REQUESTEDLOCKS )
{
  auto obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->requestedLocks() );
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
void setViewfinder(QVideoWidget * viewfinder)
*/
void QCamera_setViewfinder1()
{
  auto obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->setViewfinder( PQVIDEOWIDGET(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setViewfinder(QGraphicsVideoItem * viewfinder)
*/
void QCamera_setViewfinder2()
{
  auto obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->setViewfinder( PQGRAPHICSVIDEOITEM(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setViewfinder(QAbstractVideoSurface * surface)
*/
void QCamera_setViewfinder3()
{
  auto obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->setViewfinder( PQABSTRACTVIDEOSURFACE(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void setViewfinder(QVideoWidget * viewfinder)
[2]void setViewfinder(QGraphicsVideoItem * viewfinder)
[3]void setViewfinder(QAbstractVideoSurface * surface)
*/

HB_FUNC_STATIC( QCAMERA_SETVIEWFINDER )
{
  if( ISNUMPAR(1) && ISQVIDEOWIDGET(1) )
  {
    QCamera_setViewfinder1();
  }
  else if( ISNUMPAR(1) && ISQGRAPHICSVIDEOITEM(1) )
  {
    QCamera_setViewfinder2();
  }
  else if( ISNUMPAR(1) && ISQABSTRACTVIDEOSURFACE(1) )
  {
    QCamera_setViewfinder3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QCamera::LockTypes supportedLocks() const
*/
HB_FUNC_STATIC( QCAMERA_SUPPORTEDLOCKS )
{
  auto obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->supportedLocks() );
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
void load()
*/
HB_FUNC_STATIC( QCAMERA_LOAD )
{
  auto obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->load();
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
void searchAndLock()
*/
void QCamera_searchAndLock1()
{
  auto obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->searchAndLock();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void searchAndLock(QCamera::LockTypes locks)
*/
void QCamera_searchAndLock2()
{
  auto obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->searchAndLock( (QCamera::LockTypes) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void searchAndLock()
[2]void searchAndLock(QCamera::LockTypes locks)
*/

HB_FUNC_STATIC( QCAMERA_SEARCHANDLOCK )
{
  if( ISNUMPAR(0) )
  {
    QCamera_searchAndLock1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QCamera_searchAndLock2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void start()
*/
HB_FUNC_STATIC( QCAMERA_START )
{
  auto obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->start();
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
void stop()
*/
HB_FUNC_STATIC( QCAMERA_STOP )
{
  auto obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->stop();
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
void unload()
*/
HB_FUNC_STATIC( QCAMERA_UNLOAD )
{
  auto obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->unload();
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
void unlock()
*/
void QCamera_unlock1()
{
  auto obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->unlock();
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void unlock(QCamera::LockTypes locks)
*/
void QCamera_unlock2()
{
  auto obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
    obj->unlock( (QCamera::LockTypes) hb_parni(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void unlock()
[2]void unlock(QCamera::LockTypes locks)
*/

HB_FUNC_STATIC( QCAMERA_UNLOCK )
{
  if( ISNUMPAR(0) )
  {
    QCamera_unlock1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QCamera_unlock2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QMultimedia::AvailabilityStatus availability() const override
*/
HB_FUNC_STATIC( QCAMERA_AVAILABILITY )
{
  auto obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->availability() );
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
QCameraViewfinderSettings viewfinderSettings() const
*/
HB_FUNC_STATIC( QCAMERA_VIEWFINDERSETTINGS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  auto obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QCameraViewfinderSettings( obj->viewfinderSettings() );
      Qt5xHb::createReturnClass( ptr, "QCAMERAVIEWFINDERSETTINGS", true );
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
void setViewfinderSettings(const QCameraViewfinderSettings &settings)
*/
HB_FUNC_STATIC( QCAMERA_SETVIEWFINDERSETTINGS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  auto obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQCAMERAVIEWFINDERSETTINGS(1) )
    {
#endif
      obj->setViewfinderSettings( *PQCAMERAVIEWFINDERSETTINGS(1) );
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
QList<QCameraViewfinderSettings> supportedViewfinderSettings(const QCameraViewfinderSettings &settings = QCameraViewfinderSettings()) const
*/
HB_FUNC_STATIC( QCAMERA_SUPPORTEDVIEWFINDERSETTINGS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  auto obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (ISQCAMERAVIEWFINDERSETTINGS(1)||ISNIL(1)) )
    {
#endif
      QList<QCameraViewfinderSettings> list = obj->supportedViewfinderSettings( ISNIL(1)? QCameraViewfinderSettings() : *(QCameraViewfinderSettings *) Qt5xHb::itemGetPtr(1) );
      PHB_DYNS pDynSym = hb_dynsymFindName( "QCAMERAVIEWFINDERSETTINGS" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( auto i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QCameraViewfinderSettings *) new QCameraViewfinderSettings( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QCAMERAVIEWFINDERSETTINGS", HB_ERR_ARGS_BASEPARAMS );
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
QList<QSize> supportedViewfinderResolutions(const QCameraViewfinderSettings &settings = QCameraViewfinderSettings()) const
*/
HB_FUNC_STATIC( QCAMERA_SUPPORTEDVIEWFINDERRESOLUTIONS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  auto obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (ISQCAMERAVIEWFINDERSETTINGS(1)||ISNIL(1)) )
    {
#endif
      QList<QSize> list = obj->supportedViewfinderResolutions( ISNIL(1)? QCameraViewfinderSettings() : *(QCameraViewfinderSettings *) Qt5xHb::itemGetPtr(1) );
      PHB_DYNS pDynSym = hb_dynsymFindName( "QSIZE" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( auto i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QSize *) new QSize( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QSIZE", HB_ERR_ARGS_BASEPARAMS );
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
QList<FrameRateRange> supportedViewfinderFrameRateRanges(const QCameraViewfinderSettings &settings = QCameraViewfinderSettings()) const
*/

/*
QList<QVideoFrame::PixelFormat> supportedViewfinderPixelFormats(const QCameraViewfinderSettings &settings = QCameraViewfinderSettings()) const
*/
HB_FUNC_STATIC( QCAMERA_SUPPORTEDVIEWFINDERPIXELFORMATS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,5,0))
  auto obj = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && (ISQCAMERAVIEWFINDERSETTINGS(1)||ISNIL(1)) )
    {
#endif
      QList<QVideoFrame::PixelFormat> list = obj->supportedViewfinderPixelFormats( ISNIL(1)? QCameraViewfinderSettings() : *(QCameraViewfinderSettings *) Qt5xHb::itemGetPtr(1) );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      for( auto i = 0; i < list.count(); i++ )
      {
        PHB_ITEM pItem = hb_itemPutNI( NULL, (int) list[i] );
        hb_arrayAddForward( pArray, pItem );
        hb_itemRelease(pItem);
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
static QList<QByteArray> availableDevices()
*/
HB_FUNC_STATIC( QCAMERA_AVAILABLEDEVICES )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QList<QByteArray> list = QCamera::availableDevices();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    if( pDynSym )
    {
      for( auto i = 0; i < list.count(); i++ )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QByteArray *) new QByteArray( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    else
    {
      hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QBYTEARRAY", HB_ERR_ARGS_BASEPARAMS );
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

/*
static QString deviceDescription(const QByteArray & device)
*/
HB_FUNC_STATIC( QCAMERA_DEVICEDESCRIPTION )
{
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
#endif
    RQSTRING( QCamera::deviceDescription( *PQBYTEARRAY(1) ) );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
void captureModeChanged( QCamera::CaptureModes mode )
*/
HB_FUNC_STATIC( QCAMERA_ONCAPTUREMODECHANGED )
{
  auto sender = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("captureModeChanged(QCamera::CaptureModes)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals5_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QCamera::captureModeChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (QCamera::CaptureModes arg1) {
          PHB_ITEM cb = Signals5_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals5_return_qobject( (QObject *) sender, "QCAMERA" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, (int) arg1 );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals5_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals5_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals5_get_connection( sender, indexOfSignal ) );

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
void error( QCamera::Error value )
*/
HB_FUNC_STATIC( QCAMERA_ONERROR )
{
  auto sender = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("error(QCamera::Error)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals5_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              QOverload<QCamera::Error>::of(&QCamera::error), 
                                                              [sender, indexOfCodeBlock]
                                                              (QCamera::Error arg1) {
          PHB_ITEM cb = Signals5_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals5_return_qobject( (QObject *) sender, "QCAMERA" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, (int) arg1 );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals5_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals5_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals5_get_connection( sender, indexOfSignal ) );

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
void lockFailed()
*/
HB_FUNC_STATIC( QCAMERA_ONLOCKFAILED )
{
  auto sender = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("lockFailed()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals5_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QCamera::lockFailed, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Signals5_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals5_return_qobject( (QObject *) sender, "QCAMERA" );
            hb_vmEvalBlockV( cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals5_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals5_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals5_get_connection( sender, indexOfSignal ) );

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
void lockStatusChanged( QCamera::LockStatus status, QCamera::LockChangeReason reason )
*/
HB_FUNC_STATIC( QCAMERA_ONLOCKSTATUSCHANGED1 )
{
  auto sender = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("lockStatusChanged(QCamera::LockStatus,QCamera::LockChangeReason)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals5_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              QOverload<QCamera::LockStatus,QCamera::LockChangeReason>::of(&QCamera::lockStatusChanged), 
                                                              [sender, indexOfCodeBlock]
                                                              (QCamera::LockStatus arg1, QCamera::LockChangeReason arg2) {
          PHB_ITEM cb = Signals5_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals5_return_qobject( (QObject *) sender, "QCAMERA" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, (int) arg1 );
            PHB_ITEM pArg2 = hb_itemPutNI( NULL, (int) arg2 );
            hb_vmEvalBlockV( cb, 3, pSender, pArg1, pArg2 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
          }

        });

        Signals5_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals5_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals5_get_connection( sender, indexOfSignal ) );

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
void lockStatusChanged( QCamera::LockType lock, QCamera::LockStatus status, QCamera::LockChangeReason reason )
*/
HB_FUNC_STATIC( QCAMERA_ONLOCKSTATUSCHANGED2 )
{
  auto sender = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("lockStatusChanged(QCamera::LockType,QCamera::LockStatus,QCamera::LockChangeReason)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals5_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              QOverload<QCamera::LockType,QCamera::LockStatus,QCamera::LockChangeReason>::of(&QCamera::lockStatusChanged), 
                                                              [sender, indexOfCodeBlock]
                                                              (QCamera::LockType arg1, QCamera::LockStatus arg2, QCamera::LockChangeReason arg3) {
          PHB_ITEM cb = Signals5_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals5_return_qobject( (QObject *) sender, "QCAMERA" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, (int) arg1 );
            PHB_ITEM pArg2 = hb_itemPutNI( NULL, (int) arg2 );
            PHB_ITEM pArg3 = hb_itemPutNI( NULL, (int) arg3 );
            hb_vmEvalBlockV( cb, 4, pSender, pArg1, pArg2, pArg3 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
            hb_itemRelease( pArg2 );
            hb_itemRelease( pArg3 );
          }

        });

        Signals5_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals5_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals5_get_connection( sender, indexOfSignal ) );

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
void locked()
*/
HB_FUNC_STATIC( QCAMERA_ONLOCKED )
{
  auto sender = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("locked()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals5_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QCamera::locked, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Signals5_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals5_return_qobject( (QObject *) sender, "QCAMERA" );
            hb_vmEvalBlockV( cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals5_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals5_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals5_get_connection( sender, indexOfSignal ) );

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
void stateChanged( QCamera::State state )
*/
HB_FUNC_STATIC( QCAMERA_ONSTATECHANGED )
{
  auto sender = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("stateChanged(QCamera::State)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals5_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QCamera::stateChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (QCamera::State arg1) {
          PHB_ITEM cb = Signals5_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals5_return_qobject( (QObject *) sender, "QCAMERA" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, (int) arg1 );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals5_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals5_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals5_get_connection( sender, indexOfSignal ) );

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
void statusChanged( QCamera::Status status )
*/
HB_FUNC_STATIC( QCAMERA_ONSTATUSCHANGED )
{
  auto sender = (QCamera *) Qt5xHb::itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("statusChanged(QCamera::Status)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals5_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QCamera::statusChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (QCamera::Status arg1) {
          PHB_ITEM cb = Signals5_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals5_return_qobject( (QObject *) sender, "QCAMERA" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, (int) arg1 );
            hb_vmEvalBlockV( cb, 2, pSender, pArg1 );
            hb_itemRelease( pSender );
            hb_itemRelease( pArg1 );
          }

        });

        Signals5_store_connection( indexOfCodeBlock, connection );

        hb_retl( true );
      }
      else
      {
        hb_retl( false );
      }
    }
    else if( hb_pcount() == 0 )
    {
      Signals5_disconnection( sender, indexOfSignal );

      QObject::disconnect( Signals5_get_connection( sender, indexOfSignal ) );

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
