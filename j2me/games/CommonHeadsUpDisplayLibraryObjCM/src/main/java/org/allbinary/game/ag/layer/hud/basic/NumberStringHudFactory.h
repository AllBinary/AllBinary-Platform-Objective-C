#ifndef ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_NUMBERSTRINGHUDFACTORY_H
#define ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_NUMBERSTRINGHUDFACTORY_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.game.ag.layer.hud.basic

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class NumberStringHudFactory;
@class BasicHudFactory;
@class BasicColorFactory;
@class NullUtil;
@class LogUtil;
@class StringUtil;
@class CommonStrings;
@class NumberStringHud;
#if __has_include("org/allbinary/game/ag/layer/hud/basic/NumberStringHud.h")
#include "org/allbinary/game/ag/layer/hud/basic/NumberStringHud.h"
#endif

@interface NumberStringHudFactory : ABObject {
@public
    NumberStringHud* NULL_NUMBER_STRING_HUD;
}
- (instancetype) init;
- (void) initFields;
+ (NumberStringHudFactory*) getInstance;
- (NumberStringHud*) createHud;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NumberStringHudFactory_staticInit(void);


#endif // ORG_ALLBINARY_GAME_AG_LAYER_HUD_BASIC_NUMBERSTRINGHUDFACTORY_H
