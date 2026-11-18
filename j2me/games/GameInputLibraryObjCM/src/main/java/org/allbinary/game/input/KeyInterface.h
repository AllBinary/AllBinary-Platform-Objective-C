#ifndef ORG_ALLBINARY_GAME_INPUT_KEYINTERFACE_H
#define ORG_ALLBINARY_GAME_INPUT_KEYINTERFACE_H
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
// package org.allbinary.game.input

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class KeyInterface;

@protocol KeyInterface
- (void) keyPressed:(int32_t)keyCode;
- (void) keyReleased:(int32_t)keyCode;
- (void) keyPressedByDevice:(int32_t)keyCode :(int32_t)deviceId;
- (void) keyReleasedByDevice:(int32_t)keyCode :(int32_t)deviceId;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void KeyInterface_staticInit(void);


#endif // ORG_ALLBINARY_GAME_INPUT_KEYINTERFACE_H
