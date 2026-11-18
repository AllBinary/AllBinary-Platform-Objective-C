#ifndef ORG_ALLBINARY_GAME_INPUT_EVENT_GAMEKEYEVENT_H
#define ORG_ALLBINARY_GAME_INPUT_EVENT_GAMEKEYEVENT_H
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
// package org.allbinary.game.input.event

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class GameKeyEvent;
@class NullUtil;
@class StringMaker;
@class AllBinaryEventObject;
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"

@interface GameKeyEvent : AllBinaryEventObject {
@public
    int32_t sourceId;
    bool repeated;
    int32_t key;
    int32_t gameActionKey;
    int32_t originalKey;
}
- (instancetype) init:(id)anyType :(int32_t)sourceId :(int32_t)originalKey :(int32_t)gameActionKey :(int32_t)key :(bool)repeated;
- (void) initFields;
+ (GameKeyEvent*) createEvent:(id)anyType :(int32_t)sourceId :(int32_t)key;
- (void) init_:(id)anyType;
- (void) setRepeatEvents:(bool)repeated;
- (bool) hasRepeatEvents;
- (int32_t) getKey;
- (const char*) toString;
- (int32_t) getOriginalKey;
- (void) setOriginalKey:(int32_t)originalKey;
- (int32_t) getGameActionKey;
- (void) setGameActionKey:(int32_t)gameActionKey;
- (int32_t) getSourceId;
@end

extern GameKeyEvent* GameKeyEvent_NONE;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameKeyEvent_staticInit(void);


#endif // ORG_ALLBINARY_GAME_INPUT_EVENT_GAMEKEYEVENT_H
