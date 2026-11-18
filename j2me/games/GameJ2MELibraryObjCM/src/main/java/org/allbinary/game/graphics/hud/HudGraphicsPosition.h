#ifndef ORG_ALLBINARY_GAME_GRAPHICS_HUD_HUDGRAPHICSPOSITION_H
#define ORG_ALLBINARY_GAME_GRAPHICS_HUD_HUDGRAPHICSPOSITION_H
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
@class HudGraphicsPosition;
@class GPoint;
@class PointFactory;
#if __has_include("org/allbinary/graphics/GPoint.h")
#include "org/allbinary/graphics/GPoint.h"
#endif

@interface HudGraphicsPosition : ABObject {
@public
    int32_t anchor;
    GPoint* point;
}
- (instancetype) init:(GPoint*)point :(int32_t)anchor;
- (void) initFields;
- (int32_t) getAnchor;
- (void) setAnchor:(int32_t)anchor;
- (GPoint*) getPoint;
- (void) setPoint:(GPoint*)point;
@end

extern HudGraphicsPosition* HudGraphicsPosition_NULL_HUD_GRAPHICS_POSITION;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void HudGraphicsPosition_staticInit(void);

#if __has_include("org/allbinary/graphics/GPoint.h")
#include "org/allbinary/graphics/GPoint.h"
#endif

#endif // ORG_ALLBINARY_GAME_GRAPHICS_HUD_HUDGRAPHICSPOSITION_H
