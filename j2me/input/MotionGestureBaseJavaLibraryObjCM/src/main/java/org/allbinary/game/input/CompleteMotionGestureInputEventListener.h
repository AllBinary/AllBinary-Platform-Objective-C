#ifndef ORG_ALLBINARY_GAME_INPUT_COMPLETEMOTIONGESTUREINPUTEVENTLISTENER_H
#define ORG_ALLBINARY_GAME_INPUT_COMPLETEMOTIONGESTUREINPUTEVENTLISTENER_H
// Generated Code Do Not Modify
// package org.allbinary.game.input

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class CompleteMotionGestureInputEventListener;
@class AllBinaryEventObject;
@class CompleteMotionGestureInputEventListenerInterface;
@class CompleteMotionGestureInputEvent;
#include "org/allbinary/game/input/CompleteMotionGestureInputEventListenerInterface.h"

@interface CompleteMotionGestureInputEventListener : ABObject <CompleteMotionGestureInputEventListenerInterface> {
@public
}
- (instancetype) init;
- (void) onEvent:(AllBinaryEventObject*)eventObject;
- (void) onCompleteMotionGestureInputEvent:(CompleteMotionGestureInputEvent*)completeMotionGestureInputEvent;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CompleteMotionGestureInputEventListener_staticInit(void);


#endif // ORG_ALLBINARY_GAME_INPUT_COMPLETEMOTIONGESTUREINPUTEVENTLISTENER_H
