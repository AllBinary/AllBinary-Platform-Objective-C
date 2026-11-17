#ifndef ORG_ALLBINARY_LOGIC_MATH_PRIMITIVELONGUTIL_H
#define ORG_ALLBINARY_LOGIC_MATH_PRIMITIVELONGUTIL_H
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
// package org.allbinary.logic.math

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class PrimitiveLongUtil;
@class NullUtil;
@class LogUtil;
@class CommonStrings;
@class PrimitiveLongSingleton;
@class MathUtil;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/logic/math/PrimitiveLongSingleton.h")
#include "org/allbinary/logic/math/PrimitiveLongSingleton.h"
#endif

@interface PrimitiveLongUtil : ABObject {
@public
    LogUtil* logUtil;
    int32_t powerOfTen;
    int32_t maxValue;
    int32_t maxDigits;
    uint16_t* charArray;
    int32_t currentTotalDigits;
    PrimitiveLongSingleton* primitiveLongSingleton;
}
- (instancetype) init:(int32_t)powerOfTen :(id)unused;
- (void) initFields;
+ (PrimitiveLongUtil*) createPowerOfTen:(int32_t)powerOfTen;
- (uint16_t*) getCharArray:(int32_t)value;
- (void) setCurrentTotalDigits:(int32_t)currentTotalDigits;
- (int32_t) getCurrentTotalDigits;
- (int32_t) getMaxDigits;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PrimitiveLongUtil_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_MATH_PRIMITIVELONGUTIL_H
