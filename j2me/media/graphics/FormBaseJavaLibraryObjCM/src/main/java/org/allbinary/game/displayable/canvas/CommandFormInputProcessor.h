#ifndef ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_COMMANDFORMINPUTPROCESSOR_H
#define ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_COMMANDFORMINPUTPROCESSOR_H
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
// package org.allbinary.game.displayable.canvas

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class CommandFormInputProcessor;
@class Canvas;
@class Command;
@class GameCommandsFactory;
@class Features;
@class InputFeatureFactory;
@class GameKeyEvent;
@class GameKeyEventFactory;
@class SWTUtil;
@class GPoint;
@class MyCanvas;
@class CommandCurrentSelectionForm;
@class ScrollSelectionForm;
@class OpenGLFeatureFactory;
@class MotionGestureInput;
@class TouchMotionGestureFactory;
@class MotionGestureEvent;
@class StringMaker;
@class PrimaryPlayerQueueFactory;
@class SelectSound;
@class PrimaryThreadPool;
@class TimeDelayHelper;
@class BasicArrayList;
@class BasicMenuInputProcessor;
@class CommandRunnable;
#if __has_include("org/allbinary/graphics/form/ScrollSelectionForm.h")
#include "org/allbinary/graphics/form/ScrollSelectionForm.h"
#endif
#if __has_include("org/allbinary/time/TimeDelayHelper.h")
#include "org/allbinary/time/TimeDelayHelper.h"
#endif
#include "org/allbinary/game/displayable/canvas/BasicMenuInputProcessor.h"

//In general allow scrolling of the menu and selection the center item
@interface CommandFormInputProcessor : BasicMenuInputProcessor {
@public
    int32_t MOTION_GESTURE_SOURCE_ID;
    int32_t CLICK_DELAY;
    TimeDelayHelper* clickTimeHelper;
    int32_t DOUBLE_CLICK_DELAY;
    TimeDelayHelper* doubleClickTimeHelper;
    bool isSingleKeyProcessing;
    ScrollSelectionForm* form;
    bool hasPressed;
    const char* PROCESS_COMMAND;
    const char* NAME_LABEL;
}
- (instancetype) init:(BasicArrayList*)gameKeyEventList :(int32_t)playerInputId :(MyCanvas*)gameCanvas :(ScrollSelectionForm*)form;
- (void) initFields;
- (int32_t) processInput:(int32_t)key;
- (int32_t) processCommand;
- (int32_t) processInputList;
- (int32_t) processMotionInputs;
- (void) processMotionInput:(MotionGestureEvent*)motionGestureEvent;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CommandFormInputProcessor_staticInit(void);


#endif // ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_COMMANDFORMINPUTPROCESSOR_H
