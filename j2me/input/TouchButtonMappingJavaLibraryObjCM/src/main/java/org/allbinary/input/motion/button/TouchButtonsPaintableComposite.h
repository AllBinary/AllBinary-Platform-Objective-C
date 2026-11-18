#ifndef ORG_ALLBINARY_INPUT_MOTION_BUTTON_TOUCHBUTTONSPAINTABLECOMPOSITE_H
#define ORG_ALLBINARY_INPUT_MOTION_BUTTON_TOUCHBUTTONSPAINTABLECOMPOSITE_H
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
@class TouchButtonsPaintableComposite;
@class CompleteMotionGestureInputEvent;
@class CompleteMotionGestureInputEventHandler;
@class CompleteMotionGestureInputEventListenerInterface;
@class GameKey;
@class InputMappingInterface;
@class GameKeyCompleteMotionGestureInputEvent;
@class BasicColor;
@class ProcessPaintable;
@class MotionGestureInput;
@class TouchMotionGestureFactory;
@class ForcedLogUtil;
@class LogUtil;
@class StringMaker;
@class StringUtil;
@class AllBinaryEventObject;
@class EventStrings;
@class CommonStrings;
@class TimeDelayHelper;
@class TouchButtonsMappingPaintable;
#include "org/allbinary/game/input/CompleteMotionGestureInputEventListenerInterface.h"
#if __has_include("org/allbinary/game/input/mapping/InputMappingInterface.h")
#include "org/allbinary/game/input/mapping/InputMappingInterface.h"
#endif
#include "org/allbinary/graphics/paint/ProcessPaintable.h"
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#if __has_include("org/allbinary/time/TimeDelayHelper.h")
#include "org/allbinary/time/TimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/input/motion/button/TouchButtonsMappingPaintable.h")
#include "org/allbinary/input/motion/button/TouchButtonsMappingPaintable.h"
#endif

@interface TouchButtonsPaintableComposite : ProcessPaintable <CompleteMotionGestureInputEventListenerInterface> {
@public
    LogUtil* logUtil;
    CommonStrings* commonStrings;
    InputMappingInterface* inputMappingInterface;
    TouchButtonsMappingPaintable* touchButtonsPaintable;
    TimeDelayHelper* timeHelper;
    bool released;
    const char* METHOD_NAME;
    const char* RELEASE;
    const char* FAST_REPEAT;
    const char* IGNORE;
}
- (instancetype) init:(InputMappingInterface*)inputMappingInterface :(BasicColor*)basicColor;
- (void) initFields;
- (void) onEvent:(AllBinaryEventObject*)eventObject;
- (void) onCompleteMotionGestureInputEvent:(CompleteMotionGestureInputEvent*)completeMotionGestureInputEvent;
- (void) process;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void TouchButtonsPaintableComposite_staticInit(void);


#endif // ORG_ALLBINARY_INPUT_MOTION_BUTTON_TOUCHBUTTONSPAINTABLECOMPOSITE_H
