#ifndef ORG_ALLBINARY_GRAPHICS_CANVAS_TRANSITION_PROGRESS_PROGRESSCANVAS_H
#define ORG_ALLBINARY_GRAPHICS_CANVAS_TRANSITION_PROGRESS_PROGRESSCANVAS_H
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
// package org.allbinary.graphics.canvas.transition.progress

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class ProgressCanvas;
@class CommandListener;
@class Font;
@class Graphics;
@class NullCanvas;
@class NullCommandListener;
@class Processor;
@class RunnableCanvas;
@class GameCommandsFactory;
@class BasicColor;
@class CanvasStrings;
@class MyFontProcessor;
@class UpdateMyFontInterface;
@class UpdateMyFontProcessor;
@class ABCustomGaugeItem;
@class NullPaintable;
@class Paintable;
@class PaintableInterface;
@class PreLogUtil;
@class SmallIntegerSingletonFactory;
@class StringMaker;
@class StringUtil;
@class AllBinaryMidlet;
@class PathFindingThreadPool;
@class ThreadPool;
@class ProgressPaintable;
@class ProgressEndListener;
#if __has_include("org/allbinary/canvas/Processor.h")
#include "org/allbinary/canvas/Processor.h"
#endif
#include "org/allbinary/canvas/RunnableCanvas.h"
#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif
#if __has_include("org/allbinary/graphics/font/MyFontProcessor.h")
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#endif
#include "org/allbinary/graphics/font/UpdateMyFontInterface.h"
#if __has_include("org/allbinary/graphics/form/item/ABCustomGaugeItem.h")
#include "org/allbinary/graphics/form/item/ABCustomGaugeItem.h"
#endif
#if __has_include("org/allbinary/graphics/paint/Paintable.h")
#include "org/allbinary/graphics/paint/Paintable.h"
#endif
#include "org/allbinary/graphics/paint/PaintableInterface.h"
#if __has_include("org/allbinary/midlet/AllBinaryMidlet.h")
#include "org/allbinary/midlet/AllBinaryMidlet.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/ProgressEndListener.h")
#include "org/allbinary/graphics/canvas/transition/progress/ProgressEndListener.h"
#endif

@interface ProgressCanvas : RunnableCanvas <PaintableInterface, UpdateMyFontInterface> {
@public
    bool hasPainted;
    BasicColor* backgroundBasicColor;
    Paintable* GAUGE_PAINTABLE;
    float maxValue;
    ABCustomGaugeItem* gauge;
    const char* TEXT;
    MyFontProcessor* updateMyFontProcessor;
    MyFontProcessor* myFontProcessor;
    AllBinaryMidlet* allbinaryMidlet;
    float value;
    const char* text;
    bool background;
    PaintableInterface* paintable;
    bool inProgress;
    Processor* IN_GAME_PROCESSOR;
    Processor* inGameProcessor;
    ProgressEndListener* progressEndListener;
    const char* backgroundLabel;
    const char* START_BACKGROUND;
    const char* ADD_PORTION;
    const char* ADD_EARLY_PORTION;
}
- (instancetype) init:(const char*)title :(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor;
- (void) initFields;
- (void) updateMeasurement:(Graphics*)graphics;
- (void) init_:(AllBinaryMidlet*)gameMidlet;
- (void) update:(Graphics*)graphics;
- (void) initCommands:(CommandListener*)cmdListener;
- (float) getMaxValue;
- (void) start;
- (void) startBackground:(bool)background;
- (void) endActual;
- (void) inGame;
- (void) end;
- (void) endFromInitialLazyLoadingComplete;
- (bool) isInGame;
- (void) endIfPaintedSinceStart;
- (void) addEarlyPortion:(int32_t)value :(const char*)text :(int32_t)index;
- (void) addPortion:(int32_t)value :(const char*)text :(int32_t)index;
- (void) addNormalPortion:(int32_t)value :(const char*)text;
- (void) setValue:(int32_t)value;
- (void) paint:(Graphics*)graphics;
- (void) paint2:(Graphics*)graphics;
- (void) paintThreed:(Graphics*)graphics;
- (float) getValue;
- (void) setText:(const char*)text;
- (const char*) getText;
- (void) setBackground:(bool)background;
- (bool) isBackground;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ProgressCanvas_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_CANVAS_TRANSITION_PROGRESS_PROGRESSCANVAS_H
