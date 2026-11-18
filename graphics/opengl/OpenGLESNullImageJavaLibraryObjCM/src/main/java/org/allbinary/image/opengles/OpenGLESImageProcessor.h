#ifndef ORG_ALLBINARY_IMAGE_OPENGLES_OPENGLESIMAGEPROCESSOR_H
#define ORG_ALLBINARY_IMAGE_OPENGLES_OPENGLESIMAGEPROCESSOR_H
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
// package org.allbinary.image.opengles

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class OpenGLESImageProcessor;
@class GL10;

@interface OpenGLESImageProcessor : ABObject {
@public
}
- (instancetype) init;
+ (OpenGLESImageProcessor*) getInstance;
- (void) translate:(GL10*)gl :(float)translateX :(float)translateY;
- (void) rotate:(GL10*)gl :(float)angle;
- (void) scale:(GL10*)gl :(float)scaleX :(float)scaleY;
- (void) colorMask:(GL10*)gl :(float)red :(float)green :(float)blue :(float)alpha;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void OpenGLESImageProcessor_staticInit(void);


#endif // ORG_ALLBINARY_IMAGE_OPENGLES_OPENGLESIMAGEPROCESSOR_H
