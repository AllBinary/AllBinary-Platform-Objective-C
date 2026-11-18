#ifndef ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_GAMECANVASINPUTPROCESSOR_H
#define ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_GAMECANVASINPUTPROCESSOR_H
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
@class GameCanvasInputProcessor;
@class Canvas;
@class GameKey;
@class GameKeyEventSourceInterface;
@class GameKeyFactory;
@class InputProcessor;
@class PlatformInputMappingFactory;
@class DownGameKeyEventHandler;
@class DownKeyEventHandler;
@class GameKeyEvent;
@class GameKeyEventFactory;
@class UpGameKeyEventHandler;
@class InputToGameKeyMapping;
@class LogUtil;
@class SmallIntegerSingletonFactory;
@class StringMaker;
@class AllBinaryGameCanvas;
#if __has_include("org/allbinary/game/input/GameKey.h")
#include "org/allbinary/game/input/GameKey.h"
#endif
#include "org/allbinary/game/input/InputProcessor.h"
#if __has_include("org/allbinary/game/input/event/DownGameKeyEventHandler.h")
#include "org/allbinary/game/input/event/DownGameKeyEventHandler.h"
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
#if __has_include("org/allbinary/game/input/mapping/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/mapping/InputToGameKeyMapping.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/logic/math/SmallIntegerSingletonFactory.h")
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#endif
#include "java/lang/Integer.h"
#if __has_include("org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h")
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h"
#endif

@interface GameCanvasInputProcessor : InputProcessor {
@public
    LogUtil* logUtil;
    AllBinaryGameCanvas* allBinaryGameCanvas;
    DownGameKeyEventHandler* downGameKeyEventHandler;
    UpGameKeyEventHandler* upGameKeyEventHandler;
    DownKeyEventHandler* downKeyEventHandler;
    SmallIntegerSingletonFactory* smallIntegerSingletonFactory;
    InputToGameKeyMapping* inputToGameKeyMapping;
    GameKey* NONE;
    GameKeyEventFactory* gameKeyEventFactory;
}
- (instancetype) init:(AllBinaryGameCanvas*)allBinaryGameCanvas;
- (void) initFields;
- (void) keyPressedByDevice:(int32_t)keyCode :(int32_t)deviceId;
- (void) keyReleasedByDevice:(Canvas*)canvas :(int32_t)keyCode :(int32_t)deviceId;
- (void) removeGameKeyEvent:(Canvas*)canvas :(int32_t)keyCode :(int32_t)deviceId :(bool)repeated;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameCanvasInputProcessor_staticInit(void);


#endif // ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_GAMECANVASINPUTPROCESSOR_H
