#ifndef ORG_ALLBINARY_GRAPHICS_THREED_SWTJOGLPROCESSOR_H
#define ORG_ALLBINARY_GRAPHICS_THREED_SWTJOGLPROCESSOR_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.graphics.threed

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class SWTJOGLProcessor;
@class Font;
@class MIDlet;
@class RatioProcessor;
#include "java/lang/Runnable.h"

//OpenGLNone
@interface SWTJOGLProcessor : ABObject <Runnable> {
@public
}
- (instancetype) init;
+ (SWTJOGLProcessor*) getInstance;
- (void) initMethod:(id)display :(id)comp;
- (bool) isHolderCreated;
- (void) setRenderer:(id)renderer;
- (bool) isJOGL;
- (void) createSurface;
- (void) onSurfaceCreated;
- (void) onSurfaceChangedForEvent:(id)event;
- (void) onSurfaceChanged;
- (void) onSurfaceChangedWH:(int32_t)width :(int32_t)height;
- (void) addListener;
- (void) addListeners:(MIDlet*)midlet;
- (void) run;
- (void) clear;
- (void) setCustom:(int32_t)width :(int32_t)height :(float)ratio;
- (void) setRatioProcessor:(RatioProcessor*)ratioProcessor;
- (bool) isPortraitRatioProcessor;
- (int32_t) charWidth:(Font*)font :(uint16_t)ch;
- (int32_t) charsWidth:(Font*)font :(uint16_t*)ch :(int32_t)offset :(int32_t)length;
- (int32_t) stringWidth:(Font*)font :(const char*)str;
- (int32_t) substringWidth:(Font*)font :(const char*)str :(int32_t)offset :(int32_t)len;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void SWTJOGLProcessor_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_THREED_SWTJOGLPROCESSOR_H
