#ifndef ORG_ALLBINARY_PLATFORM_OPENGLES_PLATFORMTEXTUREBASEFACTORY_H
#define ORG_ALLBINARY_PLATFORM_OPENGLES_PLATFORMTEXTUREBASEFACTORY_H
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
// package org.allbinary.platform.opengles

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class PlatformTextureBaseFactory;
@class GL10;
@class Image;
@class CommonStrings;
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif

@interface PlatformTextureBaseFactory : ABObject {
@public
    CommonStrings* commonStrings;
}
- (instancetype) init;
- (void) initFields;
- (void) loadMethod:(GL10*)gl :(int32_t)target :(int32_t)level :(Image*)image :(int32_t)border :(bool)flip;
@end

extern PlatformTextureBaseFactory* PlatformTextureBaseFactory_NULL_PLATFORM_TEXTURE_BASE_FACTORY;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PlatformTextureBaseFactory_staticInit(void);


#endif // ORG_ALLBINARY_PLATFORM_OPENGLES_PLATFORMTEXTUREBASEFACTORY_H
