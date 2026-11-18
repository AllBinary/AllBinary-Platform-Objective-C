#ifndef ORG_ALLBINARY_GRAPHICS_PAINT_PAINTABLECOMPOSITE_H
#define ORG_ALLBINARY_GRAPHICS_PAINT_PAINTABLECOMPOSITE_H
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
// package org.allbinary.graphics.paint

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class PaintableComposite;
@class Graphics;
@class Paintable;
@class PaintableInterface;
#include "org/allbinary/graphics/paint/Paintable.h"
#if __has_include("org/allbinary/graphics/paint/PaintableInterface.h")
#include "org/allbinary/graphics/paint/PaintableInterface.h"
#endif

@interface PaintableComposite : Paintable {
@public
    PaintableInterface** paintableArray;
}
- (instancetype) init:(PaintableInterface**)paintableArray;
- (void) initFields;
- (void) paint:(Graphics*)graphics;
- (void) paintThreed:(Graphics*)graphics;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PaintableComposite_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_PAINT_PAINTABLECOMPOSITE_H
