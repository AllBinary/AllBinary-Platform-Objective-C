#ifndef ORG_ALLBINARY_GAME_TERRAIN_TERRAINEVENT_H
#define ORG_ALLBINARY_GAME_TERRAIN_TERRAINEVENT_H
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
@class TerrainEvent;
@class NullUtil;
@class StringMaker;
@class AllBinaryEventObject;
@class BasicTerrainInfo;
// #include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#if __has_include("org/allbinary/game/terrain/BasicTerrainInfo.h")
#include "org/allbinary/game/terrain/BasicTerrainInfo.h"
#endif

@interface TerrainEvent : AllBinaryEventObject {
@public
    BasicTerrainInfo* basicTerrainInfo;
}
- (instancetype) init:(id)basicTerrainInfo;
- (void) initFields;
- (const char*) toString;
- (BasicTerrainInfo*) getBasicTerrainInfo;
- (void) setBasicTerrainInfo:(BasicTerrainInfo*)basicTerrainInfo;
- (void) setBasicTerrainInfoForCircularStaticPool:(BasicTerrainInfo*)basicTerrainInfo;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void TerrainEvent_staticInit(void);


#endif // ORG_ALLBINARY_GAME_TERRAIN_TERRAINEVENT_H
