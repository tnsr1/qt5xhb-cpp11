/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT5XHB_NO_REQUESTS
REQUEST QOBJECT
REQUEST QQMLCONTEXT
REQUEST QQMLENGINE
REQUEST QQMLERROR
REQUEST QVARIANT
#endif

CLASS QQmlExpression INHERIT QObject

   METHOD new
   METHOD delete
   METHOD clearError
   METHOD columnNumber
   METHOD context
   METHOD engine
   METHOD error
   METHOD evaluate
   METHOD expression
   METHOD hasError
   METHOD lineNumber
   METHOD notifyOnValueChanged
   METHOD scopeObject
   METHOD setExpression
   METHOD setNotifyOnValueChanged
   METHOD setSourceLocation
   METHOD sourceFile

   METHOD onValueChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QQmlExpression
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <Qt>

#ifndef __XHARBOUR__
#include <QQmlExpression>
#endif

#include "qt5xhb_common.h"
#include "qt5xhb_macros.h"
#include "qt5xhb_utils.h"
#include "qt5xhb_signals2.h"

#ifdef __XHARBOUR__
#include <QQmlExpression>
#endif

#include <QQmlContext>
#include <QQmlEngine>

/*
QQmlExpression()
*/
void QQmlExpression_new1 ()
{
  QQmlExpression * o = new QQmlExpression ();
  _qt5xhb_returnNewObject( o, false );
}

/*
QQmlExpression(QQmlContext * ctxt, QObject * scope, const QString & expression, QObject * parent = 0)
*/
void QQmlExpression_new2 ()
{
  QQmlExpression * o = new QQmlExpression ( PQQMLCONTEXT(1), PQOBJECT(2), PQSTRING(3), OPQOBJECT(4,0) );
  _qt5xhb_returnNewObject( o, false );
}

/*
QQmlExpression(const QQmlScriptString & script, QQmlContext * ctxt = 0, QObject * scope = 0, QObject * parent = 0)
*/
void QQmlExpression_new3 ()
{
  QQmlExpression * o = new QQmlExpression ( *PQQMLSCRIPTSTRING(1), OPQQMLCONTEXT(2,0), OPQOBJECT(3,0), OPQOBJECT(4,0) );
  _qt5xhb_returnNewObject( o, false );
}

//[1]QQmlExpression()
//[2]QQmlExpression(QQmlContext * ctxt, QObject * scope, const QString & expression, QObject * parent = 0)
//[3]QQmlExpression(const QQmlScriptString & script, QQmlContext * ctxt = 0, QObject * scope = 0, QObject * parent = 0)

HB_FUNC_STATIC( QQMLEXPRESSION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QQmlExpression_new1();
  }
  else if( ISBETWEEN(3,4) && ISQQMLCONTEXT(1) && ISQOBJECT(2) && ISCHAR(3) && ISOPTQOBJECT(4) )
  {
    QQmlExpression_new2();
  }
  else if( ISBETWEEN(1,4) && ISQQMLSCRIPTSTRING(1) && (ISQQMLCONTEXT(2)||ISNIL(2)) && ISOPTQOBJECT(3) && ISOPTQOBJECT(4) )
  {
    QQmlExpression_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QQMLEXPRESSION_DELETE )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();

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
void clearError()
*/
HB_FUNC_STATIC( QQMLEXPRESSION_CLEARERROR )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->clearError ();
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
int columnNumber() const
*/
HB_FUNC_STATIC( QQMLEXPRESSION_COLUMNNUMBER )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->columnNumber () );
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
QQmlContext * context() const
*/
HB_FUNC_STATIC( QQMLEXPRESSION_CONTEXT )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QQmlContext * ptr = obj->context ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QQMLCONTEXT" );
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
QQmlEngine * engine() const
*/
HB_FUNC_STATIC( QQMLEXPRESSION_ENGINE )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QQmlEngine * ptr = obj->engine ();
      _qt5xhb_createReturnQObjectClass ( ptr, "QQMLENGINE" );
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
QQmlError error() const
*/
HB_FUNC_STATIC( QQMLEXPRESSION_ERROR )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QQmlError * ptr = new QQmlError( obj->error () );
      _qt5xhb_createReturnClass ( ptr, "QQMLERROR", true );
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
QVariant evaluate(bool * valueIsUndefined = 0)
*/
HB_FUNC_STATIC( QQMLEXPRESSION_EVALUATE )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTLOG(1) )
    {
#endif
      bool par1;
      QVariant * ptr = new QVariant( obj->evaluate ( &par1 ) );
      _qt5xhb_createReturnClass ( ptr, "QVARIANT", true );
      hb_storl( par1, 1 );
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
QString expression() const
*/
HB_FUNC_STATIC( QQMLEXPRESSION_EXPRESSION )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->expression () );
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
bool hasError() const
*/
HB_FUNC_STATIC( QQMLEXPRESSION_HASERROR )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->hasError () );
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
int lineNumber() const
*/
HB_FUNC_STATIC( QQMLEXPRESSION_LINENUMBER )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->lineNumber () );
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
bool notifyOnValueChanged() const
*/
HB_FUNC_STATIC( QQMLEXPRESSION_NOTIFYONVALUECHANGED )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->notifyOnValueChanged () );
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
QObject * scopeObject() const
*/
HB_FUNC_STATIC( QQMLEXPRESSION_SCOPEOBJECT )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QObject * ptr = obj->scopeObject ();
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
void setExpression(const QString & expression)
*/
HB_FUNC_STATIC( QQMLEXPRESSION_SETEXPRESSION )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      obj->setExpression ( PQSTRING(1) );
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
void setNotifyOnValueChanged(bool notifyOnChange)
*/
HB_FUNC_STATIC( QQMLEXPRESSION_SETNOTIFYONVALUECHANGED )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISLOG(1) )
    {
#endif
      obj->setNotifyOnValueChanged ( PBOOL(1) );
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
void setSourceLocation(const QString & url, int line, int column = 0)
*/
HB_FUNC_STATIC( QQMLEXPRESSION_SETSOURCELOCATION )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISCHAR(1) && ISNUM(2) && ISOPTNUM(3) )
    {
#endif
      obj->setSourceLocation ( PQSTRING(1), PINT(2), OPINT(3,0) );
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
QString sourceFile() const
*/
HB_FUNC_STATIC( QQMLEXPRESSION_SOURCEFILE )
{
  QQmlExpression * obj = (QQmlExpression *) _qt5xhb_itemGetPtrStackSelfItem();

  if( obj != nullptr )
  {
#ifndef QT5XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->sourceFile () );
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
void valueChanged()
*/
HB_FUNC_STATIC( QQMLEXPRESSION_ONVALUECHANGED )
{
  if( hb_pcount() == 1 )
  {
    QQmlExpression * sender = (QQmlExpression *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      if( Signals2_connection( sender, "valueChanged()" ) )
      {

        QMetaObject::Connection connection = QObject::connect(sender, 
                                                              &QQmlExpression::valueChanged, 
                                                              [sender]
                                                              () {
          PHB_ITEM cb = Signals2_return_codeblock( sender, "valueChanged()" );

          if( cb != nullptr )
          {
            PHB_ITEM pSender = Signals2_return_qobject ( (QObject *) sender, "QQMLEXPRESSION" );
            hb_vmEvalBlockV( (PHB_ITEM) cb, 1, pSender );
            hb_itemRelease( pSender );
          }

        });

        Signals2_store_connection( sender, "valueChanged()", connection );

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
  else if( hb_pcount() == 0 )
  {
    QQmlExpression * sender = (QQmlExpression *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

    if( sender != nullptr )
    {
      Signals2_disconnection( sender, "valueChanged()" );

      QObject::disconnect( Signals2_get_connection( sender, "valueChanged()" ) );

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
