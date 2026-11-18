#ifndef JAVAX_MICROEDITION_LCDUI_PLATFORMIMAGE_H
#define JAVAX_MICROEDITION_LCDUI_PLATFORMIMAGE_H
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
@class PlatformImage;
@class NullUtil;
@class NullImage;
@class Image;
@class Graphics;

//PlatformNullImageJavaLibrary
@interface PlatformImage : ABObject {
@public
}
- (instancetype) init;
- (id) getImage:(id)graphicsSurface2;
- (int32_t) getSurfaceWidth:(id)graphicsSurface2 :(int32_t)width;
- (int32_t) getSurfaceHeight:(id)graphicsSurface2 :(int32_t)height;
- (int32_t) getWidth:(Image*)image :(int32_t)width;
- (int32_t) getHeight:(Image*)image :(int32_t)height;
- (Graphics*) getGraphics:(id)graphicsSurface :(int32_t)width :(int32_t)height :(Image*)image;
- (void) drawImage:(Image*)image :(int32_t)x :(int32_t)y :(int32_t)anchor :(Graphics*)g2 :(id)g;
- (void) drawRegion:(Image*)image :(int32_t)x_src :(int32_t)y_src :(int32_t)width :(int32_t)height :(int32_t)transform :(int32_t)x_dst :(int32_t)y_dst :(int32_t)anchor :(Graphics*)g;
- (void) getRGB:(int32_t*)argb :(int32_t)offset :(int32_t)scanlength :(int32_t)x :(int32_t)y :(int32_t)width :(int32_t)height :(Image*)image;
- (void) setRGB:(int32_t*)argb :(int32_t)offset :(int32_t)scanlength :(int32_t)x :(int32_t)y :(int32_t)width :(int32_t)height :(Image*)image;
- (int32_t*) getData:(Image*)image;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PlatformImage_staticInit(void);


#endif // JAVAX_MICROEDITION_LCDUI_PLATFORMIMAGE_H
