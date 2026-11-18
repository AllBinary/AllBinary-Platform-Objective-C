#ifndef ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_GAMEPERFORMANCEINITUPDATEPAINTABLE_H
#define ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_GAMEPERFORMANCEINITUPDATEPAINTABLE_H
/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
 * 
 * By agreeing to this license you and any business entity you represent are
 * legally bound to the AllBinary Open License Version 1 legal agreement.
 * 
 * You may obtain the AllBinary Open License Version 1 legal agreement from
 * AllBinary or the root directory of AllBinary's AllBinary Platform repository.
 * 
 * Created By: Travis Berthelot
 *  
 */
// Generated Code Do Not Modify
// package org.allbinary.game.displayable.canvas

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class GamePerformanceInitUpdatePaintable;
@class Font;
@class Graphics;
@class GameStatisticsFactory;
@class BasicColorFactory;
@class DisplayInfoSingleton;
@class MyFontProcessor;
@class UpdateMyFontInterface;
@class UpdateMyFontProcessor;
@class InitUpdatePaintable;
#if __has_include("org/allbinary/graphics/font/MyFontProcessor.h")
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#endif
#include "org/allbinary/graphics/font/UpdateMyFontInterface.h"
#include "org/allbinary/graphics/paint/InitUpdatePaintable.h"

@interface GamePerformanceInitUpdatePaintable : InitUpdatePaintable <UpdateMyFontInterface> {
@public
    int32_t halfHeight;
    int32_t* yArray;
    MyFontProcessor* myFontProcessor;
    uint16_t** baseRefreshHelperCharArray;
    int32_t defaultStringWidth;
    int32_t RED;
}
- (instancetype) init;
- (void) initFields;
- (void) updateMeasurement:(Graphics*)graphics;
- (void) init_;
- (void) update;
- (void) paint:(Graphics*)graphics;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GamePerformanceInitUpdatePaintable_staticInit(void);


#endif // ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_GAMEPERFORMANCEINITUPDATEPAINTABLE_H
