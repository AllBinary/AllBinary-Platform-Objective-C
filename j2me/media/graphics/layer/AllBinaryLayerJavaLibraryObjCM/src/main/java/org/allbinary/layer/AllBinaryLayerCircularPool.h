#ifndef ORG_ALLBINARY_LAYER_ALLBINARYLAYERCIRCULARPOOL_H
#define ORG_ALLBINARY_LAYER_ALLBINARYLAYERCIRCULARPOOL_H
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
// package org.allbinary.layer

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class AllBinaryLayerCircularPool;
@class BaseCircularPool;
@class CircularIndexUtil;
@class AllBinaryLayerFactoryInterface;
#include "org/allbinary/logic/util/cache/BaseCircularPool.h"

@interface AllBinaryLayerCircularPool : BaseCircularPool {
@public
}
- (instancetype) init;
- (void) initAllBinaryLayerCircularPool:(AllBinaryLayerFactoryInterface*)allbinaryLayerFactoryInterface :(int32_t)total;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AllBinaryLayerCircularPool_staticInit(void);


#endif // ORG_ALLBINARY_LAYER_ALLBINARYLAYERCIRCULARPOOL_H
