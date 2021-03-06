/*

  Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT5XHB_MACROS_QTVIRTUALKEYBOARD_H
#define QT5XHB_MACROS_QTVIRTUALKEYBOARD_H

#define ISQVIRTUALKEYBOARDABSTRACTINPUTMETHOD(n)            Qt5xHb::isObjectDerivedFrom(n,"QVirtualKeyboardAbstractInputMethod")
#define ISQVIRTUALKEYBOARDEXTENSIONPLUGIN(n)                Qt5xHb::isObjectDerivedFrom(n,"QVirtualKeyboardExtensionPlugin")
#define ISQVIRTUALKEYBOARDINPUTCONTEXT(n)                   Qt5xHb::isObjectDerivedFrom(n,"QVirtualKeyboardInputContext")
#define ISQVIRTUALKEYBOARDINPUTENGINE(n)                    Qt5xHb::isObjectDerivedFrom(n,"QVirtualKeyboardInputEngine")
#define ISQVIRTUALKEYBOARDSELECTIONLISTMODEL(n)             Qt5xHb::isObjectDerivedFrom(n,"QVirtualKeyboardSelectionListModel")
#define ISQVIRTUALKEYBOARDTRACE(n)                          Qt5xHb::isObjectDerivedFrom(n,"QVirtualKeyboardTrace")

#define PQVIRTUALKEYBOARDABSTRACTINPUTMETHOD(n)             (QVirtualKeyboardAbstractInputMethod *) Qt5xHb::itemGetPtr(n)
#define PQVIRTUALKEYBOARDEXTENSIONPLUGIN(n)                 (QVirtualKeyboardExtensionPlugin *) Qt5xHb::itemGetPtr(n)
#define PQVIRTUALKEYBOARDINPUTCONTEXT(n)                    (QVirtualKeyboardInputContext *) Qt5xHb::itemGetPtr(n)
#define PQVIRTUALKEYBOARDINPUTENGINE(n)                     (QVirtualKeyboardInputEngine *) Qt5xHb::itemGetPtr(n)
#define PQVIRTUALKEYBOARDSELECTIONLISTMODEL(n)              (QVirtualKeyboardSelectionListModel *) Qt5xHb::itemGetPtr(n)
#define PQVIRTUALKEYBOARDTRACE(n)                           (QVirtualKeyboardTrace *) Qt5xHb::itemGetPtr(n)

#define OPQVIRTUALKEYBOARDABSTRACTINPUTMETHOD(n,v)          ISNIL(n)? v : (QVirtualKeyboardAbstractInputMethod *) Qt5xHb::itemGetPtr(n)
#define OPQVIRTUALKEYBOARDEXTENSIONPLUGIN(n,v)              ISNIL(n)? v : (QVirtualKeyboardExtensionPlugin *) Qt5xHb::itemGetPtr(n)
#define OPQVIRTUALKEYBOARDINPUTCONTEXT(n,v)                 ISNIL(n)? v : (QVirtualKeyboardInputContext *) Qt5xHb::itemGetPtr(n)
#define OPQVIRTUALKEYBOARDINPUTENGINE(n,v)                  ISNIL(n)? v : (QVirtualKeyboardInputEngine *) Qt5xHb::itemGetPtr(n)
#define OPQVIRTUALKEYBOARDSELECTIONLISTMODEL(n,v)           ISNIL(n)? v : (QVirtualKeyboardSelectionListModel *) Qt5xHb::itemGetPtr(n)
#define OPQVIRTUALKEYBOARDTRACE(n,v)                        ISNIL(n)? v : (QVirtualKeyboardTrace *) Qt5xHb::itemGetPtr(n)

#endif /* QT5XHB_MACROS_QTVIRTUALKEYBOARD_H */
