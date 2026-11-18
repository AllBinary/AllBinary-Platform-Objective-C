#ifndef ORG_ALLBINARY_GRAPHICS_DISPLAYABLE_SCREENRELATIONALUTIL_H
#define ORG_ALLBINARY_GRAPHICS_DISPLAYABLE_SCREENRELATIONALUTIL_H
// Generated Code Do Not Modify
// package org.allbinary.graphics.displayable

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class ScreenRelationalUtil;
@class Image;
@class DisplayInfoSingleton;

@interface ScreenRelationalUtil : ABObject {
@public
}
- (instancetype) init;
+ (ScreenRelationalUtil*) getInstance;
- (float) getScaleImage:(Image*)image;
- (float) getScaleWH:(int32_t)aWidth :(int32_t)aHeight;
- (float) getScaleWHA:(int32_t)aWidth :(int32_t)aHeight :(int32_t)add;
- (int32_t) getScaledHeight:(int32_t)aWidth :(int32_t)aHeight;
- (int32_t) getScaledHeightAdd:(int32_t)aWidth :(int32_t)aHeight :(int32_t)add;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ScreenRelationalUtil_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_DISPLAYABLE_SCREENRELATIONALUTIL_H
