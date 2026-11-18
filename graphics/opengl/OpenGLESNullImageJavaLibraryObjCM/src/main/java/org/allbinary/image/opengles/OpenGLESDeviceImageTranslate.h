#ifndef ORG_ALLBINARY_IMAGE_OPENGLES_OPENGLESDEVICEIMAGETRANSLATE_H
#define ORG_ALLBINARY_IMAGE_OPENGLES_OPENGLESDEVICEIMAGETRANSLATE_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
@class OpenGLESDeviceImageTranslate;
@class GL10;
@class OpenGLESImageTranslate;
@class OpenGLESImage;
#include "org/allbinary/image/opengles/OpenGLESImageTranslate.h"

@interface OpenGLESDeviceImageTranslate : OpenGLESImageTranslate {
@public
    float translateX;
    float translateY;
    float translateX2;
    float translateY2;
}
- (instancetype) init;
- (void) initFields;
- (void) translate:(GL10*)gl :(OpenGLESImage*)openGLESImage :(float)x :(float)y;
- (void) translate2:(GL10*)gl :(OpenGLESImage*)openGLESImage;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void OpenGLESDeviceImageTranslate_staticInit(void);


#endif // ORG_ALLBINARY_IMAGE_OPENGLES_OPENGLESDEVICEIMAGETRANSLATE_H
