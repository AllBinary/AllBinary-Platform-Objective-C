#ifndef ORG_ALLBINARY_GAME_TERRAIN_BASICTERRAININFO_H
#define ORG_ALLBINARY_GAME_TERRAIN_BASICTERRAININFO_H
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
// package org.allbinary.game.terrain

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class BasicTerrainInfo;
@class Angle;
@class AngleFactory;
#if __has_include("org/allbinary/math/Angle.h")
#include "org/allbinary/math/Angle.h"
#endif

@interface BasicTerrainInfo : ABObject {
@public
    Angle* angle;
}
- (instancetype) init:(Angle*)angle;
- (void) initFields;
- (Angle*) getAngle;
- (void) setAngle:(Angle*)angle;
@end

extern BasicTerrainInfo* BasicTerrainInfo_NULL_BASIC_TERRAIN_INFO;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BasicTerrainInfo_staticInit(void);

#if __has_include("org/allbinary/math/Angle.h")
#include "org/allbinary/math/Angle.h"
#endif

#endif // ORG_ALLBINARY_GAME_TERRAIN_BASICTERRAININFO_H
