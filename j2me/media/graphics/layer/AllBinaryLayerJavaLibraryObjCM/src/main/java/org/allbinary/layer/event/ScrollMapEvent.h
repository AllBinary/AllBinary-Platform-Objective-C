#ifndef ORG_ALLBINARY_LAYER_EVENT_SCROLLMAPEVENT_H
#define ORG_ALLBINARY_LAYER_EVENT_SCROLLMAPEVENT_H
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
// package org.allbinary.layer.event

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class ScrollMapEvent;
@class AllBinaryEventObject;
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"

@interface ScrollMapEvent : AllBinaryEventObject {
@public
    int32_t dx;
    int32_t dy;
}
- (instancetype) init:(id)anyType;
- (void) initFields;
- (void) setDx:(int32_t)dx;
- (int32_t) getDx;
- (void) setDy:(int32_t)dy;
- (int32_t) getDy;
- (void) setDxDy:(int32_t)dx :(int32_t)dy;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ScrollMapEvent_staticInit(void);


#endif // ORG_ALLBINARY_LAYER_EVENT_SCROLLMAPEVENT_H
