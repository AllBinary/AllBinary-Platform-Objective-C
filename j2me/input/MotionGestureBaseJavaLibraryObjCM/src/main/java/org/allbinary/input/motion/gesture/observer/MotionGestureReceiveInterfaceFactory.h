#ifndef ORG_ALLBINARY_INPUT_MOTION_GESTURE_OBSERVER_MOTIONGESTURERECEIVEINTERFACEFACTORY_H
#define ORG_ALLBINARY_INPUT_MOTION_GESTURE_OBSERVER_MOTIONGESTURERECEIVEINTERFACEFACTORY_H
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
@class MotionGestureReceiveInterfaceFactory;
@class MotionGestureConfiguration;
@class MotionGestureConfigurationFactory;
@class ResolveCompleteMotionGestureListener;
@class NullCompleteMotionGestureReceiver;
@class CompleteMotionGestureListenerInterface;

@interface MotionGestureReceiveInterfaceFactory : ABObject {
@public
}
- (instancetype) init;
+ (CompleteMotionGestureListenerInterface*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void MotionGestureReceiveInterfaceFactory_staticInit(void);


#endif // ORG_ALLBINARY_INPUT_MOTION_GESTURE_OBSERVER_MOTIONGESTURERECEIVEINTERFACEFACTORY_H
