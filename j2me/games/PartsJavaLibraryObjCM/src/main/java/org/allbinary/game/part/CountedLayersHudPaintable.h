#ifndef ORG_ALLBINARY_GAME_PART_COUNTEDLAYERSHUDPAINTABLE_H
#define ORG_ALLBINARY_GAME_PART_COUNTEDLAYERSHUDPAINTABLE_H
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
@class CountedLayersHudPaintable;
@class Font;
@class Graphics;
@class PickedUpLayerInterfaceFactoryInterface;
@class DisplayInfoSingleton;
@class MyFontProcessor;
@class UpdateMyFontInterface;
@class UpdateMyFontProcessor;
@class PaintableInterface;
@class AllBinaryLayer;
@class PartInterface;
@class CountedLayerInterfaceFactoryPart;
#if __has_include("org/allbinary/graphics/displayable/DisplayInfoSingleton.h")
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#endif
#if __has_include("org/allbinary/graphics/font/MyFontProcessor.h")
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#endif
#include "org/allbinary/graphics/font/UpdateMyFontInterface.h"
#include "org/allbinary/graphics/paint/PaintableInterface.h"
#if __has_include("org/allbinary/game/part/PartInterface.h")
#include "org/allbinary/game/part/PartInterface.h"
#endif

@interface CountedLayersHudPaintable : ABObject <PaintableInterface, UpdateMyFontInterface> {
@public
    DisplayInfoSingleton* displayInfoSingleton;
    PartInterface** partInterfaceArray;
    int32_t countedTotalStringColor;
    int32_t countedPartsBorder;
    int32_t startIndex;
    int32_t dropSize;
    MyFontProcessor* myFontProcessor;
    int32_t height;
}
- (instancetype) init:(PartInterface**)partInterfaceArray :(int32_t)dropSize :(int32_t)startIndex :(int32_t)countedTotalStringColor :(int32_t)countedPartsBorder;
- (void) initFields;
- (void) updateMeasurement:(Graphics*)graphics;
- (void) paint:(Graphics*)graphics;
- (void) paintThreed:(Graphics*)graphics;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CountedLayersHudPaintable_staticInit(void);


#endif // ORG_ALLBINARY_GAME_PART_COUNTEDLAYERSHUDPAINTABLE_H
