#ifndef ORG_ALLBINARY_DEVICE_OPENGLESGRAPHICSFACTORY_H
#define ORG_ALLBINARY_DEVICE_OPENGLESGRAPHICSFACTORY_H
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
@class OpenGLESGraphicsFactory;
@class OpenGLESNullGraphicsFactory;
@class OpenGLESGraphics;

@interface OpenGLESGraphicsFactory : ABObject {
@public
}
- (instancetype) init;
- (OpenGLESGraphics*) getOpenGLESGraphicsInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void OpenGLESGraphicsFactory_staticInit(void);


#endif // ORG_ALLBINARY_DEVICE_OPENGLESGRAPHICSFACTORY_H
