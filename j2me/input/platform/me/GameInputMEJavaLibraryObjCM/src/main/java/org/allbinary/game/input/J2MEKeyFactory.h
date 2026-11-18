#ifndef ORG_ALLBINARY_GAME_INPUT_J2MEKEYFACTORY_H
#define ORG_ALLBINARY_GAME_INPUT_J2MEKEYFACTORY_H
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
@class J2MEKeyFactory;
@class GameKeyFactory;
@class GameKey;
@class InputFactory;
@class Input;
#if __has_include("org/allbinary/game/input/GameKeyFactory.h")
#include "org/allbinary/game/input/GameKeyFactory.h"
#endif

@interface J2MEKeyFactory : ABObject {
@public
    GameKeyFactory* gameKeyFactory;
}
- (instancetype) init;
- (void) initFields;
+ (J2MEKeyFactory*) getInstance;
- (void) init_;
- (bool) isSubmission:(Input*)input;
- (bool) isDelete:(Input*)input;
- (bool) isBackSpace:(Input*)input;
- (bool) isUp:(Input*)input;
- (bool) isDown:(Input*)input;
- (bool) isLeft:(Input*)input;
- (bool) isRight:(Input*)input;
- (bool) isEnter:(Input*)input;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void J2MEKeyFactory_staticInit(void);


#endif // ORG_ALLBINARY_GAME_INPUT_J2MEKEYFACTORY_H
