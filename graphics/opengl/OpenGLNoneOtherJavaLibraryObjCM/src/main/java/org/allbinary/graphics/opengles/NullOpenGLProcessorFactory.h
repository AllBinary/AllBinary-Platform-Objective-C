#ifndef ORG_ALLBINARY_GRAPHICS_OPENGLES_NULLOPENGLPROCESSORFACTORY_H
#define ORG_ALLBINARY_GRAPHICS_OPENGLES_NULLOPENGLPROCESSORFACTORY_H
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
@class NullOpenGLProcessorFactory;
@class OpenGLProcessor;
#if __has_include("org/allbinary/graphics/opengles/OpenGLProcessor.h")
#include "org/allbinary/graphics/opengles/OpenGLProcessor.h"
#endif

@interface NullOpenGLProcessorFactory : ABObject {
@public
}
- (instancetype) init;
+ (OpenGLProcessor*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NullOpenGLProcessorFactory_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_OPENGLES_NULLOPENGLPROCESSORFACTORY_H
