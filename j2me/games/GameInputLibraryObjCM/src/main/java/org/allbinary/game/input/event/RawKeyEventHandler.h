#ifndef ORG_ALLBINARY_GAME_INPUT_EVENT_RAWKEYEVENTHANDLER_H
#define ORG_ALLBINARY_GAME_INPUT_EVENT_RAWKEYEVENTHANDLER_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
@class RawKeyEventHandler;
@class LogUtil;
@class StringMaker;
@class EventStrings;
@class CommonStrings;
@class BasicArrayList;
@class BasicArrayListD;
@class RawKeyEventListener;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

@interface RawKeyEventHandler : ABObject {
@public
    LogUtil* logUtil;
    BasicArrayList* eventListenerInterfaceList;
}
- (instancetype) init;
- (void) initFields;
+ (RawKeyEventHandler*) getInstance;
- (void) removeAllListeners;
- (void) addListeners:(BasicArrayList*)vector;
- (void) addListenerSingleThreaded:(RawKeyEventListener*)eventListenerInterface;
- (void) addListener:(RawKeyEventListener*)eventListenerInterface;
- (void) removeListenerSingleThreaded:(RawKeyEventListener*)eventListenerInterface;
- (void) removeListener:(RawKeyEventListener*)eventListenerInterface;
- (void) fireEvent:(int32_t)keyCode :(int32_t)deviceId :(bool)repeated;
- (void) process:(int32_t)keyCode :(int32_t)deviceId :(bool)repeated :(RawKeyEventListener*)eventListenerInterface;
- (BasicArrayList*) getEventListenerInterfaceListP;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void RawKeyEventHandler_staticInit(void);

#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

#endif // ORG_ALLBINARY_GAME_INPUT_EVENT_RAWKEYEVENTHANDLER_H
