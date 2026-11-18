#ifndef ORG_ALLBINARY_GRAPHICS_DRAW_KEYVALUEDRAWCHARARRAY_H
#define ORG_ALLBINARY_GRAPHICS_DRAW_KEYVALUEDRAWCHARARRAY_H
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
// package org.allbinary.graphics.draw

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class KeyValueDrawCharArray;
@class Graphics;
@class CharArrayFactory;
@class MyFontProcessor;
@class UpdateMyFontInterface;
@class UpdateMyFontProcessor;
#if __has_include("org/allbinary/graphics/font/MyFontProcessor.h")
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#endif
#include "org/allbinary/graphics/font/UpdateMyFontInterface.h"

@interface KeyValueDrawCharArray : ABObject <UpdateMyFontInterface> {
@public
    MyFontProcessor* myFontProcessor;
    const char* LABEL;
    int32_t labelX;
    int32_t valueX;
    uint16_t* value;
    int32_t len;
}
- (instancetype) init:(const char*)label :(int32_t)x;
- (void) initFields;
- (void) updateMeasurement:(Graphics*)graphics;
- (void) paint:(Graphics*)graphics :(int32_t)y;
- (void) update:(uint16_t*)value :(int32_t)len;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void KeyValueDrawCharArray_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_DRAW_KEYVALUEDRAWCHARARRAY_H
