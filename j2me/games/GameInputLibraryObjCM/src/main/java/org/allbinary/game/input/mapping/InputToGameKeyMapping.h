#ifndef ORG_ALLBINARY_GAME_INPUT_MAPPING_INPUTTOGAMEKEYMAPPING_H
#define ORG_ALLBINARY_GAME_INPUT_MAPPING_INPUTTOGAMEKEYMAPPING_H
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
// package org.allbinary.game.input.mapping

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class InputToGameKeyMapping;
@class Canvas;
@class GameKey;
@class GameKeyFactory;
@class Input;
@class InputFactory;
@class NullUtil;
@class PreLogUtil;
@class StringMaker;
@class StringUtil;
@class CommonLabels;
@class CommonSeps;
@class BasicArrayList;
@class BasicArrayListD;
@class InputMapping;
#if __has_include("org/allbinary/game/input/GameKey.h")
#include "org/allbinary/game/input/GameKey.h"
#endif
#if __has_include("org/allbinary/game/input/GameKeyFactory.h")
#include "org/allbinary/game/input/GameKeyFactory.h"
#endif
#include "org/allbinary/game/input/mapping/InputMapping.h"

@interface InputToGameKeyMapping : InputMapping {
@public
    GameKeyFactory* gameKeyFactory;
    GameKey** mappedGameKeys;
    GameKey** platformToGameKeyMapping;
    GameKey** negativePlatformToGameKeyMapping;
}
- (instancetype) init;
- (void) initFields;
+ (InputToGameKeyMapping*) getNullInstance;
- (void) clear;
- (void) removeAll;
- (void) addMapping:(InputToGameKeyMapping*)inputToGameKeyMapping;
- (void) addAll:(Input*)input :(BasicArrayList*)list;
- (void) add:(Input*)input :(Input*)mappedToInput;
- (void) remove:(Input*)input :(Input*)mappedToInput;
- (void) set:(Input*)input :(Input*)mappedToInput;
- (int32_t) getMaxMappable;
- (BasicArrayList*) getReverseInstance:(int32_t)id_;
- (void) initGameKey:(Canvas*)canvas :(GameKey*)gameKey;
- (int32_t) getSmallestCanvasGameKeyCode:(Canvas*)canvas;
- (void) initMethod:(Canvas*)canvas;
- (GameKey*) getInstanceForCanvas:(Canvas*)canvas :(int32_t)id_;
- (GameKey*) getInstance:(int32_t)id_;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void InputToGameKeyMapping_staticInit(void);

#if __has_include("org/allbinary/game/input/GameKey.h")
#include "org/allbinary/game/input/GameKey.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

#endif // ORG_ALLBINARY_GAME_INPUT_MAPPING_INPUTTOGAMEKEYMAPPING_H
