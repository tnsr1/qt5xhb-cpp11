/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT5XHB_MACROS_QTSCXML_H
#define QT5XHB_MACROS_QTSCXML_H

#define ISQSCXMLCOMPILER(n)                                 Qt5xHb::isObjectDerivedFrom(n,"QScxmlCompiler")
#define ISQSCXMLCPPDATAMODEL(n)                             Qt5xHb::isObjectDerivedFrom(n,"QScxmlCppDataModel")
#define ISQSCXMLDATAMODEL(n)                                Qt5xHb::isObjectDerivedFrom(n,"QScxmlDataModel")
#define ISQSCXMLDYNAMICSCXMLSERVICEFACTORY(n)               Qt5xHb::isObjectDerivedFrom(n,"QScxmlDynamicScxmlServiceFactory")
#define ISQSCXMLECMASCRIPTDATAMODEL(n)                      Qt5xHb::isObjectDerivedFrom(n,"QScxmlEcmaScriptDataModel")
#define ISQSCXMLERROR(n)                                    Qt5xHb::isObjectDerivedFrom(n,"QScxmlError")
#define ISQSCXMLEVENT(n)                                    Qt5xHb::isObjectDerivedFrom(n,"QScxmlEvent")
#define ISQSCXMLINVOKABLESERVICE(n)                         Qt5xHb::isObjectDerivedFrom(n,"QScxmlInvokableService")
#define ISQSCXMLINVOKABLESERVICEFACTORY(n)                  Qt5xHb::isObjectDerivedFrom(n,"QScxmlInvokableServiceFactory")
#define ISQSCXMLNULLDATAMODEL(n)                            Qt5xHb::isObjectDerivedFrom(n,"QScxmlNullDataModel")
#define ISQSCXMLSTATEMACHINE(n)                             Qt5xHb::isObjectDerivedFrom(n,"QScxmlStateMachine")
#define ISQSCXMLSTATICSCXMLSERVICEFACTORY(n)                Qt5xHb::isObjectDerivedFrom(n,"QScxmlStaticScxmlServiceFactory")
#define ISQSCXMLTABLEDATA(n)                                Qt5xHb::isObjectDerivedFrom(n,"QScxmlTableData")

#define PQSCXMLCOMPILER(n)                                  (QScxmlCompiler *) Qt5xHb::itemGetPtr(n)
#define PQSCXMLCPPDATAMODEL(n)                              (QScxmlCppDataModel *) Qt5xHb::itemGetPtr(n)
#define PQSCXMLDATAMODEL(n)                                 (QScxmlDataModel *) Qt5xHb::itemGetPtr(n)
#define PQSCXMLDYNAMICSCXMLSERVICEFACTORY(n)                (QScxmlDynamicScxmlServiceFactory *) Qt5xHb::itemGetPtr(n)
#define PQSCXMLECMASCRIPTDATAMODEL(n)                       (QScxmlEcmaScriptDataModel *) Qt5xHb::itemGetPtr(n)
#define PQSCXMLERROR(n)                                     (QScxmlError *) Qt5xHb::itemGetPtr(n)
#define PQSCXMLEVENT(n)                                     (QScxmlEvent *) Qt5xHb::itemGetPtr(n)
#define PQSCXMLINVOKABLESERVICE(n)                          (QScxmlInvokableService *) Qt5xHb::itemGetPtr(n)
#define PQSCXMLINVOKABLESERVICEFACTORY(n)                   (QScxmlInvokableServiceFactory *) Qt5xHb::itemGetPtr(n)
#define PQSCXMLNULLDATAMODEL(n)                             (QScxmlNullDataModel *) Qt5xHb::itemGetPtr(n)
#define PQSCXMLSTATEMACHINE(n)                              (QScxmlStateMachine *) Qt5xHb::itemGetPtr(n)
#define PQSCXMLSTATICSCXMLSERVICEFACTORY(n)                 (QScxmlStaticScxmlServiceFactory *) Qt5xHb::itemGetPtr(n)
#define PQSCXMLTABLEDATA(n)                                 (QScxmlTableData *) Qt5xHb::itemGetPtr(n)

#define OPQSCXMLCOMPILER(n,v)                               ISNIL(n)? v : (QScxmlCompiler *) Qt5xHb::itemGetPtr(n)
#define OPQSCXMLCPPDATAMODEL(n,v)                           ISNIL(n)? v : (QScxmlCppDataModel *) Qt5xHb::itemGetPtr(n)
#define OPQSCXMLDATAMODEL(n,v)                              ISNIL(n)? v : (QScxmlDataModel *) Qt5xHb::itemGetPtr(n)
#define OPQSCXMLDYNAMICSCXMLSERVICEFACTORY(n,v)             ISNIL(n)? v : (QScxmlDynamicScxmlServiceFactory *) Qt5xHb::itemGetPtr(n)
#define OPQSCXMLECMASCRIPTDATAMODEL(n,v)                    ISNIL(n)? v : (QScxmlEcmaScriptDataModel *) Qt5xHb::itemGetPtr(n)
#define OPQSCXMLERROR(n,v)                                  ISNIL(n)? v : (QScxmlError *) Qt5xHb::itemGetPtr(n)
#define OPQSCXMLEVENT(n,v)                                  ISNIL(n)? v : (QScxmlEvent *) Qt5xHb::itemGetPtr(n)
#define OPQSCXMLINVOKABLESERVICE(n,v)                       ISNIL(n)? v : (QScxmlInvokableService *) Qt5xHb::itemGetPtr(n)
#define OPQSCXMLINVOKABLESERVICEFACTORY(n,v)                ISNIL(n)? v : (QScxmlInvokableServiceFactory *) Qt5xHb::itemGetPtr(n)
#define OPQSCXMLNULLDATAMODEL(n,v)                          ISNIL(n)? v : (QScxmlNullDataModel *) Qt5xHb::itemGetPtr(n)
#define OPQSCXMLSTATEMACHINE(n,v)                           ISNIL(n)? v : (QScxmlStateMachine *) Qt5xHb::itemGetPtr(n)
#define OPQSCXMLSTATICSCXMLSERVICEFACTORY(n,v)              ISNIL(n)? v : (QScxmlStaticScxmlServiceFactory *) Qt5xHb::itemGetPtr(n)
#define OPQSCXMLTABLEDATA(n,v)                              ISNIL(n)? v : (QScxmlTableData *) Qt5xHb::itemGetPtr(n)

#endif /* QT5XHB_MACROS_QTSCXML_H */