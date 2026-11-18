#ifndef ORG_ALLBINARY_GAME_CONFIGURATION_EVENT_GAMEINITIALIZEDEVENT_H
#define ORG_ALLBINARY_GAME_CONFIGURATION_EVENT_GAMEINITIALIZEDEVENT_H
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
// package org.allbinary.game.configuration.event

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class GameInitializedEvent;
@class ResourceLoadingLevel;
@class ResourceLoadingLevelFactory;
@class AllBinaryEventObject;
#if __has_include("org/allbinary/game/resource/ResourceLoadingLevel.h")
#include "org/allbinary/game/resource/ResourceLoadingLevel.h"
#endif
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"

@interface GameInitializedEvent : AllBinaryEventObject {
@public
    ResourceLoadingLevel* resourceLoadingLevel;
    int32_t level;
}
- (instancetype) init:(id)anyType;
- (void) initFields;
- (void) setLevel:(int32_t)level;
- (int32_t) getLevel;
- (void) setResourceLoadingLevel:(ResourceLoadingLevel*)resourceLoadingLevel;
- (ResourceLoadingLevel*) getResourceLoadingLevel;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameInitializedEvent_staticInit(void);

#if __has_include("org/allbinary/game/resource/ResourceLoadingLevel.h")
#include "org/allbinary/game/resource/ResourceLoadingLevel.h"
#endif

#endif // ORG_ALLBINARY_GAME_CONFIGURATION_EVENT_GAMEINITIALIZEDEVENT_H
