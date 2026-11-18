#ifndef ORG_ALLBINARY_GAME_GAMEADSTATE_H
#define ORG_ALLBINARY_GAME_GAMEADSTATE_H
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
// package org.allbinary.game

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class GameAdState;
@class GameAdStateBase;
@class AdConfiguration;
@class VirtualKeyboardEvent;
@class VirtualKeyboardEventHandler;
@class VirtualKeyboardEventListenerInterface;
@class AllBinaryEventObject;
#include "org/allbinary/business/advertisement/GameAdStateBase.h"
#include "org/allbinary/input/event/VirtualKeyboardEventListenerInterface.h"

@interface GameAdState : GameAdStateBase <VirtualKeyboardEventListenerInterface> {
@public
}
- (instancetype) init:(AdConfiguration*)adConfiguration;
- (void) onVirtualKeyboardEvent:(VirtualKeyboardEvent*)virtualKeyboardEvent;
- (void) onEvent:(AllBinaryEventObject*)eventObject;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameAdState_staticInit(void);


#endif // ORG_ALLBINARY_GAME_GAMEADSTATE_H
