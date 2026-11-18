#ifndef ORG_ALLBINARY_VIEW_EVENT_VIEWPOSITIONEVENTHANDLER_H
#define ORG_ALLBINARY_VIEW_EVENT_VIEWPOSITIONEVENTHANDLER_H
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
// package org.allbinary.view.event

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class ViewPositionEventHandler;
@class AllBinaryLayer;
@class AllBinaryEventObject;
@class EventListenerInterface;
@class EventStrings;
@class BasicEventHandler;
@class BasicArrayList;
@class BasicArrayListD;
@class ViewPositionEvent;
@class ViewPositionEventListenerInterface;
#include "org/allbinary/logic/util/event/handler/BasicEventHandler.h"
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

@interface ViewPositionEventHandler : BasicEventHandler {
@public
    BasicArrayList* list;
}
- (instancetype) init;
- (void) initFields;
+ (ViewPositionEventHandler*) getInstance;
- (void) addListener:(AllBinaryLayer*)layerInterface;
- (void) removeAllListeners;
- (void) removeListener:(EventListenerInterface*)eventListenerInterface;
- (void) fireEvent:(AllBinaryEventObject*)eventObject;
- (void) process:(AllBinaryEventObject*)eventObject :(EventListenerInterface*)eventListenerInterface;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ViewPositionEventHandler_staticInit(void);


#endif // ORG_ALLBINARY_VIEW_EVENT_VIEWPOSITIONEVENTHANDLER_H
