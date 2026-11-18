#ifndef ORG_ALLBINARY_GAME_INPUT_PLATFORMKEYFACTORY_H
#define ORG_ALLBINARY_GAME_INPUT_PLATFORMKEYFACTORY_H
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
@class PlatformKeyFactory;
@class NullUtil;
@class PCGameKey;
@class PCKeyFactory;
@class Input;

@interface PlatformKeyFactory : ABObject {
@public
}
- (instancetype) init;
+ (PlatformKeyFactory*) getInstance;
- (const char*) getString:(int32_t)keyCode;
- (bool) isSubmission:(Input*)input;
- (bool) isDelete:(Input*)input;
- (bool) isBackSpace:(Input*)input;
- (bool) isUp:(Input*)input;
- (bool) isDown:(Input*)input;
- (bool) isEnter:(Input*)input;
- (bool) isLeft:(Input*)input;
- (bool) isRight:(Input*)input;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PlatformKeyFactory_staticInit(void);


#endif // ORG_ALLBINARY_GAME_INPUT_PLATFORMKEYFACTORY_H
