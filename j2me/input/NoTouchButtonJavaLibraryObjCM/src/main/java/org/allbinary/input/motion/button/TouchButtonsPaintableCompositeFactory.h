#ifndef ORG_ALLBINARY_INPUT_MOTION_BUTTON_TOUCHBUTTONSPAINTABLECOMPOSITEFACTORY_H
#define ORG_ALLBINARY_INPUT_MOTION_BUTTON_TOUCHBUTTONSPAINTABLECOMPOSITEFACTORY_H
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
@class TouchButtonsPaintableCompositeFactory;
@class InputMappingInterface;
@class BasicColor;
@class ProcessPaintable;

@interface TouchButtonsPaintableCompositeFactory : ABObject {
@public
}
- (instancetype) init;
+ (ProcessPaintable*) getInstance:(InputMappingInterface*)inputMappingInterface :(BasicColor*)basicColor;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void TouchButtonsPaintableCompositeFactory_staticInit(void);

#if __has_include("org/allbinary/graphics/paint/ProcessPaintable.h")
#include "org/allbinary/graphics/paint/ProcessPaintable.h"
#endif

#endif // ORG_ALLBINARY_INPUT_MOTION_BUTTON_TOUCHBUTTONSPAINTABLECOMPOSITEFACTORY_H
