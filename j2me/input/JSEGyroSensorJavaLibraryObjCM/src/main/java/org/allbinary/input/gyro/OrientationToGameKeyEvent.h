#ifndef ORG_ALLBINARY_INPUT_GYRO_ORIENTATIONTOGAMEKEYEVENT_H
#define ORG_ALLBINARY_INPUT_GYRO_ORIENTATIONTOGAMEKEYEVENT_H
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
// package org.allbinary.input.gyro

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class OrientationToGameKeyEvent;
@class Features;
@class SensorFeatureFactory;
@class Orientation;
@class AllBinaryOrientationSensor;
@class NoGyroSensor;
#if __has_include("org/allbinary/input/gyro/AllBinaryOrientationSensor.h")
#include "org/allbinary/input/gyro/AllBinaryOrientationSensor.h"
#endif

@interface OrientationToGameKeyEvent : ABObject {
@public
    AllBinaryOrientationSensor* allBinaryGyroSensor;
    int32_t MIN;
}
- (instancetype) init;
- (void) initFields;
- (void) setAllBinaryGyroSensor:(AllBinaryOrientationSensor*)allBinaryGyroSensor;
- (AllBinaryOrientationSensor*) getAllBinaryGyroSensor;
- (void) process;
- (void) updateGameKeyEvents:(Orientation*)orientation :(int32_t)yaw :(int32_t)pitch :(int32_t)roll;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void OrientationToGameKeyEvent_staticInit(void);


#endif // ORG_ALLBINARY_INPUT_GYRO_ORIENTATIONTOGAMEKEYEVENT_H
