#ifndef ORG_ALLBINARY_GRAPHICS_OPENGLES_RENDERER_ALLBINARYRENDERERBASE3_H
#define ORG_ALLBINARY_GRAPHICS_OPENGLES_RENDERER_ALLBINARYRENDERERBASE3_H
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
@class AllBinaryRendererBase3;
@class GL10;
@class Image;
@class OpenGLESImage;
@class BasicArrayList;
@class BasicArrayListD;
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

@interface AllBinaryRendererBase3 : ABObject {
@public
    BasicArrayList* list;
}
- (instancetype) init;
- (void) initFields;
- (void) update:(GL10*)gl;
- (void) add:(Image*)image;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AllBinaryRendererBase3_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_OPENGLES_RENDERER_ALLBINARYRENDERERBASE3_H
