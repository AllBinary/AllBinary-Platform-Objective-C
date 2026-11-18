#ifndef ORG_ALLBINARY_GAME_CONFIGURATION_PERSISTANCE_GAMEPERSISTANCESTRINGS_H
#define ORG_ALLBINARY_GAME_CONFIGURATION_PERSISTANCE_GAMEPERSISTANCESTRINGS_H
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
// package org.allbinary.game.configuration.persistance

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class GamePersistanceStrings;

@interface GamePersistanceStrings : ABObject {
@public
    const char* SAVED_GAME_RECORD_ID;
    const char* SAVED_GAME_CONFIGURATION_RECORD_ID;
    const char* DEFAULT_INPUT_MAPPING_RECORD_ID;
    const char* SAVED_INPUT_CONFIGURATION_RECORD_ID;
}
- (instancetype) init;
- (void) initFields;
+ (GamePersistanceStrings*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GamePersistanceStrings_staticInit(void);


#endif // ORG_ALLBINARY_GAME_CONFIGURATION_PERSISTANCE_GAMEPERSISTANCESTRINGS_H
