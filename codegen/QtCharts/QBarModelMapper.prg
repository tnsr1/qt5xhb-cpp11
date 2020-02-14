%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtCharts
$added=5,7,0

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QObject

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

using namespace QtCharts;

$prototype=explicit QBarModelMapper(QObject *parent = nullptr) [protected]

%% $deleteMethod

$prototype=QAbstractItemModel *model() const  [protected]

$prototype=void setModel(QAbstractItemModel *model) [protected]

$prototype=QAbstractBarSeries *series() const [protected]

$prototype=void setSeries(QAbstractBarSeries *series) [protected]

$prototype=int first() const [protected]

$prototype=void setFirst(int first) [protected]

$prototype=int count() const [protected]

$prototype=void setCount(int count) [protected]

$prototype=int firstBarSetSection() const [protected]

$prototype=void setFirstBarSetSection(int firstBarSetSection) [protected]

$prototype=int lastBarSetSection() const [protected]

$prototype=void setLastBarSetSection(int lastBarSetSection) [protected]

$prototype=Qt::Orientation orientation() const [protected]

$prototype=void setOrientation(Qt::Orientation orientation) [protected]

#pragma ENDDUMP
