#ifndef ORG_ALLBINARY_DIRECTION_DIRECTION_H
#define ORG_ALLBINARY_DIRECTION_DIRECTION_H
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
// package org.allbinary.direction

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class Direction;
@class StringMaker;

@interface Direction : ABObject {
@public
    const char* name;
    const char* otherName;
    int32_t value;
    int32_t frameFactor;
}
- (instancetype) init:(const char*)name :(const char*)otherName :(int32_t)value :(int32_t)frameFactor;
- (void) initFields;
+ (Direction*) getInstance:(int32_t)direction;
- (int32_t) getValue;
- (int32_t) getFrameFactor;
- (const char*) getOtherName;
- (const char*) getName;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void Direction_staticInit(void);


#endif // ORG_ALLBINARY_DIRECTION_DIRECTION_H
