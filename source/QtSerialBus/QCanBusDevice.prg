/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QCANBUSFRAME
REQUEST QVARIANT
#endif

CLASS QCanBusDevice INHERIT QObject

   METHOD setConfigurationParameter
   METHOD configurationParameter
   METHOD configurationKeys
   METHOD writeFrame
   METHOD readFrame
   METHOD framesAvailable
   METHOD framesToWrite
   METHOD waitForFramesWritten
   METHOD waitForFramesReceived
   METHOD connectDevice
   METHOD disconnectDevice
   METHOD state
   METHOD error
   METHOD errorString
   METHOD interpretErrorFrame
   METHOD clear
   METHOD readAllFrames

   METHOD onErrorOccurred
   METHOD onFramesReceived
   METHOD onFramesWritten
   METHOD onStateChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QCanBusDevice
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/Qt>

#ifndef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtSerialBus/QCanBusDevice>
#endif
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_events.h"
#include "qt5xhb_signals4.h"

#ifdef __XHARBOUR__
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
#include <QtSerialBus/QCanBusDevice>
#endif
#endif

#include <QtCore/QVariant>
#include <QtCore/QVector>

/*
explicit QCanBusDevice(QObject *parent = nullptr) [abstract]
*/

/*
virtual void setConfigurationParameter(int key, const QVariant &value)
*/
HB_FUNC_STATIC( QCANBUSDEVICE_SETCONFIGURATIONPARAMETER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCanBusDevice * obj = (QCanBusDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && ISNUM(1) && ISQVARIANT(2) )
    {
#endif
      obj->setConfigurationParameter ( PINT(1), *PQVARIANT(2) );
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
QVariant configurationParameter(int key) const
*/
HB_FUNC_STATIC( QCANBUSDEVICE_CONFIGURATIONPARAMETER )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCanBusDevice * obj = (QCanBusDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      auto ptr = new QVariant( obj->configurationParameter ( PINT(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
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
QVector<int> configurationKeys() const
*/
HB_FUNC_STATIC( QCANBUSDEVICE_CONFIGURATIONKEYS )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCanBusDevice * obj = (QCanBusDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVector<int> list = obj->configurationKeys ();
      PHB_ITEM pArray = hb_itemArrayNew(0);
      for( auto i = 0; i < list.count(); i++ )
      {
        PHB_ITEM pItem = hb_itemPutNI( NULL, list[i] );
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
virtual bool writeFrame(const QCanBusFrame &frame) = 0
*/
HB_FUNC_STATIC( QCANBUSDEVICE_WRITEFRAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCanBusDevice * obj = (QCanBusDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQCANBUSFRAME(1) )
    {
#endif
      RBOOL( obj->writeFrame ( *PQCANBUSFRAME(1) ) );
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
QCanBusFrame readFrame()
*/
HB_FUNC_STATIC( QCANBUSDEVICE_READFRAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCanBusDevice * obj = (QCanBusDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      auto ptr = new QCanBusFrame( obj->readFrame () );
      _qt5xhb_createReturnClass ( ptr, "QCANBUSFRAME", true );
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
qint64 framesAvailable() const
*/
HB_FUNC_STATIC( QCANBUSDEVICE_FRAMESAVAILABLE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCanBusDevice * obj = (QCanBusDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->framesAvailable () );
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
qint64 framesToWrite() const
*/
HB_FUNC_STATIC( QCANBUSDEVICE_FRAMESTOWRITE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCanBusDevice * obj = (QCanBusDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT64( obj->framesToWrite () );
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
virtual bool waitForFramesWritten(int msecs)
*/
HB_FUNC_STATIC( QCANBUSDEVICE_WAITFORFRAMESWRITTEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCanBusDevice * obj = (QCanBusDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->waitForFramesWritten ( PINT(1) ) );
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
virtual bool waitForFramesReceived(int msecs)
*/
HB_FUNC_STATIC( QCANBUSDEVICE_WAITFORFRAMESRECEIVED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCanBusDevice * obj = (QCanBusDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      RBOOL( obj->waitForFramesReceived ( PINT(1) ) );
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
bool connectDevice()
*/
HB_FUNC_STATIC( QCANBUSDEVICE_CONNECTDEVICE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCanBusDevice * obj = (QCanBusDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->connectDevice () );
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
void disconnectDevice()
*/
HB_FUNC_STATIC( QCANBUSDEVICE_DISCONNECTDEVICE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCanBusDevice * obj = (QCanBusDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->disconnectDevice ();
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
CanBusDeviceState state() const
*/
HB_FUNC_STATIC( QCANBUSDEVICE_STATE )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCanBusDevice * obj = (QCanBusDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->state () );
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
CanBusError error() const
*/
HB_FUNC_STATIC( QCANBUSDEVICE_ERROR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCanBusDevice * obj = (QCanBusDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->error () );
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
QString errorString() const
*/
HB_FUNC_STATIC( QCANBUSDEVICE_ERRORSTRING )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCanBusDevice * obj = (QCanBusDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->errorString () );
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
virtual QString interpretErrorFrame(const QCanBusFrame &errorFrame) = 0
*/
HB_FUNC_STATIC( QCANBUSDEVICE_INTERPRETERRORFRAME )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCanBusDevice * obj = (QCanBusDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQCANBUSFRAME(1) )
    {
#endif
      RQSTRING( obj->interpretErrorFrame ( *PQCANBUSFRAME(1) ) );
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
void QCanBusDevice::clear(QCanBusDevice::Directions direction)
*/
HB_FUNC_STATIC( QCANBUSDEVICE_CLEAR )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,12,0))
  QCanBusDevice * obj = (QCanBusDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->clear ( (QCanBusDevice::Directions) hb_parni(1) );
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
QVector<QCanBusFrame> QCanBusDevice::readAllFrames()
*/
HB_FUNC_STATIC( QCANBUSDEVICE_READALLFRAMES )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,12,0))
  QCanBusDevice * obj = (QCanBusDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVector<QCanBusFrame> list = obj->readAllFrames ();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QCANBUSFRAME" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      for( auto i = 0; i < list.count(); i++ )
      {
        if( pDynSym )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QCanBusFrame *) new QCanBusFrame ( list[i] ) );
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
          hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QCANBUSFRAME", HB_ERR_ARGS_BASEPARAMS );
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
void errorOccurred( QCanBusDevice::CanBusError )
*/
HB_FUNC_STATIC( QCANBUSDEVICE_ONERROROCCURRED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCanBusDevice * sender = (QCanBusDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("errorOccurred(QCanBusDevice::CanBusError)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QCanBusDevice::errorOccurred, 
                                                              [sender, indexOfCodeBlock]
                                                              (QCanBusDevice::CanBusError arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QCANBUSDEVICE" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, (int) arg1 );
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
#else
hb_retl( false );
#endif
}

/*
void framesReceived()
*/
HB_FUNC_STATIC( QCANBUSDEVICE_ONFRAMESRECEIVED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCanBusDevice * sender = (QCanBusDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("framesReceived()");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QCanBusDevice::framesReceived, 
                                                              [sender, indexOfCodeBlock]
                                                              () {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QCANBUSDEVICE" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
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
#else
hb_retl( false );
#endif
}

/*
void framesWritten( qint64 framesCount )
*/
HB_FUNC_STATIC( QCANBUSDEVICE_ONFRAMESWRITTEN )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCanBusDevice * sender = (QCanBusDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("framesWritten(qint64)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QCanBusDevice::framesWritten, 
                                                              [sender, indexOfCodeBlock]
                                                              (qint64 arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QCANBUSDEVICE" );
            PHB_ITEM pArg1 = hb_itemPutNLL( NULL, arg1 );
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
#else
hb_retl( false );
#endif
}

/*
void stateChanged( QCanBusDevice::CanBusDeviceState state )
*/
HB_FUNC_STATIC( QCANBUSDEVICE_ONSTATECHANGED )
{
#if (QT_VERSION >= QT_VERSION_CHECK(5,8,0))
  QCanBusDevice * sender = (QCanBusDevice *) _qt5xhb_itemGetPtrStackSelfItem();

  if( sender != nullptr )
  {
    int indexOfSignal = sender->metaObject()->indexOfSignal("stateChanged(QCanBusDevice::CanBusDeviceState)");
    int indexOfCodeBlock = -1;

    if( hb_pcount() == 1 )
    {
      if( Signals4_connection( sender, indexOfSignal, indexOfCodeBlock ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QCanBusDevice::stateChanged, 
                                                              [sender, indexOfCodeBlock]
                                                              (QCanBusDevice::CanBusDeviceState arg1) {
          PHB_ITEM cb = Signals4_return_codeblock( indexOfCodeBlock );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals4_return_qobject ( (QObject *) sender, "QCANBUSDEVICE" );
            PHB_ITEM pArg1 = hb_itemPutNI( NULL, (int) arg1 );
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
#else
hb_retl( false );
#endif
}

#pragma ENDDUMP
