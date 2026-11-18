#ifndef ORG_ALLBINARY_LAYER_ALLBINARYLAYER_H
#define ORG_ALLBINARY_LAYER_ALLBINARYLAYER_H
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
@class AllBinaryLayer;
@class Graphics;
@class BasicGroupFactory;
@class Group;
@class GPoint;
@class Rectangle;
@class RectangleFactory;
@class OpenGLFeatureUtil;
@class TsUtil;
@class StringMaker;
@class StringUtil;
@class PositionStrings;
@class CommonLabels;
@class CommonSeps;
@class ViewPositionBase;
@class ViewPositionEvent;
@class Layer;
@class LayerInterface;
#if __has_include("org/allbinary/view/ViewPositionBase.h")
#include "org/allbinary/view/ViewPositionBase.h"
#endif
#if __has_include("org/allbinary/view/event/ViewPositionEvent.h")
#include "org/allbinary/view/event/ViewPositionEvent.h"
#endif
#include "java/lang/Integer.h"
#include "org/allbinary/layer/Layer.h"
#include "org/allbinary/layer/LayerInterface.h"

@interface AllBinaryLayer : Layer <LayerInterface> {
@public
    ViewPositionEvent* viewPositionEvent;
    int32_t halfWidth;
    int32_t halfHeight;
    const char* name;
    ViewPositionBase* viewPosition;
}
- (instancetype) init:(const char*)name :(Rectangle*)rectangle :(ViewPositionBase*)viewPosition;
- (void) initFields;
- (void) setPosition:(int32_t)x :(int32_t)y :(int32_t)z;
- (void) moveDXYZ:(int32_t)dx :(int32_t)dy :(int32_t)dz;
- (int32_t) getXP;
- (int32_t) getYP;
- (int32_t) getZP;
- (int32_t) getWidth;
- (int32_t) getHeight;
- (void) setVisible:(bool)visible;
- (bool) isVisible;
- (void) paint:(Graphics*)graphics;
- (void) onChangeEvent:(ViewPositionEvent*)layerManagerEvent;
- (void) paintThreed:(Graphics*)graphics;
- (int32_t) getX2;
- (int32_t) getY2;
- (int32_t) getZ2;
- (const char*) getName;
- (void) setHalfWidth:(int32_t)halfWidth;
- (int32_t) getHalfWidth;
- (void) setHalfHeight:(int32_t)halfHeight;
- (int32_t) getHalfHeight;
- (int32_t) getHalfDepth;
- (ViewPositionBase*) getViewPosition;
- (void) setViewPosition:(ViewPositionBase*)viewPosition;
- (Group**) getGroupInterface;
- (bool) implmentsTickableInterface;
- (bool) implmentsGameInputInterface;
- (bool) implmentsArtificialIntelligenceCompositeInterface;
- (bool) implmentsCollidableInterface;
- (bool) implementsThreedInterface;
- (int32_t) getType;
- (int32_t) getMultiPlayerType;
- (void) toStringAppend:(StringMaker*)stringBuffer;
- (const char*) toString;
@end

extern AllBinaryLayer* AllBinaryLayer_NULL_ALLBINARY_LAYER;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AllBinaryLayer_staticInit(void);

#if __has_include("org/allbinary/view/ViewPositionBase.h")
#include "org/allbinary/view/ViewPositionBase.h"
#endif

#endif // ORG_ALLBINARY_LAYER_ALLBINARYLAYER_H
