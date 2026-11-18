#ifndef ORG_ALLBINARY_LAYER_RELATIONSHIP_RELATIVELAYERRELATIONSHIP_H
#define ORG_ALLBINARY_LAYER_RELATIONSHIP_RELATIVELAYERRELATIONSHIP_H
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
// package org.allbinary.layer.relationship

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class RelativeLayerRelationship;
@class GPoint;
@class RelativeRelationship;
@class AllBinaryLayer;
@class BasicArrayList;
#include "org/allbinary/graphics/RelativeRelationship.h"
#if __has_include("org/allbinary/layer/AllBinaryLayer.h")
#include "org/allbinary/layer/AllBinaryLayer.h"
#endif

@interface RelativeLayerRelationship : RelativeRelationship {
@public
    AllBinaryLayer* layer;
}
- (instancetype) init:(AllBinaryLayer*)layer :(GPoint*)point :(BasicArrayList*)typesAllowedList;
- (void) initFields;
- (int32_t) getX;
- (int32_t) getY;
- (int32_t) getZ;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void RelativeLayerRelationship_staticInit(void);


#endif // ORG_ALLBINARY_LAYER_RELATIONSHIP_RELATIVELAYERRELATIONSHIP_H
