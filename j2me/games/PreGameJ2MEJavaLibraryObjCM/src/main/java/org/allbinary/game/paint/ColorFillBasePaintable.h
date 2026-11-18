#ifndef ORG_ALLBINARY_GAME_PAINT_COLORFILLBASEPAINTABLE_H
#define ORG_ALLBINARY_GAME_PAINT_COLORFILLBASEPAINTABLE_H
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
@class ColorFillBasePaintable;
@class Graphics;
@class BasicColor;
@class BasicColorFactory;
@class ColorCompositeInterface;
@class Paintable;
#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif
#include "org/allbinary/graphics/color/ColorCompositeInterface.h"
#include "org/allbinary/graphics/paint/Paintable.h"

@interface ColorFillBasePaintable : Paintable <ColorCompositeInterface> {
@public
    BasicColor* basicColor;
    int32_t colorP;
}
- (instancetype) init:(BasicColor*)basicColor;
- (void) initFields;
- (void) setBasicColorP:(BasicColor*)basicColor;
- (BasicColor*) getBasicColorP;
- (int32_t) getColor;
- (void) setColor:(int32_t)color;
- (void) paint:(Graphics*)graphics;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ColorFillBasePaintable_staticInit(void);

#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif

#endif // ORG_ALLBINARY_GAME_PAINT_COLORFILLBASEPAINTABLE_H
