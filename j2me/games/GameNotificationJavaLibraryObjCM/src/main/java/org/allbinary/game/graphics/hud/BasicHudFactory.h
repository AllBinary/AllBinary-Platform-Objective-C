#ifndef ORG_ALLBINARY_GAME_GRAPHICS_HUD_BASICHUDFACTORY_H
#define ORG_ALLBINARY_GAME_GRAPHICS_HUD_BASICHUDFACTORY_H
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
// package org.allbinary.game.graphics.hud

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class BasicHudFactory;

@interface BasicHudFactory : ABObject {
@public
    const char* DIRECTION_EXCEPTION;
    int32_t VERTICAL;
    int32_t HORIZONTAL;
    int32_t BOTTOMLEFT;
    int32_t BOTTOMRIGHT;
    int32_t TOPLEFT;
    int32_t TOPRIGHT;
    int32_t BOTTOMCENTER;
    int32_t TOPCENTER;
    int32_t ABSOLUTE;
}
- (instancetype) init;
- (void) initFields;
+ (BasicHudFactory*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BasicHudFactory_staticInit(void);


#endif // ORG_ALLBINARY_GAME_GRAPHICS_HUD_BASICHUDFACTORY_H
