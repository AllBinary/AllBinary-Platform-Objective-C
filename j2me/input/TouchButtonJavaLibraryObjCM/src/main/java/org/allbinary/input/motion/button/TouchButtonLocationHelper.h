#ifndef ORG_ALLBINARY_INPUT_MOTION_BUTTON_TOUCHBUTTONLOCATIONHELPER_H
#define ORG_ALLBINARY_INPUT_MOTION_BUTTON_TOUCHBUTTONLOCATIONHELPER_H
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
// package org.allbinary.input.motion.button

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class TouchButtonLocationHelper;
@class DisplayInfoSingleton;
@class StringMaker;
@class CommonButtons;

@interface TouchButtonLocationHelper : ABObject {
@public
    int32_t totalColumns;
    int32_t totalRows;
    int32_t columnsRemainder;
    int32_t rowsRemainder;
    int32_t columnsRemainderHalf;
    int32_t rowsRemainderHalf;
}
- (instancetype) init;
- (void) initFields;
- (int32_t) getTotalColumns;
- (int32_t) getTotalRows;
- (int32_t) getColumnsRemainder;
- (int32_t) getRowsRemainder;
- (int32_t) getColumnsRemainderHalf;
- (int32_t) getRowsRemainderHalf;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void TouchButtonLocationHelper_staticInit(void);


#endif // ORG_ALLBINARY_INPUT_MOTION_BUTTON_TOUCHBUTTONLOCATIONHELPER_H
