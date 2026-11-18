#ifndef ORG_ALLBINARY_ANDROID_INPUT_MOTION_ANALOGCONTROLLERHELPER_H
#define ORG_ALLBINARY_ANDROID_INPUT_MOTION_ANALOGCONTROLLERHELPER_H
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
@class AnalogControllerHelper;
@class CollidableDestroyableDamageableLayer;
@class TimeDelayHelper;
@class AnalogControllerConfigurationFactory;
#if __has_include("org/allbinary/time/TimeDelayHelper.h")
#include "org/allbinary/time/TimeDelayHelper.h"
#endif

@interface AnalogControllerHelper : ABObject {
@public
    int32_t reduceTimeFactor;
    int32_t SCALE_VALUE;
    TimeDelayHelper* rightTimeElapsedHelper;
    TimeDelayHelper* leftTimeElapsedHelper;
    TimeDelayHelper* downTimeElapsedHelper;
    TimeDelayHelper* upTimeElapsedHelper;
}
- (instancetype) init:(int32_t)reduceTimeFactor;
- (void) initFields;
- (void) right:(CollidableDestroyableDamageableLayer*)collidableDestroyableDamageableLayer :(int32_t)xAnalogValue;
- (void) left:(CollidableDestroyableDamageableLayer*)collidableDestroyableDamageableLayer :(int32_t)xAnalogValue;
- (void) up:(CollidableDestroyableDamageableLayer*)collidableDestroyableDamageableLayer :(int32_t)xAnalogValue;
- (void) down:(CollidableDestroyableDamageableLayer*)collidableDestroyableDamageableLayer :(int32_t)xAnalogValue;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AnalogControllerHelper_staticInit(void);


#endif // ORG_ALLBINARY_ANDROID_INPUT_MOTION_ANALOGCONTROLLERHELPER_H
