#ifndef ORG_ALLBINARY_GAME_INPUT_INPUT_H
#define ORG_ALLBINARY_GAME_INPUT_INPUT_H
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
@class Input;
@class StringMaker;
@class StringUtil;

@interface Input : ABObject {
@public
    int32_t id_;
    const char* name;
}
- (instancetype) init:(int32_t)id_ :(const char*)name;
- (void) initFields;
- (int32_t) getId;
- (void) setId:(int32_t)key;
- (const char*) getName;
- (void) setName:(const char*)keyName;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void Input_staticInit(void);


#endif // ORG_ALLBINARY_GAME_INPUT_INPUT_H
