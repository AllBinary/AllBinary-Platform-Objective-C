#ifndef ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_FORMINPUTPROCESSOR_H
#define ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_FORMINPUTPROCESSOR_H
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
@class FormInputProcessor;
@class Canvas;
@class GameKey;
@class GameKeyEventSourceInterface;
@class GameKeyFactory;
@class Input;
@class InputFactory;
@class InputProcessor;
@class PlatformKeyFactory;
@class DownKeyEventHandler;
@class GameKeyEvent;
@class GameKeyEventFactory;
@class UpGameKeyEventHandler;
@class LogUtil;
@class PreLogUtil;
@class StringMaker;
@class CommonSeps;
@class CommonStrings;
@class AllBinaryGameCanvas;
#if __has_include("org/allbinary/game/input/InputFactory.h")
#include "org/allbinary/game/input/InputFactory.h"
#endif
#include "org/allbinary/game/input/InputProcessor.h"
#if __has_include("org/allbinary/game/input/PlatformKeyFactory.h")
#include "org/allbinary/game/input/PlatformKeyFactory.h"
#endif
#if __has_include("org/allbinary/game/input/event/DownKeyEventHandler.h")
#include "org/allbinary/game/input/event/DownKeyEventHandler.h"
#endif
#if __has_include("org/allbinary/game/input/event/GameKeyEventFactory.h")
#include "org/allbinary/game/input/event/GameKeyEventFactory.h"
#endif
#if __has_include("org/allbinary/game/input/event/UpGameKeyEventHandler.h")
#include "org/allbinary/game/input/event/UpGameKeyEventHandler.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h")
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h"
#endif

@interface FormInputProcessor : InputProcessor {
@public
    LogUtil* logUtil;
    CommonStrings* commonStrings;
    GameKeyEventFactory* gameKeyEventFactory;
    DownKeyEventHandler* downKeyEventHandler;
    UpGameKeyEventHandler* upGameKeyEventHandler;
    InputFactory* inputFactory;
    PlatformKeyFactory* platformKeyFactory;
    AllBinaryGameCanvas* allBinaryGameCanvas;
}
- (instancetype) init:(AllBinaryGameCanvas*)allBinaryGameCanvas;
- (void) initFields;
- (void) keyPressedByDevice:(int32_t)keyCode :(int32_t)deviceId;
- (void) keyReleasedByDevice:(Canvas*)canvas :(int32_t)keyCode :(int32_t)deviceId;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void FormInputProcessor_staticInit(void);


#endif // ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_FORMINPUTPROCESSOR_H
