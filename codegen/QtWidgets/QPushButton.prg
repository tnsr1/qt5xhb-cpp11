%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtWidgets

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QAbstractButton

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtWidgets/QMenu>

$prototype=explicit QPushButton ( QWidget * parent = nullptr )
$internalConstructor=|new1|QWidget *=nullptr

$prototype=explicit QPushButton ( const QString & text, QWidget * parent = nullptr )
$internalConstructor=|new2|const QString &,QWidget *=nullptr

$prototype=QPushButton ( const QIcon & icon, const QString & text, QWidget * parent = nullptr )
$internalConstructor=|new3|const QIcon &,const QString &,QWidget *=nullptr

$prototype=QPushButton ( const QPixmap & icon, const QString & text, QWidget * parent = nullptr )
$internalConstructor=|new4|const QPixmap &,const QString &,QWidget *=nullptr

/*
[1]explicit QPushButton ( QWidget * parent = nullptr )
[2]explicit QPushButton ( const QString & text, QWidget * parent = nullptr )
[3]QPushButton ( const QIcon & icon, const QString & text, QWidget * parent = nullptr )
%% metodo extra para permitir o uso da classe QPixmap
[4]QPushButton ( const QPixmap & icon, const QString & text, QWidget * parent = nullptr )
*/

HB_FUNC_STATIC( QPUSHBUTTON_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QPushButton_new1();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQWIDGET(2) )
  {
    QPushButton_new2();
  }
  else if( ISBETWEEN(2,3) && (ISQICON(1)||ISCHAR(1)) && ISCHAR(2) && ISOPTQWIDGET(3) )
  {
    QPushButton_new3();
  }
  else if( ISBETWEEN(2,3) && ISQPIXMAP(1) && ISCHAR(2) && ISOPTQWIDGET(3) )
  {
    QPushButton_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=bool autoDefault () const
$method=|bool|autoDefault|

$prototype=bool isDefault () const
$method=|bool|isDefault|

$prototype=bool isFlat () const
$method=|bool|isFlat|

$prototype=QMenu * menu () const
$method=|QMenu *|menu||#ifndef QT_NO_MENU

$prototype=void setAutoDefault ( bool )
$method=|void|setAutoDefault|bool

$prototype=void setDefault ( bool )
$method=|void|setDefault|bool

$prototype=void setFlat ( bool )
$method=|void|setFlat|bool

$prototype=void setMenu ( QMenu * menu )
$method=|void|setMenu|QMenu *|#ifndef QT_NO_MENU

$prototype=void showMenu ()
$method=|void|showMenu||#ifndef QT_NO_MENU

$prototype=QSize minimumSizeHint () const
$method=|QSize|minimumSizeHint|

$prototype=QSize sizeHint () const
$method=|QSize|sizeHint|

#pragma ENDDUMP
