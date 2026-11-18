#ifndef ORG_ALLBINARY_GRAPHICS_OPENGLES_OPENGLUTIL_H
#define ORG_ALLBINARY_GRAPHICS_OPENGLES_OPENGLUTIL_H
// Generated Code Do Not Modify
// package org.allbinary.graphics.opengles

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class OpenGLUtil;
@class Image;
#include "java/lang/Runnable.h"

@interface OpenGLUtil : ABObject {
@public
}
- (instancetype) init;
+ (OpenGLUtil*) getInstance;
- (Image*) addImage:(Image*)image;
- (void) clear;
- (void) addRunnable:(Runnable*)runnable;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void OpenGLUtil_staticInit(void);

#if __has_include("javax/microedition/lcdui/Image.h")
#include "javax/microedition/lcdui/Image.h"
#endif

#endif // ORG_ALLBINARY_GRAPHICS_OPENGLES_OPENGLUTIL_H
