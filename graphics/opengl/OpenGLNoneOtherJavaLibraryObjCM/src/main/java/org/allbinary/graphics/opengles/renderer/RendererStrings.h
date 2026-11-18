#ifndef ORG_ALLBINARY_GRAPHICS_OPENGLES_RENDERER_RENDERERSTRINGS_H
#define ORG_ALLBINARY_GRAPHICS_OPENGLES_RENDERER_RENDERERSTRINGS_H
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
// package org.allbinary.graphics.opengles.renderer

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class RendererStrings;

@interface RendererStrings : ABObject {
@public
    const char* ON_SURFACE_CREATED;
    const char* ON_SURFACE_CHANGED;
    const char* ON_DRAW_FRAME;
    const char* ON_DRAW_FRAME_THREED;
    const char* ON_DRAW_FRAME_2D;
}
- (instancetype) init;
- (void) initFields;
+ (RendererStrings*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void RendererStrings_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_OPENGLES_RENDERER_RENDERERSTRINGS_H
