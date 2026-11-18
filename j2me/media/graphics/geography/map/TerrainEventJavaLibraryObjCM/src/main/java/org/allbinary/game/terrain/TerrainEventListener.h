#ifndef ORG_ALLBINARY_GAME_TERRAIN_TERRAINEVENTLISTENER_H
#define ORG_ALLBINARY_GAME_TERRAIN_TERRAINEVENTLISTENER_H
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
@class TerrainEventListener;
@class ForcedLogUtil;
@class AllBinaryEventObject;
@class EventStrings;
@class BasicArrayList;
@class BasicArrayListD;
@class TerrainEventListenerInterface;
@class TerrainEvent;
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif
#include "org/allbinary/game/terrain/TerrainEventListenerInterface.h"

@interface TerrainEventListener : ABObject <TerrainEventListenerInterface> {
@public
    BasicArrayList* list;
}
- (instancetype) init;
- (void) initFields;
- (void) onEvent:(AllBinaryEventObject*)eventObject;
- (void) onTerrainEvent:(TerrainEvent*)terrainEvent;
- (BasicArrayList*) getList;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void TerrainEventListener_staticInit(void);

#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

#endif // ORG_ALLBINARY_GAME_TERRAIN_TERRAINEVENTLISTENER_H
