#ifndef ORG_ALLBINARY_INPUT_MOTION_BUTTON_BASICTOUCHBUTTONSBUILDER_H
#define ORG_ALLBINARY_INPUT_MOTION_BUTTON_BASICTOUCHBUTTONSBUILDER_H
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
@class BasicTouchButtonsBuilder;
@class LogUtil;
@class BasicArrayList;
@class BasicArrayListD;
@class BasicArrayListUtil;
@class BaseTouchInput;
@class CommonButtons;
@class TouchButtonLocationHelper;
@class BasicTouchButtonCellPositionFactory;
@class TouchButton;
@class BasicTouchInputFactory;
@class TouchButtonUpResource;
@class TouchButtonDownResource;
@class TouchButtonTurnLeftResource;
@class TouchButtonTurnRightResource;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#include "org/allbinary/input/motion/button/BaseTouchInput.h"

@interface BasicTouchButtonsBuilder : BaseTouchInput {
@public
    LogUtil* logUtil;
}
- (instancetype) init;
- (void) initFields;
- (BasicArrayList*) getList;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BasicTouchButtonsBuilder_staticInit(void);

#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

#endif // ORG_ALLBINARY_INPUT_MOTION_BUTTON_BASICTOUCHBUTTONSBUILDER_H
