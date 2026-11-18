#ifndef ORG_ALLBINARY_INPUT_EVENT_VIRTUALKEYBOARDEVENTHANDLER_H
#define ORG_ALLBINARY_INPUT_EVENT_VIRTUALKEYBOARDEVENTHANDLER_H
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
// package org.allbinary.input.event

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class VirtualKeyboardEventHandler;
@class BooleanFactory;
@class AllBinaryEventObject;
@class EventListenerInterface;
@class BasicEventHandler;
@class VirtualKeyboardEvent;
@class VirtualKeyboardEventListenerInterface;
#include "org/allbinary/logic/util/event/handler/BasicEventHandler.h"
#include "java/lang/Thread.h"
#if __has_include("org/allbinary/input/event/VirtualKeyboardEvent.h")
#include "org/allbinary/input/event/VirtualKeyboardEvent.h"
#endif

@interface VirtualKeyboardEventHandler : BasicEventHandler {
@public
    VirtualKeyboardEvent* SHOW_EVENT;
    VirtualKeyboardEvent* HIDE_EVENT;
}
- (instancetype) init;
- (void) initFields;
+ (VirtualKeyboardEventHandler*) getInstance;
- (void) process:(AllBinaryEventObject*)eventObject :(EventListenerInterface*)eventListenerInterface;
- (void) open;
- (void) close;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void VirtualKeyboardEventHandler_staticInit(void);


#endif // ORG_ALLBINARY_INPUT_EVENT_VIRTUALKEYBOARDEVENTHANDLER_H
