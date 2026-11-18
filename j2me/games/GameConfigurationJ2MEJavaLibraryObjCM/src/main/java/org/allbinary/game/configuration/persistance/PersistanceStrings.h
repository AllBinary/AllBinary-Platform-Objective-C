#ifndef ORG_ALLBINARY_GAME_CONFIGURATION_PERSISTANCE_PERSISTANCESTRINGS_H
#define ORG_ALLBINARY_GAME_CONFIGURATION_PERSISTANCE_PERSISTANCESTRINGS_H
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
@class PersistanceStrings;

@interface PersistanceStrings : ABObject {
@public
    const char* SAVING;
    const char* NUMBER_OF_RECORDS;
    const char* LOADING_ID;
    const char* LOAD_ALL;
    const char* DELETING_WITH_ID;
    const char* CLOSING_RECORDSTORE;
    const char* NOT_SAVING;
    const char* ERROR_LOADING;
    const char* ERROR_LOADING_ID;
    const char* ID;
    const char* GAME_ACTION_INPUT;
}
- (instancetype) init;
- (void) initFields;
+ (PersistanceStrings*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PersistanceStrings_staticInit(void);


#endif // ORG_ALLBINARY_GAME_CONFIGURATION_PERSISTANCE_PERSISTANCESTRINGS_H
