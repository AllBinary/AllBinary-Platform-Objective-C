#ifndef ORG_ALLBINARY_GAME_INPUT_EVENT_UPKEYEVENTHANDLERBASE_H
#define ORG_ALLBINARY_GAME_INPUT_EVENT_UPKEYEVENTHANDLERBASE_H
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
// package org.allbinary.game.input.event

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class UpKeyEventHandlerBase;
@class PlayerGameInput;
@class StringMaker;
@class EventListenerInterface;
@class EventStrings;
@class BasicEventHandler;
@class BasicArrayList;
@class BasicArrayListD;
@class UpKeyEventListenerInterface;
#include "org/allbinary/logic/util/event/handler/BasicEventHandler.h"
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif
#include "java/lang/Integer.h"

@interface UpKeyEventHandlerBase : BasicEventHandler {
@public
    BasicArrayList* list;
}
- (instancetype) init;
- (void) initFields;
- (void) addListener:(PlayerGameInput*)playerGameInput;
- (void) removeAllListeners;
- (void) removeListenerSingleThreaded:(EventListenerInterface*)eventListenerInterface;
- (void) removeListener:(EventListenerInterface*)eventListenerInterface;
- (void) fireEventForInteger:(int32_t)eventObject;
- (void) processForInteger:(int32_t)eventObject :(EventListenerInterface*)eventListenerInterface;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void UpKeyEventHandlerBase_staticInit(void);


#endif // ORG_ALLBINARY_GAME_INPUT_EVENT_UPKEYEVENTHANDLERBASE_H
