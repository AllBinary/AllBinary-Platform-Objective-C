#ifndef ORG_ALLBINARY_GAME_INPUT_PCGAMEKEY_H
#define ORG_ALLBINARY_GAME_INPUT_PCGAMEKEY_H
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
@class PCGameKey;
@class StringUtil;
@class Input;
@class InputFactory;
#include "org/allbinary/game/input/Input.h"

@interface PCGameKey : Input {
@public
}
- (instancetype) init:(int32_t)keyCode :(const char*)name;
- (const char*) toString;
+ (const char*) getString:(int32_t)keyCode;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PCGameKey_staticInit(void);


#endif // ORG_ALLBINARY_GAME_INPUT_PCGAMEKEY_H
