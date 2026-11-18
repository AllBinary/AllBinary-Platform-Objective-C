#ifndef ORG_ALLBINARY_GRAPHICS_DISPLAYABLE_EVENT_DISPLAYCHANGEEVENTHANDLER_H
#define ORG_ALLBINARY_GRAPHICS_DISPLAYABLE_EVENT_DISPLAYCHANGEEVENTHANDLER_H
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
// package org.allbinary.graphics.displayable.event

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class DisplayChangeEventHandler;
@class AllBinaryEventObject;
@class EventListenerInterface;
@class BasicEventHandler;
@class DisplayChangeEventListener;
@class DisplayChangeEvent;
#include "org/allbinary/logic/util/event/handler/BasicEventHandler.h"

@interface DisplayChangeEventHandler : BasicEventHandler {
@public
}
- (instancetype) init;
+ (DisplayChangeEventHandler*) getInstance;
- (void) process:(AllBinaryEventObject*)eventObject :(EventListenerInterface*)eventListenerInterface;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void DisplayChangeEventHandler_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_DISPLAYABLE_EVENT_DISPLAYCHANGEEVENTHANDLER_H
