#ifndef ORG_ALLBINARY_MEDIA_SCALEPROPERTIES_H
#define ORG_ALLBINARY_MEDIA_SCALEPROPERTIES_H
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
// package org.allbinary.media

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class ScaleProperties;
@class StringMaker;
@class CommonLabels;

@interface ScaleProperties : ABObject {
@public
    float scaleX;
    float scaleY;
    int32_t scaleWidth;
    int32_t scaleHeight;
    bool shouldScale;
}
- (instancetype) init;
- (void) initFields;
- (const char*) toString;
@end

extern ScaleProperties* ScaleProperties_instance;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ScaleProperties_staticInit(void);


#endif // ORG_ALLBINARY_MEDIA_SCALEPROPERTIES_H
