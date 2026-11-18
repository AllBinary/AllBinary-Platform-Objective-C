#ifndef ORG_ALLBINARY_GAME_INPUT_EVENT_DOWNKEYEVENTHANDLERBASE_H
#define ORG_ALLBINARY_GAME_INPUT_EVENT_DOWNKEYEVENTHANDLERBASE_H
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
@class DownKeyEventHandlerBase;
@class PlayerGameInput;
@class StringMaker;
@class EventListenerInterface;
@class EventStrings;
@class BasicEventHandler;
@class BasicArrayList;
@class BasicArrayListD;
@class GameKeyEvent;
@class DownKeyEventListenerInterface;
#include "org/allbinary/logic/util/event/handler/BasicEventHandler.h"
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif
#include "java/lang/Integer.h"

@interface DownKeyEventHandlerBase : BasicEventHandler {
@public
    BasicArrayList* list;
}
- (instancetype) init;
- (void) initFields;
- (void) addListener:(PlayerGameInput*)playerGameInput;
- (void) removeAllListeners;
- (void) removeListenerSingleThreaded:(EventListenerInterface*)eventListenerInterface;
- (void) removeListener:(EventListenerInterface*)eventListenerInterface;
- (void) fireEventI:(int32_t)eventObject;
- (void) fireEventForGameKeyEvent:(GameKeyEvent*)eventObject;
- (void) processI:(int32_t)eventObject :(EventListenerInterface*)eventListenerInterface;
- (void) processEvent:(GameKeyEvent*)eventObject :(EventListenerInterface*)eventListenerInterface;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void DownKeyEventHandlerBase_staticInit(void);


#endif // ORG_ALLBINARY_GAME_INPUT_EVENT_DOWNKEYEVENTHANDLERBASE_H
