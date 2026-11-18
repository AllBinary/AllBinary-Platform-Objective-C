#ifndef ORG_ALLBINARY_ANDROID_INPUT_MOTION_SINGLEANALOGCONTROLLERVISITOR_H
#define ORG_ALLBINARY_ANDROID_INPUT_MOTION_SINGLEANALOGCONTROLLERVISITOR_H
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
@class SingleAnalogControllerVisitor;
@class AnalogLocationInput;
@class AnalogLocationInputFactory;
@class AllBinaryLayerManager;
@class AnalogControllerVisitor;
@class AnalogLocationInputProcessor;
#include "org/allbinary/android/input/motion/AnalogControllerVisitor.h"

@interface SingleAnalogControllerVisitor : AnalogControllerVisitor {
@public
    int32_t playerInputId;
}
- (instancetype) init:(int32_t)playerInputId;
- (void) initFields;
- (void) process:(AllBinaryLayerManager*)allbinaryLayerManager :(AnalogLocationInputProcessor*)analogLocationInputProcessor;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void SingleAnalogControllerVisitor_staticInit(void);


#endif // ORG_ALLBINARY_ANDROID_INPUT_MOTION_SINGLEANALOGCONTROLLERVISITOR_H
