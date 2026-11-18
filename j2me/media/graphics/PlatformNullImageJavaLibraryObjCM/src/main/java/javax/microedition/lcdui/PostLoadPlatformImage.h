#ifndef JAVAX_MICROEDITION_LCDUI_POSTLOADPLATFORMIMAGE_H
#define JAVAX_MICROEDITION_LCDUI_POSTLOADPLATFORMIMAGE_H
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
// package javax.microedition.lcdui

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class PostLoadPlatformImage;
@class PlatformImage;
#include "javax/microedition/lcdui/PlatformImage.h"

//PlatformNullImageJavaLibrary
@interface PostLoadPlatformImage : PlatformImage {
@public
}
- (instancetype) init;
+ (PostLoadPlatformImage*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PostLoadPlatformImage_staticInit(void);


#endif // JAVAX_MICROEDITION_LCDUI_POSTLOADPLATFORMIMAGE_H
