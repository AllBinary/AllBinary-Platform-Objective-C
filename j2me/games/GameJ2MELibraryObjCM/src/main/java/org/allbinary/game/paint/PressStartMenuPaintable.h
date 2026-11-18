#ifndef ORG_ALLBINARY_GAME_PAINT_PRESSSTARTMENUPAINTABLE_H
#define ORG_ALLBINARY_GAME_PAINT_PRESSSTARTMENUPAINTABLE_H
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
// package org.allbinary.game.paint

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class PressStartMenuPaintable;
@class Font;
@class Graphics;
@class AppletUtil;
@class Anchor;
@class DisplayInfoSingleton;
@class MyFontProcessor;
@class UpdateMyFontInterface;
@class UpdateMyFontProcessor;
@class Paintable;
@class TouchScreenFactory;
@class StringUtil;
@class TimeDelayHelper;
#if __has_include("org/allbinary/graphics/displayable/DisplayInfoSingleton.h")
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#endif
#if __has_include("org/allbinary/graphics/font/MyFontProcessor.h")
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#endif
#include "org/allbinary/graphics/font/UpdateMyFontInterface.h"
#include "org/allbinary/graphics/paint/Paintable.h"
#if __has_include("org/allbinary/time/TimeDelayHelper.h")
#include "org/allbinary/time/TimeDelayHelper.h"
#endif

@interface PressStartMenuPaintable : Paintable <UpdateMyFontInterface> {
@public
    DisplayInfoSingleton* displayInfo;
    const char* PRESS_START;
    const char* KEY_START;
    const char* MENU_START;
    MyFontProcessor* myFontProcessor;
    const char* startString;
    TimeDelayHelper* timeDelayHelper;
    bool flash;
    int32_t anchor;
    int32_t beginWidth;
    int32_t line;
}
- (instancetype) init;
- (void) initFields;
- (void) updateMeasurement:(Graphics*)graphics;
- (void) paint:(Graphics*)graphics;
- (void) setFlash:(bool)flash;
- (bool) isFlash;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PressStartMenuPaintable_staticInit(void);


#endif // ORG_ALLBINARY_GAME_PAINT_PRESSSTARTMENUPAINTABLE_H
