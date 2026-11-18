#ifndef ORG_ALLBINARY_GRAPHICS_OPENGLBITMAP_H
#define ORG_ALLBINARY_GRAPHICS_OPENGLBITMAP_H
// Generated Code Do Not Modify
// package org.allbinary.graphics

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class OpenGLBitmap;
@class PlatformBitmapBase;
#include "org/allbinary/platform/graphics/PlatformBitmapBase.h"

@interface OpenGLBitmap : PlatformBitmapBase {
@public
    id bitmap;
}
- (instancetype) init:(id)bitmap;
- (void) initFields;
- (void) getPixels:(int32_t*)pixels :(int32_t)offset :(int32_t)stride :(int32_t)x :(int32_t)y :(int32_t)width :(int32_t)height;
- (void) setPixels:(int32_t*)pixels :(int32_t)offset :(int32_t)stride :(int32_t)x :(int32_t)y :(int32_t)width :(int32_t)height;
- (void) recycle;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void OpenGLBitmap_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_OPENGLBITMAP_H
