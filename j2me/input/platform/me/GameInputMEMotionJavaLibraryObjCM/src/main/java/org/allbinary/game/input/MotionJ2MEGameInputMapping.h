#ifndef ORG_ALLBINARY_GAME_INPUT_MOTIONJ2MEGAMEINPUTMAPPING_H
#define ORG_ALLBINARY_GAME_INPUT_MOTIONJ2MEGAMEINPUTMAPPING_H
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
@class MotionJ2MEGameInputMapping;
@class InputToGameKeyMapping;
@class J2MEGameInputMapping;
@class MotionJ2MEDefaultGameInputMapping;
#include "org/allbinary/game/input/J2MEGameInputMapping.h"

@interface MotionJ2MEGameInputMapping : J2MEGameInputMapping {
@public
}
- (instancetype) init;
- (InputToGameKeyMapping*) getDefault;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void MotionJ2MEGameInputMapping_staticInit(void);

#if __has_include("org/allbinary/game/input/mapping/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/mapping/InputToGameKeyMapping.h"
#endif

#endif // ORG_ALLBINARY_GAME_INPUT_MOTIONJ2MEGAMEINPUTMAPPING_H
