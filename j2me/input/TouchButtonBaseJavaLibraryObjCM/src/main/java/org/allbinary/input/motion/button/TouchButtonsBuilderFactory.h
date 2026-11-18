#ifndef ORG_ALLBINARY_INPUT_MOTION_BUTTON_TOUCHBUTTONSBUILDERFACTORY_H
#define ORG_ALLBINARY_INPUT_MOTION_BUTTON_TOUCHBUTTONSBUILDERFACTORY_H
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
@class TouchButtonsBuilderFactory;
@class NoButtonsTouchInputFactory;
@class BaseTouchInput;

@interface TouchButtonsBuilderFactory : ABObject {
@public
}
- (instancetype) init;
- (BaseTouchInput*) getInstance;
@end

extern TouchButtonsBuilderFactory* TouchButtonsBuilderFactory_NO_TOUCH_BUTTON_BUILDER_FACTORY;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void TouchButtonsBuilderFactory_staticInit(void);


#endif // ORG_ALLBINARY_INPUT_MOTION_BUTTON_TOUCHBUTTONSBUILDERFACTORY_H
