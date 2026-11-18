#ifndef ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_GAMECOMMANDCANVAS_H
#define ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_GAMECOMMANDCANVAS_H
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
@class GameCommandCanvas;
@class CommandListener;
@class Font;
@class Graphics;
@class NullCommandListener;
@class Processor;
@class GameCommandsFactory;
@class Features;
@class InputFeatureFactory;
@class RepaintBehavior;
@class GameInputStrings;
@class GameKey;
@class GameKeyFactory;
@class PlatformInputMappingFactory;
@class DownGameKeyEventHandler;
@class GameKeyEvent;
@class GameKeyEventFactory;
@class GameKeyEventHandler;
@class UpGameKeyEventHandler;
@class InputToGameKeyMapping;
@class PointFactory;
@class Rectangle;
@class BasicColor;
@class CanvasStrings;
@class DisplayInfoSingleton;
@class MyCanvas;
@class DisplayChangeEvent;
@class DisplayChangeEventHandler;
@class DisplayChangeEventListener;
@class ScreenRepaintProcessorFactory;
@class MyFontProcessor;
@class UpdateMyFontInterface;
@class UpdateMyFontProcessor;
@class CommandCurrentSelectionFormFactory;
@class FormPaintable;
@class FormTypeFactory;
@class PaintableForm;
@class ScrollSelectionForm;
@class ScrollSelectionFormNoneFactory;
@class CommandTextItemArrayFactory;
@class ABCustomItem;
@class AllCommandsVisitor;
@class NullPaintable;
@class Paintable;
@class BasicMotionGesturesHandler;
@class ForcedLogUtil;
@class StringMaker;
@class StringUtil;
@class AllBinaryEventObject;
@class EventStrings;
@class CommonSeps;
@class BasicArrayListD;
@class MenuListener;
@class NoMenuInputProcessor;
@class BasicMenuInputProcessor;
@class ImmediateCommandFormInputProcessor;
#if __has_include("org/allbinary/canvas/Processor.h")
#include "org/allbinary/canvas/Processor.h"
#endif
#if __has_include("org/allbinary/game/displayable/RepaintBehavior.h")
#include "org/allbinary/game/displayable/RepaintBehavior.h"
#endif
#if __has_include("org/allbinary/game/input/GameInputStrings.h")
#include "org/allbinary/game/input/GameInputStrings.h"
#endif
#if __has_include("org/allbinary/game/input/GameKeyFactory.h")
#include "org/allbinary/game/input/GameKeyFactory.h"
#endif
#if __has_include("org/allbinary/game/input/event/DownGameKeyEventHandler.h")
#include "org/allbinary/game/input/event/DownGameKeyEventHandler.h"
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
#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif
#include "org/allbinary/graphics/displayable/MyCanvas.h"
#include "org/allbinary/graphics/displayable/event/DisplayChangeEventListener.h"
#if __has_include("org/allbinary/graphics/font/MyFontProcessor.h")
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#endif
#include "org/allbinary/graphics/font/UpdateMyFontInterface.h"
#if __has_include("org/allbinary/graphics/form/PaintableForm.h")
#include "org/allbinary/graphics/form/PaintableForm.h"
#endif
#if __has_include("org/allbinary/graphics/paint/Paintable.h")
#include "org/allbinary/graphics/paint/Paintable.h"
#endif
#include "org/allbinary/game/displayable/canvas/MenuListener.h"
#if __has_include("org/allbinary/game/displayable/canvas/BasicMenuInputProcessor.h")
#include "org/allbinary/game/displayable/canvas/BasicMenuInputProcessor.h"
#endif

@interface GameCommandCanvas : MyCanvas <MenuListener, DisplayChangeEventListener, UpdateMyFontInterface> {
@public
    Processor* repaintProcessor;
    GameInputStrings* gameInputStrings;
    BasicColor* foregroundBasicColor;
    BasicColor* backgroundBasicColor;
    InputToGameKeyMapping* inputToGameKeyMapping;
    GameKeyFactory* gameKeyFactory;
    GameKeyEventFactory* gameKeyEventFactory;
    DownGameKeyEventHandler* downGameKeyEventHandler;
    UpGameKeyEventHandler* upGameKeyEventHandler;
    RepaintBehavior* repaintBehavior;
    MyFontProcessor* updateMyFontProcessor;
    MyFontProcessor* myFontProcessor;
    int32_t foregroundColor;
    int32_t backgroundColor;
    BasicMenuInputProcessor* menuInputProcessor;
    Paintable* menuPaintable;
    PaintableForm* menuForm;
    bool isSingleKeyRepeatableProcessing;
    int32_t fontHeight;
}
- (instancetype) init:(CommandListener*)cmdListener :(const char*)name :(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor;
- (void) initFields;
- (void) updateMeasurement:(Graphics*)graphics;
- (void) onEvent:(AllBinaryEventObject*)eventObject;
- (void) onDisplayChangeEvent:(DisplayChangeEvent*)displayChangeEvent;
- (void) initCommands:(CommandListener*)cmdListener;
- (void) initMenu;
- (ScrollSelectionForm*) createForm;
- (Rectangle*) createRectangle:(int32_t)size;
- (void) open;
- (void) close;
- (void) update;
- (int32_t) getSourceId;
- (void) keyPressed:(int32_t)keyCode;
- (void) keyReleased:(int32_t)keyCode;
- (void) keyRepeated:(int32_t)keyCode;
- (void) keyPressedByDevice:(int32_t)keyCode :(int32_t)deviceId;
- (void) keyReleasedByDevice:(int32_t)keyCode :(int32_t)deviceId;
- (void) keyRepeatedByDevice:(int32_t)keyCode :(int32_t)deviceId;
- (void) addGameKeyEvent:(int32_t)keyCode :(int32_t)deviceId :(bool)repeated;
- (void) removeGameKeyEvent:(int32_t)keyCode :(int32_t)deviceId :(bool)repeated;
- (void) paint:(Graphics*)graphics;
- (void) setMenuInputProcessor:(BasicMenuInputProcessor*)menuInputProcessor;
- (BasicMenuInputProcessor*) getMenuInputProcessor;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameCommandCanvas_staticInit(void);

#if __has_include("org/allbinary/graphics/Rectangle.h")
#include "org/allbinary/graphics/Rectangle.h"
#endif
#if __has_include("org/allbinary/graphics/form/ScrollSelectionForm.h")
#include "org/allbinary/graphics/form/ScrollSelectionForm.h"
#endif

#endif // ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_GAMECOMMANDCANVAS_H
