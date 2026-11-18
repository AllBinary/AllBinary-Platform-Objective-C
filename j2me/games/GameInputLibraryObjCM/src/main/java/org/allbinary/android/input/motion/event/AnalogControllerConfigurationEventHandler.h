#ifndef ORG_ALLBINARY_ANDROID_INPUT_MOTION_EVENT_ANALOGCONTROLLERCONFIGURATIONEVENTHANDLER_H
#define ORG_ALLBINARY_ANDROID_INPUT_MOTION_EVENT_ANALOGCONTROLLERCONFIGURATIONEVENTHANDLER_H
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
// package org.allbinary.android.input.motion.event

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class AnalogControllerConfigurationEventHandler;
@class AllBinaryEventObject;
@class EventListenerInterface;
@class EventStrings;
@class BasicEventHandler;
@class BasicArrayList;
@class BasicArrayListD;
@class AnalogControllerConfigurationEventListenerInterface;
@class AnalogControllerConfigurationEvent;
#include "org/allbinary/logic/util/event/handler/BasicEventHandler.h"
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

@interface AnalogControllerConfigurationEventHandler : BasicEventHandler {
@public
    BasicArrayList* list;
}
- (instancetype) init;
- (void) initFields;
+ (AnalogControllerConfigurationEventHandler*) getInstance;
- (void) addListener:(AnalogControllerConfigurationEventListenerInterface*)analogControllerConfigurationEventListenerInterface;
- (void) removeAllListeners;
- (void) removeListener:(EventListenerInterface*)eventListenerInterface;
- (void) fireEvent:(AllBinaryEventObject*)eventObject;
- (void) process:(AllBinaryEventObject*)eventObject :(EventListenerInterface*)eventListenerInterface;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AnalogControllerConfigurationEventHandler_staticInit(void);


#endif // ORG_ALLBINARY_ANDROID_INPUT_MOTION_EVENT_ANALOGCONTROLLERCONFIGURATIONEVENTHANDLER_H
