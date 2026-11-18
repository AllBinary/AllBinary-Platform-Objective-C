#ifndef ORG_ALLBINARY_INPUT_ACCELEROMETER_NOACCELEROMETERSENSOR_H
#define ORG_ALLBINARY_INPUT_ACCELEROMETER_NOACCELEROMETERSENSOR_H
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
// package org.allbinary.input.accelerometer

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class NoAccelerometerSensor;
@class AllBinaryOrientationSensor;
@class Orientation;
#include "org/allbinary/input/gyro/AllBinaryOrientationSensor.h"

@interface NoAccelerometerSensor : AllBinaryOrientationSensor {
@public
}
- (instancetype) init;
- (Orientation*) getOrientation;
- (void) onSensorChange;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NoAccelerometerSensor_staticInit(void);

#if __has_include("org/allbinary/logic/math/Orientation.h")
#include "org/allbinary/logic/math/Orientation.h"
#endif

#endif // ORG_ALLBINARY_INPUT_ACCELEROMETER_NOACCELEROMETERSENSOR_H
