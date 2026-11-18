#ifndef ORG_ALLBINARY_INPUT_MAGNETIC_FIELD_NOMAGNETICFIELDSENSOR_H
#define ORG_ALLBINARY_INPUT_MAGNETIC_FIELD_NOMAGNETICFIELDSENSOR_H
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
// package org.allbinary.input.magnetic.field

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class NoMagneticFieldSensor;
@class AllBinarySensorListener;
@class Orientation;
@class AllBinaryMagneticFieldSensor;
#include "org/allbinary/input/AllBinarySensorListener.h"
#include "org/allbinary/input/magnetic/field/AllBinaryMagneticFieldSensor.h"

@interface NoMagneticFieldSensor : AllBinaryMagneticFieldSensor <AllBinarySensorListener> {
@public
}
- (instancetype) init;
- (Orientation*) getOrientation;
- (void) onSensorChange;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NoMagneticFieldSensor_staticInit(void);

#if __has_include("org/allbinary/logic/math/Orientation.h")
#include "org/allbinary/logic/math/Orientation.h"
#endif

#endif // ORG_ALLBINARY_INPUT_MAGNETIC_FIELD_NOMAGNETICFIELDSENSOR_H
