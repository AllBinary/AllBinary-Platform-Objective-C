#ifndef ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_GAMEINPUTMAPPINGCANVAS_H
#define ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_GAMEINPUTMAPPINGCANVAS_H
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
@class GameInputMappingCanvas;
@class Command;
@class CommandListener;
@class Graphics;
@class GameCommandsFactory;
@class GameKey;
@class GameKeyFactory;
@class Input;
@class InputFactory;
@class PlatformInputMappingFactory;
@class InputMappingInterface;
@class PersistentInputMapping;
@class AllBinaryGameLayerManager;
@class ColorFillBasePaintable;
@class ColorFillPaintableFactory;
@class HelpPaintable;
@class InputMappingHelpPaintable;
@class ProcessPaintable;
@class StringMaker;
@class StringUtil;
@class AbeClientInformationInterface;
@class BasicArrayList;
@class GameCommandCanvas;
@class GameInputMappingInstructionsCanvas;
#if __has_include("javax/microedition/lcdui/Command.h")
#include "javax/microedition/lcdui/Command.h"
#endif
#if __has_include("org/allbinary/game/input/GameKey.h")
#include "org/allbinary/game/input/GameKey.h"
#endif
#if __has_include("org/allbinary/game/input/Input.h")
#include "org/allbinary/game/input/Input.h"
#endif
#if __has_include("org/allbinary/game/input/InputFactory.h")
#include "org/allbinary/game/input/InputFactory.h"
#endif
#include "org/allbinary/game/input/mapping/InputMappingInterface.h"
#if __has_include("org/allbinary/game/input/mapping/PersistentInputMapping.h")
#include "org/allbinary/game/input/mapping/PersistentInputMapping.h"
#endif
#if __has_include("org/allbinary/game/paint/ColorFillBasePaintable.h")
#include "org/allbinary/game/paint/ColorFillBasePaintable.h"
#endif
#if __has_include("org/allbinary/game/paint/help/InputMappingHelpPaintable.h")
#include "org/allbinary/game/paint/help/InputMappingHelpPaintable.h"
#endif
#if __has_include("org/allbinary/graphics/paint/ProcessPaintable.h")
#include "org/allbinary/graphics/paint/ProcessPaintable.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.h")
#include "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.h"
#endif
#include "java/lang/Integer.h"
#include "org/allbinary/game/displayable/canvas/GameCommandCanvas.h"

@interface GameInputMappingCanvas : GameCommandCanvas <InputMappingInterface> {
@public
    ProcessPaintable* paintable;
    InputMappingHelpPaintable* helpPaintable;
    ColorFillBasePaintable* colorFillPaintable;
    PersistentInputMapping* inputMapping;
    GameKey* NONE;
    AbeClientInformationInterface* abeClientInformation;
    GameKey* selectedGameKey;
    Input* selectedInput;
    InputFactory* inputFactory;
}
- (instancetype) init:(AbeClientInformationInterface*)abeClientInformation :(CommandListener*)commandListener :(AllBinaryGameLayerManager*)allBinaryGameLayerManager :(HelpPaintable*)helpPaintable;
- (void) initFields;
- (void) close;
- (void) initCommands:(CommandListener*)cmdListener;
- (void) keyPressed:(int32_t)keyCode;
- (void) keyReleased:(int32_t)keyCode;
- (void) keyRepeated:(int32_t)keyCode;
- (void) keyPressedByDevice:(int32_t)keyCode :(int32_t)deviceId;
- (void) addGameKey:(int32_t)keyCode :(bool)repeated;
- (void) processInputMapping:(GameKey*)gameKey :(Input*)input;
- (void) setSelectedAction:(GameKey*)gameKey;
- (void) gameActionCrud:(GameKey*)gameKey :(Input*)input;
- (void) addNewMapping:(GameKey*)gameKey :(Input*)input;
- (void) deleteCurrentMapping;
- (void) setDefault;
- (void) update;
- (void) paint:(Graphics*)graphics;
@end

extern const char* GameInputMappingCanvas_NAME;
extern Command* GameInputMappingCanvas_DISPLAY;
extern Command* GameInputMappingCanvas_DEFAULT;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameInputMappingCanvas_staticInit(void);


#endif // ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_GAMEINPUTMAPPINGCANVAS_H
