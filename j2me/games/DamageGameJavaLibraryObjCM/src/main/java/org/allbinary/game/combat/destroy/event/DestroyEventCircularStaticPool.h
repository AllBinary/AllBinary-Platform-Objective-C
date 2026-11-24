#ifndef ORG_ALLBINARY_GAME_COMBAT_DESTROY_EVENT_DESTROYEVENTCIRCULARSTATICPOOL_H
#define ORG_ALLBINARY_GAME_COMBAT_DESTROY_EVENT_DESTROYEVENTCIRCULARSTATICPOOL_H
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
@class DestroyEventCircularStaticPool;
@class AllBinaryGameCanvas;
@class AllBinaryLayer;
@class AllBinaryEventCircularPool;
@class DestroyEventFactory;
@class DestroyedEvent;
#if __has_include("org/allbinary/logic/util/event/AllBinaryEventCircularPool.h")
#include "org/allbinary/logic/util/event/AllBinaryEventCircularPool.h"
#endif

@interface DestroyEventCircularStaticPool : ABObject {
@public
    AllBinaryEventCircularPool* EVENT_POOL;
}
- (instancetype) init;
- (void) initFields;
+ (DestroyEventCircularStaticPool*) getInstance;
- (void) initMethod:(AllBinaryGameCanvas*)combatGameCanvas;
- (DestroyedEvent*) getInstanceForLayer:(AllBinaryLayer*)layerInterface;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void DestroyEventCircularStaticPool_staticInit(void);


#endif // ORG_ALLBINARY_GAME_COMBAT_DESTROY_EVENT_DESTROYEVENTCIRCULARSTATICPOOL_H
