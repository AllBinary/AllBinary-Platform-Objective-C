#ifndef ORG_ALLBINARY_GAME_LAYER_GAMELAYERUTIL_H
#define ORG_ALLBINARY_GAME_LAYER_GAMELAYERUTIL_H
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
// package org.allbinary.game.layer

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class GameLayerUtil;
@class DisplayInfoSingleton;
@class AllBinaryLayer;
@class ViewPositionBase;

@interface GameLayerUtil : ABObject {
@public
}
- (instancetype) init;
+ (bool) isOnScreen:(AllBinaryLayer*)layer;
+ (bool) isInside:(int32_t)rectX1 :(int32_t)rectY1 :(int32_t)rectX2 :(int32_t)rectY2 :(int32_t)rect2X1 :(int32_t)rect2Y1 :(int32_t)rect2X2 :(int32_t)rect2Y2;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameLayerUtil_staticInit(void);


#endif // ORG_ALLBINARY_GAME_LAYER_GAMELAYERUTIL_H
