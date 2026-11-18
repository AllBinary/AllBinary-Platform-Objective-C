#ifndef ORG_ALLBINARY_GRAPHICS_OPENGLES_OPENGLPROCESSOR_H
#define ORG_ALLBINARY_GRAPHICS_OPENGLES_OPENGLPROCESSOR_H
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
@class OpenGLProcessor;
@class GL10;
@class LogUtil;
@class CommonStrings;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif

@interface OpenGLProcessor : ABObject {
@public
    LogUtil* logUtil;
    CommonStrings* commonStrings;
}
- (instancetype) init;
- (void) initFields;
- (void) process:(GL10*)gl;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void OpenGLProcessor_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_OPENGLES_OPENGLPROCESSOR_H
