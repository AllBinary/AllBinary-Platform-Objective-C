#ifndef ORG_ALLBINARY_GAME_INPUT_TESTINPUTEXAMPLE_H
#define ORG_ALLBINARY_GAME_INPUT_TESTINPUTEXAMPLE_H
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
@class TestInputExample;
@class Graphics;
@class TestInputInterface;
#include "org/allbinary/game/input/TestInputInterface.h"

@interface TestInputExample : ABObject <TestInputInterface> {
@public
    int32_t testValue;
}
- (instancetype) init;
- (void) initFields;
- (void) up;
- (void) down;
- (void) left;
- (void) right;
- (void) strafeLeft;
- (void) strafeRight;
- (void) paint:(Graphics*)graphics;
- (void) paintThreed:(Graphics*)graphics;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void TestInputExample_staticInit(void);


#endif // ORG_ALLBINARY_GAME_INPUT_TESTINPUTEXAMPLE_H
