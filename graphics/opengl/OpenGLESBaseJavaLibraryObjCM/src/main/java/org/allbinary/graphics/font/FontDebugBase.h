#ifndef ORG_ALLBINARY_GRAPHICS_FONT_FONTDEBUGBASE_H
#define ORG_ALLBINARY_GRAPHICS_FONT_FONTDEBUGBASE_H
// Generated Code Do Not Modify
// package org.allbinary.graphics.font

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class FontDebugBase;
@class Font;
@class StringMaker;

//OpenGLESBaseJavaLibrary
@interface FontDebugBase : ABObject {
@public
    const char* SET_FONT;
}
- (instancetype) init;
- (void) initFields;
+ (FontDebugBase*) getInstance;
- (void) debugMetrics:(Font*)currentFont :(float)convertedTextSize :(id)displayMetrics :(StringMaker*)stringBuffer;
- (void) debugDpi:(int32_t)densityDpi :(StringMaker*)stringBuffer;
- (void) debugDimension:(Font*)currentFont :(float)convertedTextSize :(int32_t)longestDimensionTotalPixels :(StringMaker*)stringBuffer;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void FontDebugBase_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_FONT_FONTDEBUGBASE_H
