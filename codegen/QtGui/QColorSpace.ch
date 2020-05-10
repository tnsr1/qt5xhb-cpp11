%%
%% Qt5xHb/C++11 - Bindings libraries for Harbour/xHarbour and Qt Framework 5
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt5xHb
$module=QtGui

$header

%% TODO: resolver erros de redefinicao ou duplicacao

/*
enum QColorSpace::NamedColorSpace
*/
#define QColorSpace_SRgb                                             1
#define QColorSpace_SRgbLinear                                       2
#define QColorSpace_AdobeRgb                                         3
#define QColorSpace_DisplayP3                                        4
#define QColorSpace_ProPhotoRgb                                      5

/*
enum class QColorSpace::Primaries
*/
#define QColorSpace_Custom                                           0
%% #define QColorSpace_SRgb                                             1
%% #define QColorSpace_AdobeRgb                                         2
#define QColorSpace_DciP3D65                                         3
%% #define QColorSpace_ProPhotoRgb                                      4

/*
enum class QColorSpace::TransferFunction
*/
%% #define QColorSpace_Custom                                           0
#define QColorSpace_Linear                                           1
#define QColorSpace_Gamma                                            2
%% #define QColorSpace_SRgb                                             3
%% #define QColorSpace_ProPhotoRgb                                      4
