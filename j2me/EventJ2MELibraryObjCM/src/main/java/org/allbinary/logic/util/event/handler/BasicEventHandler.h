#ifndef ORG_ALLBINARY_LOGIC_UTIL_EVENT_HANDLER_BASICEVENTHANDLER_H
#define ORG_ALLBINARY_LOGIC_UTIL_EVENT_HANDLER_BASICEVENTHANDLER_H
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
// package org.allbinary.logic.util.event.handler

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class BasicEventHandler;
@class JsType;
@class LogUtil;
@class StringMaker;
@class AllBinaryEventObject;
@class EventListenerInterface;
@class EventStrings;
@class CommonStrings;
@class BasicArrayList;
@class BasicArrayListD;
@class JsMethod;
@class JsConstructor;
@class JsProperty;
@class BasicEventHandlerInterface;
// #include "jsinterop/annotations/JsType.h"
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/logic/util/event/EventStrings.h")
#include "org/allbinary/logic/util/event/EventStrings.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif
// #include "jsinterop/annotations/JsMethod.h"
// #include "jsinterop/annotations/JsConstructor.h"
// #include "jsinterop/annotations/JsProperty.h"
#include "org/allbinary/logic/util/event/handler/BasicEventHandlerInterface.h"

@interface BasicEventHandler : ABObject <BasicEventHandlerInterface> {
@public
    LogUtil* logUtil;
    CommonStrings* commonStrings;
    EventStrings* eventStrings;
    BasicArrayList* eventListenerInterfaceList;
}
- (instancetype) init;
- (void) initFields;
- (void) removeAllListeners;
- (void) addListeners:(BasicArrayList*)vector;
- (void) removeListeners:(BasicArrayList*)vector;
- (void) addListenerSingleThreaded:(EventListenerInterface*)eventListenerInterface;
- (void) addListenerInterface:(EventListenerInterface*)eventListenerInterface;
- (void) removeListenerSingleThreaded:(EventListenerInterface*)eventListenerInterface;
- (void) removeListener:(EventListenerInterface*)eventListenerInterface;
- (void) fireEvent:(AllBinaryEventObject*)eventObject;
- (void) process:(AllBinaryEventObject*)eventObject :(EventListenerInterface*)eventListenerInterface;
- (BasicArrayList*) getEventListenerInterfaceListP;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BasicEventHandler_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_UTIL_EVENT_HANDLER_BASICEVENTHANDLER_H
