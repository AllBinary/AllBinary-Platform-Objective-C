#ifndef ORG_ALLBINARY_GAME_COMBAT_DESTROY_EVENT_DESTROYEDEVENT_H
#define ORG_ALLBINARY_GAME_COMBAT_DESTROY_EVENT_DESTROYEDEVENT_H
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
// package org.allbinary.game.combat.destroy.event

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class DestroyedEvent;
@class AllBinaryGameCanvas;
@class NullGameCanvas;
@class AllBinaryLayer;
@class StringMaker;
@class StringUtil;
@class AllBinaryEventObject;
@class DestroyedEventHandler;
#if __has_include("org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h")
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h"
#endif
#if __has_include("org/allbinary/layer/AllBinaryLayer.h")
#include "org/allbinary/layer/AllBinaryLayer.h"
#endif
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"

@interface DestroyedEvent : AllBinaryEventObject {
@public
    AllBinaryGameCanvas* allBinaryGameCanvas;
    AllBinaryLayer* allBinaryLayerInterface;
}
- (instancetype) init:(AllBinaryGameCanvas*)combatGameCanvas;
- (void) initFields;
- (AllBinaryGameCanvas*) getAllBinaryGameCanvas;
- (AllBinaryLayer*) getLayerInterface;
- (void) setAllBinaryGameCanvas:(AllBinaryGameCanvas*)allBinaryGameCanvas;
- (void) setLayerInterfaceForCircularStaticPool:(AllBinaryLayer*)allBinaryLayerInterface;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void DestroyedEvent_staticInit(void);

#if __has_include("org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h")
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h"
#endif
#if __has_include("org/allbinary/layer/AllBinaryLayer.h")
#include "org/allbinary/layer/AllBinaryLayer.h"
#endif

#endif // ORG_ALLBINARY_GAME_COMBAT_DESTROY_EVENT_DESTROYEDEVENT_H
