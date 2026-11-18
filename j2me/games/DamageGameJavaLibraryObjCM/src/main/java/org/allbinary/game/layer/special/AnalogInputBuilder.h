#ifndef ORG_ALLBINARY_GAME_LAYER_SPECIAL_ANALOGINPUTBUILDER_H
#define ORG_ALLBINARY_GAME_LAYER_SPECIAL_ANALOGINPUTBUILDER_H
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
// package org.allbinary.game.layer.special

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class AnalogInputBuilder;
@class Canvas;
@class GameInputProcessor;
@class SpecialUpGameInputProcessor;
@class SpecialDownGameInputProcessor;
@class SpecialRightGameInputProcessor;
@class SpecialLeftGameInputProcessor;
@class Special1GameInputProcessor;
@class Special3GameInputProcessor;
@class CollidableDestroyableDamageableLayer;
@class SpecialAnalogUpGameInputProcessor;
@class SpecialAnalogDownGameInputProcessor;
@class SpecialAnalogRightGameInputProcessor;
@class SpecialAnalogLeftGameInputProcessor;
@class SpecialAnalogLeftTriggerGameInputProcessor;
@class SpecialAnalogRightTriggerGameInputProcessor;

@interface AnalogInputBuilder : ABObject {
@public
}
- (instancetype) init;
+ (AnalogInputBuilder*) getInstance;
- (void) disable:(GameInputProcessor**)inputProcessorArray :(CollidableDestroyableDamageableLayer*)collidableDestroyableDamageableLayer;
- (void) enable:(GameInputProcessor**)inputProcessorArray :(CollidableDestroyableDamageableLayer*)collidableDestroyableDamageableLayer;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AnalogInputBuilder_staticInit(void);


#endif // ORG_ALLBINARY_GAME_LAYER_SPECIAL_ANALOGINPUTBUILDER_H
