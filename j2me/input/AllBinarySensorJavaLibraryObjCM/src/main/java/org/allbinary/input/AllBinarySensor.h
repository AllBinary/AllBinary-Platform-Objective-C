#ifndef ORG_ALLBINARY_INPUT_ALLBINARYSENSOR_H
#define ORG_ALLBINARY_INPUT_ALLBINARYSENSOR_H
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
// package org.allbinary.input

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class AllBinarySensor;
@class ForcedLogUtil;
@class LogUtil;
@class CommonStrings;
@class AllBinarySensorListener;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#include "org/allbinary/input/AllBinarySensorListener.h"

@interface AllBinarySensor : ABObject <AllBinarySensorListener> {
@public
    LogUtil* logUtil;
    CommonStrings* commonStrings;
}
- (instancetype) init;
- (void) initFields;
- (void) init_;
- (void) update;
+ (void) setMax:(int32_t)max;
+ (int32_t) getMax;
- (int32_t) getId;
- (void) shutdown;
- (void) onSensorChange;
@end

extern AllBinarySensor* AllBinarySensor_NULL_ALLBINARY_SENSOR;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AllBinarySensor_staticInit(void);


#endif // ORG_ALLBINARY_INPUT_ALLBINARYSENSOR_H
