#ifndef ORG_ALLBINARY_GRAPHICS_OPENGLES_OPENGLTHREADUTIL_H
#define ORG_ALLBINARY_GRAPHICS_OPENGLES_OPENGLTHREADUTIL_H
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
@class OpenGLThreadUtil;

@interface OpenGLThreadUtil : ABObject {
@public
}
- (instancetype) init;
+ (OpenGLThreadUtil*) getInstance;
- (void) set:(id)glSurfaceView;
- (void) onPause;
- (void) onResume;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void OpenGLThreadUtil_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_OPENGLES_OPENGLTHREADUTIL_H
