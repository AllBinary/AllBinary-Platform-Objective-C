#ifndef ORG_ALLBINARY_GRAPHICS_CANVAS_TRANSITION_PROGRESS_PROGRESSCANVASFACTORY_H
#define ORG_ALLBINARY_GRAPHICS_CANVAS_TRANSITION_PROGRESS_PROGRESSCANVASFACTORY_H
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
@class ProgressCanvasFactory;
@class BasicColorFactory;
@class NullPaintable;
@class PaintableInterface;
@class NullUtil;
@class StringUtil;
@class ProgressCanvas;

@interface ProgressCanvasFactory : ABObject {
@public
}
- (instancetype) init;
+ (ProgressCanvas*) getInstance;
+ (PaintableInterface*) getLazyInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ProgressCanvasFactory_staticInit(void);

#if __has_include("org/allbinary/graphics/paint/PaintableInterface.h")
#include "org/allbinary/graphics/paint/PaintableInterface.h"
#endif

#endif // ORG_ALLBINARY_GRAPHICS_CANVAS_TRANSITION_PROGRESS_PROGRESSCANVASFACTORY_H
