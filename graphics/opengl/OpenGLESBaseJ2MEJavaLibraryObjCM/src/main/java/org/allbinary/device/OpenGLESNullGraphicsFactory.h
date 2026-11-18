#ifndef ORG_ALLBINARY_DEVICE_OPENGLESNULLGRAPHICSFACTORY_H
#define ORG_ALLBINARY_DEVICE_OPENGLESNULLGRAPHICSFACTORY_H
// Generated Code Do Not Modify
// package org.allbinary.device

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class OpenGLESNullGraphicsFactory;
@class OpenGLESGraphics;
#if __has_include("org/allbinary/device/OpenGLESGraphics.h")
#include "org/allbinary/device/OpenGLESGraphics.h"
#endif

@interface OpenGLESNullGraphicsFactory : ABObject {
@public
}
- (instancetype) init;
+ (OpenGLESGraphics*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void OpenGLESNullGraphicsFactory_staticInit(void);


#endif // ORG_ALLBINARY_DEVICE_OPENGLESNULLGRAPHICSFACTORY_H
