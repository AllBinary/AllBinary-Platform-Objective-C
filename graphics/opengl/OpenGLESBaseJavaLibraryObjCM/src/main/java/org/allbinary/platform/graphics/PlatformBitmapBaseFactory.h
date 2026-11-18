#ifndef ORG_ALLBINARY_PLATFORM_GRAPHICS_PLATFORMBITMAPBASEFACTORY_H
#define ORG_ALLBINARY_PLATFORM_GRAPHICS_PLATFORMBITMAPBASEFACTORY_H
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
// package org.allbinary.platform.graphics

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class PlatformBitmapBaseFactory;
@class Image;
@class PlatformBitmapBase;

@interface PlatformBitmapBaseFactory : ABObject {
@public
}
- (instancetype) init;
- (PlatformBitmapBase*) createBitmap:(Image*)image;
@end

extern PlatformBitmapBaseFactory* PlatformBitmapBaseFactory_NULL_PLATFORM_BITMAP_BASE_FACTORY;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PlatformBitmapBaseFactory_staticInit(void);


#endif // ORG_ALLBINARY_PLATFORM_GRAPHICS_PLATFORMBITMAPBASEFACTORY_H
