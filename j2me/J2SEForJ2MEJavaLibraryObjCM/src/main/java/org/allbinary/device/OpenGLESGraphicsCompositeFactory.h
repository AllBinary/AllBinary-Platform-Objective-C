#ifndef ORG_ALLBINARY_DEVICE_OPENGLESGRAPHICSCOMPOSITEFACTORY_H
#define ORG_ALLBINARY_DEVICE_OPENGLESGRAPHICSCOMPOSITEFACTORY_H
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
// package org.allbinary.device

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class OpenGLESGraphicsCompositeFactory;
@class OpenGLESGraphicsFactory;
#if __has_include("org/allbinary/device/OpenGLESGraphicsFactory.h")
#include "org/allbinary/device/OpenGLESGraphicsFactory.h"
#endif

@interface OpenGLESGraphicsCompositeFactory : ABObject {
@public
    OpenGLESGraphicsFactory* openGLESGraphicsFactory;
}
- (instancetype) init;
- (void) initFields;
+ (OpenGLESGraphicsCompositeFactory*) getInstance;
- (void) set:(OpenGLESGraphicsFactory*)openGLESGraphicsFactory;
- (OpenGLESGraphicsFactory*) get;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void OpenGLESGraphicsCompositeFactory_staticInit(void);


#endif // ORG_ALLBINARY_DEVICE_OPENGLESGRAPHICSCOMPOSITEFACTORY_H
