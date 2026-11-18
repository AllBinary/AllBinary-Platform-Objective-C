#ifndef ORG_ALLBINARY_GAME_PAINT_OVERSCANCOLORFILLPAINTABLE_H
#define ORG_ALLBINARY_GAME_PAINT_OVERSCANCOLORFILLPAINTABLE_H
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
@class OverScanColorFillPaintable;
@class Graphics;
@class BasicColor;
@class ColorFillPaintable;
#include "org/allbinary/game/paint/ColorFillPaintable.h"

@interface OverScanColorFillPaintable : ColorFillPaintable {
@public
}
- (instancetype) init:(BasicColor*)basicColor;
- (void) paint:(Graphics*)graphics;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void OverScanColorFillPaintable_staticInit(void);


#endif // ORG_ALLBINARY_GAME_PAINT_OVERSCANCOLORFILLPAINTABLE_H
