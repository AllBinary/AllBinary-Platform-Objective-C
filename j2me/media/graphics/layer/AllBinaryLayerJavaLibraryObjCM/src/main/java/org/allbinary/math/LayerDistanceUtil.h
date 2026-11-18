#ifndef ORG_ALLBINARY_MATH_LAYERDISTANCEUTIL_H
#define ORG_ALLBINARY_MATH_LAYERDISTANCEUTIL_H
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
// package org.allbinary.math

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class LayerDistanceUtil;
@class GPoint;
@class AllBinaryLayer;
@class MathUtil;
#if __has_include("org/allbinary/logic/math/MathUtil.h")
#include "org/allbinary/logic/math/MathUtil.h"
#endif

@interface LayerDistanceUtil : ABObject {
@public
    MathUtil* mathUtil;
}
- (instancetype) init;
- (void) initFields;
+ (LayerDistanceUtil*) getInstance;
- (int32_t) getDistance:(AllBinaryLayer*)layerInterface :(AllBinaryLayer*)layerInterface2;
- (int32_t) getDistance3D:(AllBinaryLayer*)layerInterface :(AllBinaryLayer*)layerInterface2;
- (int32_t) getDistanceAt:(AllBinaryLayer*)layerInterface :(GPoint*)point;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void LayerDistanceUtil_staticInit(void);


#endif // ORG_ALLBINARY_MATH_LAYERDISTANCEUTIL_H
