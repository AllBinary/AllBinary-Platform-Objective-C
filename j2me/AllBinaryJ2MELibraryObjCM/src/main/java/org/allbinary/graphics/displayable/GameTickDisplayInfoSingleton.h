#ifndef ORG_ALLBINARY_GRAPHICS_DISPLAYABLE_GAMETICKDISPLAYINFOSINGLETON_H
#define ORG_ALLBINARY_GRAPHICS_DISPLAYABLE_GAMETICKDISPLAYINFOSINGLETON_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.graphics.displayable

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class GameTickDisplayInfoSingleton;
@class DisplayInfoSingleton;
#if __has_include("org/allbinary/graphics/displayable/DisplayInfoSingleton.h")
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#endif

@interface GameTickDisplayInfoSingleton : ABObject {
@public
    DisplayInfoSingleton* displayInfoSingleton;
    int32_t lastWidth;
    int32_t lastHeight;
    int32_t lastHalfWidth;
    int32_t lastHalfHeight;
}
- (instancetype) init;
- (void) initFields;
+ (GameTickDisplayInfoSingleton*) getInstance;
- (void) update;
- (int32_t) getLastWidth;
- (int32_t) getLastHeight;
- (int32_t) getLastHalfWidth;
- (int32_t) getLastHalfHeight;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameTickDisplayInfoSingleton_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_DISPLAYABLE_GAMETICKDISPLAYINFOSINGLETON_H
