#ifndef ORG_ALLBINARY_GAME_LAYER_ALLBINARYGAMELAYER_H
#define ORG_ALLBINARY_GAME_LAYER_ALLBINARYGAMELAYER_H
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
// package org.allbinary.game.layer

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class AllBinaryGameLayer;
@class GL;
@class Graphics;
@class Rectangle;
@class BasicColor;
@class BasicColorFactory;
@class BasicColorSetUtil;
@class NullPaintable;
@class Paintable;
@class OpenGLSurfaceChangedInterface;
@class AllBinaryLayer;
@class AllBinaryLayerManager;
@class ForcedLogUtil;
@class AllBinaryEventObject;
@class EventStrings;
@class CommonStrings;
@class BasicArrayList;
@class BasicArrayListD;
@class ViewPositionBase;
@class ViewPositionEvent;
@class ViewPositionEventListenerInterface;
@class SWTUtil;
@class SWTBlackPaintable;
@class GameLayerUtil;
#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif
#if __has_include("org/allbinary/graphics/color/BasicColorSetUtil.h")
#include "org/allbinary/graphics/color/BasicColorSetUtil.h"
#endif
#if __has_include("org/allbinary/graphics/paint/Paintable.h")
#include "org/allbinary/graphics/paint/Paintable.h"
#endif
#include "org/allbinary/image/opengles/OpenGLSurfaceChangedInterface.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif
#include "org/allbinary/view/event/ViewPositionEventListenerInterface.h"

@interface AllBinaryGameLayer : AllBinaryLayer <ViewPositionEventListenerInterface, OpenGLSurfaceChangedInterface> {
@public
    CommonStrings* commonStrings;
    BasicColorSetUtil* basicSetColorUtil;
    BasicColor* RED;
    Paintable* paintable;
    BasicArrayList* gameKeyEventList;
}
- (instancetype) init:(const char*)name :(Rectangle*)layerInfo :(ViewPositionBase*)viewPosition;
- (void) initFields;
+ (Paintable*) createPaintable;
- (void) set:(GL*)gl;
- (void) move;
- (BasicArrayList*) getGameKeyEventList;
- (void) processInput:(AllBinaryLayerManager*)allBinaryLayerManager;
- (void) processTick:(AllBinaryLayerManager*)allBinaryLayerManager;
- (void) onEvent:(AllBinaryEventObject*)eventObject;
- (void) onViewPositionChangeEvent;
- (void) onChangeEvent:(ViewPositionEvent*)layerManagerEvent;
- (void) paintFirst:(Graphics*)graphics;
- (void) paintDebug:(Graphics*)graphics;
- (void) setWidth:(int32_t)width;
- (void) setHeight:(int32_t)height;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AllBinaryGameLayer_staticInit(void);

#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

#endif // ORG_ALLBINARY_GAME_LAYER_ALLBINARYGAMELAYER_H
