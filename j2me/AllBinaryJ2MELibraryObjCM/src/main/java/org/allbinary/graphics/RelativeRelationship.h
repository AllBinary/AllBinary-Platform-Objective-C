#ifndef ORG_ALLBINARY_GRAPHICS_RELATIVERELATIONSHIP_H
#define ORG_ALLBINARY_GRAPHICS_RELATIVERELATIONSHIP_H
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
// package org.allbinary.graphics

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class RelativeRelationship;
@class BasicArrayList;
@class BasicArrayListUtil;
@class PointFactory;
@class GPoint;
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

@interface RelativeRelationship : ABObject {
@public
    BasicArrayList* typesAllowedList;
    int32_t x;
    int32_t y;
    int32_t z;
}
- (instancetype) init:(GPoint*)point :(BasicArrayList*)typesAllowedList;
- (void) initFields;
- (int32_t) getX;
- (int32_t) getY;
- (int32_t) getZ;
- (BasicArrayList*) getTypesAllowedList;
- (void) setTypesAllowedList:(BasicArrayList*)typesAllowedList;
@end

extern RelativeRelationship* RelativeRelationship_NULL_RELATIVE_RELATIONSHIP;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void RelativeRelationship_staticInit(void);

#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

#endif // ORG_ALLBINARY_GRAPHICS_RELATIVERELATIONSHIP_H
