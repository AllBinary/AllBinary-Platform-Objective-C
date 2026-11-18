#ifndef ORG_ALLBINARY_INPUT_MOTION_GESTURE_OBSERVER_MOTIONEVENTFACTORY_H
#define ORG_ALLBINARY_INPUT_MOTION_GESTURE_OBSERVER_MOTIONEVENTFACTORY_H
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
// package org.allbinary.input.motion.gesture.observer

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class MotionEventFactory;
@class Input;
@class InputFactory;
@class MotionGestureInput;
@class TouchMotionGestureFactory;
@class AllBinaryEventObject;
@class AllBinaryEventObjectFactoryInterface;
@class MotionGestureEvent;
#include "org/allbinary/logic/util/event/AllBinaryEventObjectFactoryInterface.h"

@interface MotionEventFactory : ABObject <AllBinaryEventObjectFactoryInterface> {
@public
    id source;
    int32_t id_;
}
- (instancetype) init:(id)source :(int32_t)id_;
- (void) initFields;
- (AllBinaryEventObject*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void MotionEventFactory_staticInit(void);

#if __has_include("org/allbinary/logic/util/event/AllBinaryEventObject.h")
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#endif

#endif // ORG_ALLBINARY_INPUT_MOTION_GESTURE_OBSERVER_MOTIONEVENTFACTORY_H
