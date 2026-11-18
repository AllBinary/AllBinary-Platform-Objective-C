#ifndef ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_POPUPCOMMANDFORMINPUTPROCESSOR_H
#define ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_POPUPCOMMANDFORMINPUTPROCESSOR_H
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
@class PopupCommandFormInputProcessor;
@class MyCanvas;
@class ScrollSelectionForm;
@class MotionGestureEvent;
@class BasicArrayList;
@class CommandFormInputProcessor;
@class PopupMenuInputProcessor;
#include "org/allbinary/game/displayable/canvas/CommandFormInputProcessor.h"

@interface PopupCommandFormInputProcessor : CommandFormInputProcessor {
@public
}
- (instancetype) init:(BasicArrayList*)gameKeyEventList :(int32_t)playerInputId :(MyCanvas*)gameCanvas :(ScrollSelectionForm*)form :(PopupMenuInputProcessor*)popupMenuInputProcessor;
- (int32_t) processInput:(int32_t)key;
- (void) processMotionInput:(MotionGestureEvent*)motionGestureEvent;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PopupCommandFormInputProcessor_staticInit(void);


#endif // ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_POPUPCOMMANDFORMINPUTPROCESSOR_H
