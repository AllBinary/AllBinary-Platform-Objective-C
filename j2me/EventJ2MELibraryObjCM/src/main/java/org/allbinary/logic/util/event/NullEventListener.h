#ifndef ORG_ALLBINARY_LOGIC_UTIL_EVENT_NULLEVENTLISTENER_H
#define ORG_ALLBINARY_LOGIC_UTIL_EVENT_NULLEVENTLISTENER_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.logic.util.event

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class NullEventListener;
@class EventListenerInterface;
@class AllBinaryEventObject;
#include "org/allbinary/logic/util/event/EventListenerInterface.h"

@interface NullEventListener : ABObject <EventListenerInterface> {
@public
}
- (instancetype) init;
- (void) onEvent:(AllBinaryEventObject*)eventObject;
@end

extern NullEventListener* NullEventListener_NULL_EVENT_LISTENER;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NullEventListener_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_UTIL_EVENT_NULLEVENTLISTENER_H
