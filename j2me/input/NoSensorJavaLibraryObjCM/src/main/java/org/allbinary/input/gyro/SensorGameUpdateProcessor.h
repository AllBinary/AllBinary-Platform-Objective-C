#ifndef ORG_ALLBINARY_INPUT_GYRO_SENSORGAMEUPDATEPROCESSOR_H
#define ORG_ALLBINARY_INPUT_GYRO_SENSORGAMEUPDATEPROCESSOR_H
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
@class SensorGameUpdateProcessor;
@class AllBinarySensor;
@class NoAllBinarySensor;
#if __has_include("org/allbinary/input/AllBinarySensor.h")
#include "org/allbinary/input/AllBinarySensor.h"
#endif

@interface SensorGameUpdateProcessor : ABObject {
@public
    AllBinarySensor* inputSensor;
}
- (instancetype) init;
- (void) initFields;
- (void) setInputSensor:(AllBinarySensor*)inputSensor;
- (AllBinarySensor*) getInputSensor;
- (void) process:(id)anyType;
- (void) sendNotifications:(id)anyType;
- (bool) isAnySensor;
- (void) setNoSensors;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void SensorGameUpdateProcessor_staticInit(void);

#if __has_include("org/allbinary/input/AllBinarySensor.h")
#include "org/allbinary/input/AllBinarySensor.h"
#endif

#endif // ORG_ALLBINARY_INPUT_GYRO_SENSORGAMEUPDATEPROCESSOR_H
