#ifndef ORG_ALLBINARY_LAYER_LAYER_H
#define ORG_ALLBINARY_LAYER_LAYER_H
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
// package org.allbinary.layer

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class Layer;
@class Graphics;
@class CanvasStrings;
@class LogUtil;
@class SmallIntegerSingletonFactory;
@class StringMaker;
@class CommonStrings;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#include "java/lang/Integer.h"

@interface Layer : ABObject {
@public
    LogUtil* logUtil;
    int32_t x;
    int32_t y;
    int32_t z;
    int32_t width;
    int32_t height;
    bool visible;
}
- (instancetype) init:(int32_t)width :(int32_t)height;
- (void) initFields;
- (void) setPosition:(int32_t)x :(int32_t)y :(int32_t)z;
- (void) moveDXY:(int32_t)dx :(int32_t)dy;
- (void) moveDXYZ:(int32_t)dx :(int32_t)dy :(int32_t)dz;
- (int32_t) getXP;
- (int32_t) getYP;
- (int32_t) getZP;
- (int32_t) getWidth;
- (int32_t) getHeight;
- (int64_t) getDepth;
- (void) setVisible:(bool)visible;
- (bool) isVisible;
- (void) paint:(Graphics*)graphics;
- (void) setLayerWidth:(int32_t)width;
- (void) setLayerHeight:(int32_t)height;
- (void) toStringAppend:(StringMaker*)stringBuffer;
@end

extern int32_t Layer_ID;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void Layer_staticInit(void);


#endif // ORG_ALLBINARY_LAYER_LAYER_H
