#ifndef ORG_ALLBINARY_VECTOR_VECTORINFO_H
#define ORG_ALLBINARY_VECTOR_VECTORINFO_H
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
// package org.allbinary.vector

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class VectorInfo;

@interface VectorInfo : ABObject {
@public
    int32_t width;
    int32_t height;
    int32_t** points;
    int32_t totalFrames;
}
- (instancetype) init:(int32_t)width :(int32_t)height :(int32_t**)points :(int32_t)totalFrames;
- (void) initFields;
- (int32_t) getWidth;
- (void) setWidth:(int32_t)width;
- (int32_t) getHeight;
- (void) setHeight:(int32_t)height;
- (int32_t**) getPoints;
- (void) setPoints:(int32_t**)points;
- (int32_t) getTotalFrames;
- (void) setTotalFrames:(int32_t)totalFrames;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void VectorInfo_staticInit(void);


#endif // ORG_ALLBINARY_VECTOR_VECTORINFO_H
