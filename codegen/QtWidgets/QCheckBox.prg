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

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=explicit QCheckBox ( QWidget * parent = nullptr )
$internalConstructor=|new1|QWidget *=nullptr

$prototype=explicit QCheckBox ( const QString & text, QWidget * parent = nullptr )
$internalConstructor=|new2|const QString &,QWidget *=nullptr

/*
[1]explicit QCheckBox ( QWidget * parent = nullptr )
[2]explicit QCheckBox ( const QString & text, QWidget * parent = nullptr )
*/

HB_FUNC_STATIC( QCHECKBOX_NEW )
{
  if( ISBETWEEN(0,1) && ISOPTQWIDGET(1) )
  {
    QCheckBox_new1 ();
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && ISOPTQWIDGET(2) )
  {
    QCheckBox_new2 ();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=Qt::CheckState checkState () const
$method=|Qt::CheckState|checkState|

$prototype=bool isTristate () const
$method=|bool|isTristate|

$prototype=void setCheckState ( Qt::CheckState state )
$method=|void|setCheckState|Qt::CheckState

$prototype=void setTristate ( bool y = true )
$method=|void|setTristate|bool=true

$prototype=QSize minimumSizeHint () const
$method=|QSize|minimumSizeHint|

$prototype=QSize sizeHint () const
$method=|QSize|sizeHint|

%%
%% SIGNALS
%%

$prototype=void stateChanged( int state )
$signalMethod=|void|stateChanged|int

#pragma ENDDUMP
