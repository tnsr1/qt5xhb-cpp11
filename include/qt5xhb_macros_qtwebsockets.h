/*

  Qt5xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT5XHB_MACROS_QTWEBSOCKETS_H
#define QT5XHB_MACROS_QTWEBSOCKETS_H

#define ISQMASKGENERATOR(n)                                 _qt5xhb_isObjectDerivedFrom(n,"QMaskGenerator")
#define ISQWEBSOCKET(n)                                     _qt5xhb_isObjectDerivedFrom(n,"QWebSocket")
#define ISQWEBSOCKETCORSAUTHENTICATOR(n)                    _qt5xhb_isObjectDerivedFrom(n,"QWebSocketCorsAuthenticator")
#define ISQWEBSOCKETSERVER(n)                               _qt5xhb_isObjectDerivedFrom(n,"QWebSocketServer")

#define PQMASKGENERATOR(n)                                  (QMaskGenerator *) _qt5xhb_itemGetPtr(n)
#define PQWEBSOCKET(n)                                      (QWebSocket *) _qt5xhb_itemGetPtr(n)
#define PQWEBSOCKETCORSAUTHENTICATOR(n)                     (QWebSocketCorsAuthenticator *) _qt5xhb_itemGetPtr(n)
#define PQWEBSOCKETSERVER(n)                                (QWebSocketServer *) _qt5xhb_itemGetPtr(n)

#define OPQMASKGENERATOR(n,v)                               ISNIL(n)? v : (QMaskGenerator *) _qt5xhb_itemGetPtr(n)
#define OPQWEBSOCKET(n,v)                                   ISNIL(n)? v : (QWebSocket *) _qt5xhb_itemGetPtr(n)
#define OPQWEBSOCKETCORSAUTHENTICATOR(n,v)                  ISNIL(n)? v : (QWebSocketCorsAuthenticator *) _qt5xhb_itemGetPtr(n)
#define OPQWEBSOCKETSERVER(n,v)                             ISNIL(n)? v : (QWebSocketServer *) _qt5xhb_itemGetPtr(n)

#endif /* QT5XHB_MACROS_QTWEBSOCKETS_H */
