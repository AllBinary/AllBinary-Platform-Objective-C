#ifndef ORG_ALLBINARY_ANDROID_INPUT_MOTION_ANALOGCONTROLLERCONFIGURATIONFACTORY_H
#define ORG_ALLBINARY_ANDROID_INPUT_MOTION_ANALOGCONTROLLERCONFIGURATIONFACTORY_H
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
// package org.allbinary.android.input.motion

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class AnalogControllerConfigurationFactory;
@class AnalogControllerConfigurationEvent;
@class AnalogControllerConfigurationEventHandler;
@class ScaleFactorFactory;
#if __has_include("org/allbinary/android/input/motion/event/AnalogControllerConfigurationEvent.h")
#include "org/allbinary/android/input/motion/event/AnalogControllerConfigurationEvent.h"
#endif

@interface AnalogControllerConfigurationFactory : ABObject {
@public
    int32_t SCALE_FACTOR;
    int32_t SCALE_VALUE;
    bool available;
    AnalogControllerConfigurationEvent* analogControllerConfigurationEvent;
}
- (instancetype) init;
- (void) initFields;
+ (AnalogControllerConfigurationFactory*) getInstance;
- (bool) isAvailable;
- (void) setAvailable:(bool)available;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AnalogControllerConfigurationFactory_staticInit(void);


#endif // ORG_ALLBINARY_ANDROID_INPUT_MOTION_ANALOGCONTROLLERCONFIGURATIONFACTORY_H
