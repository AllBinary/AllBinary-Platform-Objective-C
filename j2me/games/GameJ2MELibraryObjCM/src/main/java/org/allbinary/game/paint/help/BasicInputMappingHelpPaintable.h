#ifndef ORG_ALLBINARY_GAME_PAINT_HELP_BASICINPUTMAPPINGHELPPAINTABLE_H
#define ORG_ALLBINARY_GAME_PAINT_HELP_BASICINPUTMAPPINGHELPPAINTABLE_H
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
// package org.allbinary.game.paint.help

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class BasicInputMappingHelpPaintable;
@class GameKey;
@class GameKeyFactory;
@class Input;
@class PlatformInputMappingFactory;
@class GameInputMapping;
@class PersistentInputMapping;
@class BasicColor;
@class BasicColorFactory;
@class StringMaker;
@class CommonSeps;
@class BasicArrayList;
@class HelpPaintable;
#if __has_include("org/allbinary/game/input/GameKey.h")
#include "org/allbinary/game/input/GameKey.h"
#endif
#if __has_include("org/allbinary/game/input/mapping/GameInputMapping.h")
#include "org/allbinary/game/input/mapping/GameInputMapping.h"
#endif
#include "org/allbinary/game/paint/help/HelpPaintable.h"

@interface BasicInputMappingHelpPaintable : HelpPaintable {
@public
    GameInputMapping** gameInputMappingArray;
    GameKey* NONE;
}
- (instancetype) init:(GameInputMapping**)gameInputMappingArray :(BasicColor*)basicColor;
- (void) initFields;
- (void) update:(GameKey*)selectedGameKey :(Input*)selectedInput;
- (const char*) get:(BasicArrayList*)keyList;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BasicInputMappingHelpPaintable_staticInit(void);


#endif // ORG_ALLBINARY_GAME_PAINT_HELP_BASICINPUTMAPPINGHELPPAINTABLE_H
