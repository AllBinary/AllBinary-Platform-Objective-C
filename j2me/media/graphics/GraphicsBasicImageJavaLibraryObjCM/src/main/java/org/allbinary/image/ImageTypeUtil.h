#ifndef ORG_ALLBINARY_IMAGE_IMAGETYPEUTIL_H
#define ORG_ALLBINARY_IMAGE_IMAGETYPEUTIL_H
/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
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
// package org.allbinary.image

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class ImageTypeUtil;
@class BasicArrayList;
@class BasicArrayListD;
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

@interface ImageTypeUtil : ABObject {
@public
    const char* PNG;
    const char* JPG;
    const char* GIF;
    BasicArrayList* list;
}
- (instancetype) init;
- (void) initFields;
- (bool) isSupported:(const char*)mediaFileType;
+ (ImageTypeUtil*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ImageTypeUtil_staticInit(void);


#endif // ORG_ALLBINARY_IMAGE_IMAGETYPEUTIL_H
