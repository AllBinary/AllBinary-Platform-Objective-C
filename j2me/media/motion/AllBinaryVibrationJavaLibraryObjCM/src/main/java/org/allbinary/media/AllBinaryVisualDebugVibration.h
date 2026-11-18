#ifndef ORG_ALLBINARY_MEDIA_ALLBINARYVISUALDEBUGVIBRATION_H
#define ORG_ALLBINARY_MEDIA_ALLBINARYVISUALDEBUGVIBRATION_H
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
// package org.allbinary.media

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class AllBinaryVisualDebugVibration;
@class Font;
@class Graphics;
@class Anchor;
@class DisplayInfoSingleton;
@class MyFontProcessor;
@class UpdateMyFontInterface;
@class UpdateMyFontProcessor;
@class TimeDelayHelper;
@class AllBinaryVibrationME;
#if __has_include("org/allbinary/graphics/displayable/DisplayInfoSingleton.h")
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#endif
#if __has_include("org/allbinary/graphics/font/MyFontProcessor.h")
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#endif
#include "org/allbinary/graphics/font/UpdateMyFontInterface.h"
#if __has_include("org/allbinary/time/TimeDelayHelper.h")
#include "org/allbinary/time/TimeDelayHelper.h"
#endif
#include "java/lang/Integer.h"
#include "org/allbinary/media/AllBinaryVibrationME.h"

@interface AllBinaryVisualDebugVibration : AllBinaryVibrationME <UpdateMyFontInterface> {
@public
    DisplayInfoSingleton* displayInfoSingleton;
    TimeDelayHelper* timeDelayHelper;
    const char* VIBRATING;
    MyFontProcessor* myFontProcessor;
    int32_t anchor;
    int32_t width;
}
- (instancetype) init;
- (void) initFields;
- (void) updateMeasurement:(Graphics*)graphics;
- (void) vibrate:(int32_t)duration :(int32_t)type :(int32_t)volume;
- (void) paint:(Graphics*)graphics;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AllBinaryVisualDebugVibration_staticInit(void);


#endif // ORG_ALLBINARY_MEDIA_ALLBINARYVISUALDEBUGVIBRATION_H
