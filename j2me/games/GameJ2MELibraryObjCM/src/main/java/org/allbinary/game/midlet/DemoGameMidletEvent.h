#ifndef ORG_ALLBINARY_GAME_MIDLET_DEMOGAMEMIDLETEVENT_H
#define ORG_ALLBINARY_GAME_MIDLET_DEMOGAMEMIDLETEVENT_H
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
// package org.allbinary.game.midlet

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class DemoGameMidletEvent;
@class AllBinaryEventObject;
@class DemoGameMidletState;
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#if __has_include("org/allbinary/game/midlet/DemoGameMidletState.h")
#include "org/allbinary/game/midlet/DemoGameMidletState.h"
#endif

@interface DemoGameMidletEvent : AllBinaryEventObject {
@public
    DemoGameMidletState* demoGameMidletState;
}
- (instancetype) init:(id)anyType :(DemoGameMidletState*)demoGameMidletState;
- (void) initFields;
- (void) init_:(id)anyType;
- (void) setDemoGameMidletState:(DemoGameMidletState*)demoGameMidletState;
- (DemoGameMidletState*) getDemoGameMidletState;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void DemoGameMidletEvent_staticInit(void);


#endif // ORG_ALLBINARY_GAME_MIDLET_DEMOGAMEMIDLETEVENT_H
