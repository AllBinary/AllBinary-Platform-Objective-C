#ifndef ORG_ALLBINARY_GAME_INPUT_GAMEINPUTSTRINGS_H
#define ORG_ALLBINARY_GAME_INPUT_GAMEINPUTSTRINGS_H
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
// package org.allbinary.game.input

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class GameInputStrings;

@interface GameInputStrings : ABObject {
@public
    const char* PROCESS_INPUT;
    const char* KEY_PRESSED;
    const char* KEY_RELEASED;
    const char* KEY_REPEATED;
    const char* ON_PRESS_GAME_KEY;
    const char* ON_DOWN_GAME_KEY;
    const char* ON_UP_GAME_KEY;
    const char* NO_KEY;
    const char* ADD_KEY_EVENT;
    const char* REMOVE_KEY_EVENT;
    const char* STRAFE_LEFT;
    const char* STRAFE_RIGHT;
    const char* PROCESS_MOTION_INPUT;
    const char* UDPATE_CURRENT_TOUCH_INPUT_FACTORY;
    const char* ENABLE_PLAYER_GAME_INPUTS;
    const char* ENABLE_PLAYER_GAME_INPUT;
}
- (instancetype) init;
- (void) initFields;
+ (GameInputStrings*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameInputStrings_staticInit(void);


#endif // ORG_ALLBINARY_GAME_INPUT_GAMEINPUTSTRINGS_H
