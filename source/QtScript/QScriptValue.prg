/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QDATETIME
REQUEST QMETAOBJECT
REQUEST QOBJECT
REQUEST QREGEXP
REQUEST QSCRIPTCLASS
REQUEST QSCRIPTENGINE
REQUEST QVARIANT
#endif

CLASS QScriptValue

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new8
   METHOD new9
   METHOD new10
   METHOD new
   METHOD delete
   METHOD call
   METHOD construct
   METHOD data
   METHOD engine
   METHOD equals
   METHOD instanceOf
   METHOD isArray
   METHOD isBool
   METHOD isDate
   METHOD isError
   METHOD isFunction
   METHOD isNull
   METHOD isNumber
   METHOD isObject
   METHOD isQMetaObject
   METHOD isQObject
   METHOD isRegExp
   METHOD isString
   METHOD isUndefined
   METHOD isValid
   METHOD isVariant
   METHOD lessThan
   METHOD property
   METHOD propertyFlags
   METHOD prototype
   METHOD scriptClass
   METHOD setData
   METHOD setProperty
   METHOD setPrototype
   METHOD setScriptClass
   METHOD strictlyEquals
   METHOD toBool
   METHOD toDateTime
   METHOD toInt32
   METHOD toQMetaObject
   METHOD toQObject
   METHOD toRegExp
   METHOD toString
   METHOD toUInt16
   METHOD toUInt32
   METHOD toVariant

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QScriptValue
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QScriptValue>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals3.h"

#ifdef __XHARBOUR__
#include <QScriptValue>
#endif

#include <QDateTime>
#include <QRegExp>
#include <QVariant>
#include <QScriptEngine>

/*
QScriptValue()
*/
HB_FUNC_STATIC( QSCRIPTVALUE_NEW1 )
{
  QScriptValue * o = new QScriptValue ();
  _qt5xhb_returnNewObject( o, true );
}

/*
QScriptValue(const QScriptValue & other)
*/
HB_FUNC_STATIC( QSCRIPTVALUE_NEW2 )
{
  QScriptValue * o = new QScriptValue ( *PQSCRIPTVALUE(1) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QScriptValue(SpecialValue value)
*/
HB_FUNC_STATIC( QSCRIPTVALUE_NEW3 )
{
  QScriptValue * o = new QScriptValue ( (QScriptValue::SpecialValue) hb_parni(1) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QScriptValue(bool value)
*/
HB_FUNC_STATIC( QSCRIPTVALUE_NEW4 )
{
  QScriptValue * o = new QScriptValue ( PBOOL(1) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QScriptValue(int value)
*/
HB_FUNC_STATIC( QSCRIPTVALUE_NEW5 )
{
  QScriptValue * o = new QScriptValue ( PINT(1) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QScriptValue(uint value)
*/
HB_FUNC_STATIC( QSCRIPTVALUE_NEW6 )
{
  QScriptValue * o = new QScriptValue ( PUINT(1) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QScriptValue(qsreal value)
*/

/*
QScriptValue(const QString & value)
*/
HB_FUNC_STATIC( QSCRIPTVALUE_NEW8 )
{
  QScriptValue * o = new QScriptValue ( PQSTRING(1) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QScriptValue(const QLatin1String & value)
*/
HB_FUNC_STATIC( QSCRIPTVALUE_NEW9 )
{
  QScriptValue * o = new QScriptValue ( *PQLATIN1STRING(1) );
  _qt5xhb_returnNewObject( o, true );
}

/*
QScriptValue(const char * value)
*/
HB_FUNC_STATIC( QSCRIPTVALUE_NEW10 )
{
  QScriptValue * o = new QScriptValue ( PCONSTCHAR(1) );
  _qt5xhb_returnNewObject( o, true );
}

//[1]QScriptValue()
//[2]QScriptValue(const QScriptValue & other)
//[3]QScriptValue(SpecialValue value)
//[4]QScriptValue(bool value)
//[5]QScriptValue(int value)
//[6]QScriptValue(uint value)
//[7]QScriptValue(qsreal value)
//[8]QScriptValue(const QString & value)
//[9]QScriptValue(const QLatin1String & value)
//[10]QScriptValue(const char * value)

HB_FUNC_STATIC( QSCRIPTVALUE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSCRIPTVALUE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQSCRIPTVALUE(1) )
  {
    HB_FUNC_EXEC( QSCRIPTVALUE_NEW2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QSCRIPTVALUE_NEW5 );
  }
  else if( ISNUMPAR(1) && ISLOG(1) )
  {
    HB_FUNC_EXEC( QSCRIPTVALUE_NEW4 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSCRIPTVALUE_NEW8 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSCRIPTVALUE_DELETE )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();

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
QScriptValue call(const QScriptValue & thisObject = QScriptValue(), const QScriptValueList & args = QScriptValueList())
*/

/*
QScriptValue call(const QScriptValue & thisObject, const QScriptValue & arguments)
*/
void QScriptValue_call2 ()
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      QScriptValue * ptr = new QScriptValue( obj->call ( *PQSCRIPTVALUE(1), *PQSCRIPTVALUE(2) ) );
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
  }
}

//[1]QScriptValue call(const QScriptValue & thisObject = QScriptValue(), const QScriptValueList & args = QScriptValueList())
//[2]QScriptValue call(const QScriptValue & thisObject, const QScriptValue & arguments)

HB_FUNC_STATIC( QSCRIPTVALUE_CALL )
{
  if( ISNUMPAR(2) && ISQSCRIPTVALUE(1) && ISQSCRIPTVALUE(2) )
  {
    QScriptValue_call2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QScriptValue construct(const QScriptValueList & args = QScriptValueList())
*/

/*
QScriptValue construct(const QScriptValue & arguments)
*/
void QScriptValue_construct2 ()
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
      QScriptValue * ptr = new QScriptValue( obj->construct ( *PQSCRIPTVALUE(1) ) );
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
  }
}

//[1]QScriptValue construct(const QScriptValueList & args = QScriptValueList())
//[2]QScriptValue construct(const QScriptValue & arguments)

HB_FUNC_STATIC( QSCRIPTVALUE_CONSTRUCT )
{
  if( ISNUMPAR(1) && ISQSCRIPTVALUE(1) )
  {
    QScriptValue_construct2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QScriptValue data() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_DATA )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QScriptValue * ptr = new QScriptValue( obj->data () );
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
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
QScriptEngine * engine() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ENGINE )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QScriptEngine * ptr = obj->engine ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QSCRIPTENGINE" );
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
bool equals(const QScriptValue & other) const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_EQUALS )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSCRIPTVALUE(1) )
    {
#endif
      RBOOL( obj->equals ( *PQSCRIPTVALUE(1) ) );
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
bool instanceOf(const QScriptValue & other) const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_INSTANCEOF )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSCRIPTVALUE(1) )
    {
#endif
      RBOOL( obj->instanceOf ( *PQSCRIPTVALUE(1) ) );
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
bool isArray() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISARRAY )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isArray () );
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
bool isBool() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISBOOL )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isBool () );
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
bool isDate() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISDATE )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isDate () );
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
bool isError() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISERROR )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isError () );
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
bool isFunction() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISFUNCTION )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isFunction () );
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
bool isNull() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISNULL )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isNull () );
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
bool isNumber() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISNUMBER )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isNumber () );
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
bool isObject() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISOBJECT )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isObject () );
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
bool isQMetaObject() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISQMETAOBJECT )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isQMetaObject () );
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
bool isQObject() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISQOBJECT )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isQObject () );
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
bool isRegExp() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISREGEXP )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isRegExp () );
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
bool isString() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISSTRING )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isString () );
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
bool isUndefined() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISUNDEFINED )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isUndefined () );
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
bool isValid() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISVALID )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isValid () );
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
bool isVariant() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_ISVARIANT )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isVariant () );
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
bool lessThan(const QScriptValue & other) const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_LESSTHAN )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSCRIPTVALUE(1) )
    {
#endif
      RBOOL( obj->lessThan ( *PQSCRIPTVALUE(1) ) );
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
QScriptValue property(const QString & name, const ResolveFlags & mode = ResolvePrototype) const
*/

/*
QScriptValue property(const QScriptString & name, const ResolveFlags & mode = ResolvePrototype) const
*/

/*
QScriptValue property(quint32 arrayIndex, const ResolveFlags & mode = ResolvePrototype) const
*/

//[1]QScriptValue property(const QString & name, const ResolveFlags & mode = ResolvePrototype) const
//[2]QScriptValue property(const QScriptString & name, const ResolveFlags & mode = ResolvePrototype) const
//[3]QScriptValue property(quint32 arrayIndex, const ResolveFlags & mode = ResolvePrototype) const

HB_FUNC_STATIC( QSCRIPTVALUE_PROPERTY )
{
}

/*
QScriptValue::PropertyFlags propertyFlags(const QString & name, const ResolveFlags & mode = ResolvePrototype) const
*/

/*
QScriptValue::PropertyFlags propertyFlags(const QScriptString & name, const ResolveFlags & mode = ResolvePrototype) const
*/

//[1]QScriptValue::PropertyFlags propertyFlags(const QString & name, const ResolveFlags & mode = ResolvePrototype) const
//[2]QScriptValue::PropertyFlags propertyFlags(const QScriptString & name, const ResolveFlags & mode = ResolvePrototype) const

HB_FUNC_STATIC( QSCRIPTVALUE_PROPERTYFLAGS )
{
}

/*
QScriptValue prototype() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_PROTOTYPE )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QScriptValue * ptr = new QScriptValue( obj->prototype () );
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
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
QScriptClass * scriptClass() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_SCRIPTCLASS )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QScriptClass * ptr = obj->scriptClass ();
      _qt5xhb_createReturnClass ( ptr, "QSCRIPTCLASS", false );
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
void setData(const QScriptValue & data)
*/
HB_FUNC_STATIC( QSCRIPTVALUE_SETDATA )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSCRIPTVALUE(1) )
    {
#endif
      obj->setData ( *PQSCRIPTVALUE(1) );
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
void setProperty(const QString & name, const QScriptValue & value, const PropertyFlags & flags = KeepExistingFlags)
*/

/*
void setProperty(const QScriptString & name, const QScriptValue & value, const PropertyFlags & flags = KeepExistingFlags)
*/

/*
void setProperty(quint32 arrayIndex, const QScriptValue & value, const PropertyFlags & flags = KeepExistingFlags)
*/

//[1]void setProperty(const QString & name, const QScriptValue & value, const PropertyFlags & flags = KeepExistingFlags)
//[2]void setProperty(const QScriptString & name, const QScriptValue & value, const PropertyFlags & flags = KeepExistingFlags)
//[3]void setProperty(quint32 arrayIndex, const QScriptValue & value, const PropertyFlags & flags = KeepExistingFlags)

HB_FUNC_STATIC( QSCRIPTVALUE_SETPROPERTY )
{
}

/*
void setPrototype(const QScriptValue & prototype)
*/
HB_FUNC_STATIC( QSCRIPTVALUE_SETPROTOTYPE )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSCRIPTVALUE(1) )
    {
#endif
      obj->setPrototype ( *PQSCRIPTVALUE(1) );
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
void setScriptClass(QScriptClass * scriptClass)
*/
HB_FUNC_STATIC( QSCRIPTVALUE_SETSCRIPTCLASS )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSCRIPTCLASS(1) )
    {
#endif
      obj->setScriptClass ( PQSCRIPTCLASS(1) );
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
bool strictlyEquals(const QScriptValue & other) const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_STRICTLYEQUALS )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQSCRIPTVALUE(1) )
    {
#endif
      RBOOL( obj->strictlyEquals ( *PQSCRIPTVALUE(1) ) );
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
bool toBool() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_TOBOOL )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->toBool () );
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
QDateTime toDateTime() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_TODATETIME )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDateTime * ptr = new QDateTime( obj->toDateTime () );
      _qt5xhb_createReturnClass ( ptr, "QDATETIME", true );
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
qint32 toInt32() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_TOINT32 )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQINT32( obj->toInt32 () );
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
qsreal toInteger() const
*/

/*
qsreal toNumber() const
*/

/*
const QMetaObject * toQMetaObject() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_TOQMETAOBJECT )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      const QMetaObject * ptr = obj->toQMetaObject ();
      _qt5xhb_createReturnClass ( ptr, "QMETAOBJECT", false );
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
QObject * toQObject() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_TOQOBJECT )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QObject * ptr = obj->toQObject ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
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
QRegExp toRegExp() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_TOREGEXP )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRegExp * ptr = new QRegExp( obj->toRegExp () );
      _qt5xhb_createReturnClass ( ptr, "QREGEXP", true );
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
QString toString() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_TOSTRING )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->toString () );
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
quint16 toUInt16() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_TOUINT16 )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQUINT16( obj->toUInt16 () );
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
quint32 toUInt32() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_TOUINT32 )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQUINT32( obj->toUInt32 () );
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
QVariant toVariant() const
*/
HB_FUNC_STATIC( QSCRIPTVALUE_TOVARIANT )
{
  QScriptValue * obj = (QScriptValue *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVariant * ptr = new QVariant( obj->toVariant () );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

HB_FUNC_STATIC( QSCRIPTVALUE_NEWFROM )
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

HB_FUNC_STATIC( QSCRIPTVALUE_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QSCRIPTVALUE_NEWFROM );
}

HB_FUNC_STATIC( QSCRIPTVALUE_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QSCRIPTVALUE_NEWFROM );
}

HB_FUNC_STATIC( QSCRIPTVALUE_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QSCRIPTVALUE_SETSELFDESTRUCTION )
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
