#ifndef ORG_ALLBINARY_GRAPHICS_DISPLAYABLE_DISPLAYINFOSINGLETON_H
#define ORG_ALLBINARY_GRAPHICS_DISPLAYABLE_DISPLAYINFOSINGLETON_H
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
// package org.allbinary.graphics.displayable

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class DisplayInfoSingleton;
@class Displayable;
@class AndroidUtil;
@class Features;
@class DisplayChangeEvent;
@class DisplayChangeEventHandler;
@class LastDisplayChangeEventHandler;
@class OpenGLFeatureFactory;
@class SWTJOGLProcessor;
@class LogUtil;
@class PreLogUtil;
@class StringMaker;
@class GenericOperatingSystem;
@class OperatingSystemFactory;
@class CommonLabels;
@class CommonSeps;
@class CommonStrings;
@class BasicArrayList;
@class BasicArrayListD;
@class BaseScalable;
@class ScalableListener;
#if __has_include("org/allbinary/graphics/displayable/event/DisplayChangeEvent.h")
#include "org/allbinary/graphics/displayable/event/DisplayChangeEvent.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonLabels.h")
#include "org/allbinary/string/CommonLabels.h"
#endif
#if __has_include("org/allbinary/string/CommonSeps.h")
#include "org/allbinary/string/CommonSeps.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/BaseScalable.h")
#include "org/allbinary/graphics/displayable/BaseScalable.h"
#endif

@interface DisplayInfoSingleton : ABObject {
@public
    LogUtil* logUtil;
    CommonLabels* commonLabels;
    CommonSeps* commonSeps;
    CommonStrings* commonStrings;
    const char* ORIENTATION;
    const char* ADJUSTING_FOR_SCALING_IN_PORTRAIT;
    const char* ADJUSTING_FOR_SCALING_IN_LANDSCAPE;
    int32_t* last;
    int32_t* lastHalf;
    int32_t* full;
    int32_t top;
    int32_t left;
    int32_t xOffset;
    int32_t yOffset;
    float scaleLargestTo;
    int32_t WIDTH;
    int32_t HEIGHT;
    int32_t CUSTOM_WIDTH;
    int32_t CUSTOM_HEIGHT;
    BaseScalable* scalableListener;
    float displayRatio;
    float ratio;
    const char* SET_LAST_SIZE_METHOD_NAME;
    const char* FULL_WIDTH;
    const char* FULL_HEIGHT;
    const char* LAST_WIDTH;
    const char* LAST_HEIGHT;
    const char* PORTRAIT;
    const char* LANDSCAPE;
    DisplayChangeEvent* displayChangeEvent;
    const char* FIRE_METHOD_NAME;
    const char* REASON;
    const char* UPDATE_FROM_ORIENTATION_CHANGE;
    BasicArrayList* list;
    const char* DISPLAY_INFO;
    const char* FULL;
    const char* LAST;
    const char* LAST_HALF;
}
- (instancetype) init;
- (void) initFields;
+ (DisplayInfoSingleton*) getInstance;
- (int32_t*) getLastHalf;
- (int32_t*) getLast;
- (int32_t*) getFull;
- (float) getScaleLargestTo;
- (void) setScaleLargestTo:(int32_t)scaleLargestTo;
- (void) setLastSize:(int32_t)aLastWidth :(int32_t)aLastHeight :(const char*)reason;
- (void) setLastSizeForce:(int32_t)aLastWidth :(int32_t)aLastHeight :(const char*)reason;
- (bool) isPortraitWH:(int32_t)lastWidth :(int32_t)lastHeight;
- (bool) isPortrait;
- (void) add:(const char*)reason;
- (void) process;
- (void) processForced;
- (void) update:(Displayable*)displayable :(const char*)reason;
- (const char*) toString;
- (const char*) toStringAppend:(StringMaker*)stringBuffer;
- (int32_t) getTop;
- (int32_t) getLeft;
- (int32_t) getLastWidth;
- (int32_t) getLastHeight;
- (int32_t) getLastHalfWidth;
- (int32_t) getLastHalfHeight;
- (int32_t) getCustomLastWidth;
- (int32_t) getCustomLastHeight;
- (int32_t) getRawLastWidth;
- (int32_t) getRawLastHeight;
- (void) setCustom:(int32_t)width :(int32_t)height;
- (void) setScalableListener:(BaseScalable*)scalableListener;
- (ScalableListener*) getScalableListener;
- (float) getRatio;
- (float) getDisplayRatio;
- (void) setOffset:(int32_t)left :(int32_t)top;
- (int32_t) getxOffset;
- (int32_t) getyOffset;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void DisplayInfoSingleton_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_DISPLAYABLE_DISPLAYINFOSINGLETON_H
