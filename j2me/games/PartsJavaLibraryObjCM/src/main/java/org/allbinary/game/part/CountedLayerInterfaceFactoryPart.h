#ifndef ORG_ALLBINARY_GAME_PART_COUNTEDLAYERINTERFACEFACTORYPART_H
#define ORG_ALLBINARY_GAME_PART_COUNTEDLAYERINTERFACEFACTORYPART_H
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
// package org.allbinary.game.part

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class CountedLayerInterfaceFactoryPart;
@class Font;
@class Graphics;
@class Animation;
@class NullAnimationFactory;
@class CountedPickedUpLayerInterfaceFactory;
@class MyFontProcessor;
@class UpdateMyFontInterface;
@class UpdateMyFontProcessor;
@class AllBinaryLayer;
@class NullUtil;
@class PrimitiveLongUtil;
@class ABHashtable;
@class PartInterface;
#if __has_include("org/allbinary/animation/Animation.h")
#include "org/allbinary/animation/Animation.h"
#endif
#if __has_include("org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory.h")
#include "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory.h"
#endif
#if __has_include("org/allbinary/graphics/font/MyFontProcessor.h")
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#endif
#include "org/allbinary/graphics/font/UpdateMyFontInterface.h"
#if __has_include("org/allbinary/logic/math/PrimitiveLongUtil.h")
#include "org/allbinary/logic/math/PrimitiveLongUtil.h"
#endif
#include "org/allbinary/game/part/PartInterface.h"

@interface CountedLayerInterfaceFactoryPart : ABObject <PartInterface, UpdateMyFontInterface> {
@public
    MyFontProcessor* updateMyFontProcessor;
    MyFontProcessor* myFontProcessor;
    Animation* animationInterface;
    int32_t total;
    uint16_t* totalString;
    int32_t xOffset;
    CountedPickedUpLayerInterfaceFactory* countedPickedUpLayerInterfaceFactory;
    PrimitiveLongUtil* primitiveLongUtil;
}
- (instancetype) init:(int32_t)total :(CountedPickedUpLayerInterfaceFactory*)countedPickedUpLayerInterfaceFactory;
- (void) initFields;
- (void) updateMeasurement:(Graphics*)graphics;
- (void) init_:(int32_t)total :(CountedPickedUpLayerInterfaceFactory*)countedPickedUpLayerInterfaceFactory;
- (AllBinaryLayer*) getInstance:(ABHashtable*)hashtable :(int32_t)x :(int32_t)y :(int32_t)z;
- (int32_t) getTotal;
- (void) setTotal:(int32_t)total;
- (void) paint:(Graphics*)graphics;
- (void) paintThreed:(Graphics*)graphics;
- (Animation*) getAnimationInterface;
- (void) setAnimationInterface:(Animation*)animationInterface;
- (int32_t) getXOffset;
- (void) setXOffset:(int32_t)totalStringWidth;
- (uint16_t*) getTotalString;
- (CountedPickedUpLayerInterfaceFactory*) getCountedPickedUpLayerInterfaceFactory;
- (void) setCountedPickedUpLayerInterfaceFactory:(CountedPickedUpLayerInterfaceFactory*)countedPickedUpLayerInterfaceFactory;
@end

extern CountedLayerInterfaceFactoryPart* CountedLayerInterfaceFactoryPart_NULL_COUNTED_LAYER_INTERFACE_FACTORY;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CountedLayerInterfaceFactoryPart_staticInit(void);

#if __has_include("org/allbinary/animation/Animation.h")
#include "org/allbinary/animation/Animation.h"
#endif
#if __has_include("org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory.h")
#include "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory.h"
#endif
#if __has_include("org/allbinary/layer/AllBinaryLayer.h")
#include "org/allbinary/layer/AllBinaryLayer.h"
#endif

#endif // ORG_ALLBINARY_GAME_PART_COUNTEDLAYERINTERFACEFACTORYPART_H
