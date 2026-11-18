#ifndef ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_GAMEINPUTMAPPINGINSTRUCTIONSCANVAS_H
#define ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_GAMEINPUTMAPPINGINSTRUCTIONSCANVAS_H
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
@class GameInputMappingInstructionsCanvas;
@class Command;
@class CommandListener;
@class Graphics;
@class AllBinaryGameLayerManager;
@class ColorFillBasePaintable;
@class ColorFillPaintableFactory;
@class Anchor;
@class DrawStringUtil;
@class StringUtil;
@class GameCommandCanvas;
#if __has_include("javax/microedition/lcdui/Command.h")
#include "javax/microedition/lcdui/Command.h"
#endif
#if __has_include("org/allbinary/game/paint/ColorFillBasePaintable.h")
#include "org/allbinary/game/paint/ColorFillBasePaintable.h"
#endif
#if __has_include("org/allbinary/graphics/draw/DrawStringUtil.h")
#include "org/allbinary/graphics/draw/DrawStringUtil.h"
#endif
#include "org/allbinary/game/displayable/canvas/GameCommandCanvas.h"

@interface GameInputMappingInstructionsCanvas : GameCommandCanvas {
@public
    DrawStringUtil* drawStringUtil;
    const char* TITLE;
    const char** instructions;
    ColorFillBasePaintable* colorFillPaintable;
    int32_t anchor;
}
- (instancetype) init:(CommandListener*)commandListener :(AllBinaryGameLayerManager*)allBinaryGameLayerManager;
- (void) initFields;
- (void) initCommands:(CommandListener*)cmdListener;
- (void) paint:(Graphics*)graphics;
@end

extern Command* GameInputMappingInstructionsCanvas_DISPLAY;
extern Command* GameInputMappingInstructionsCanvas_CLOSE;
extern const char* GameInputMappingInstructionsCanvas_NAME;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameInputMappingInstructionsCanvas_staticInit(void);


#endif // ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_GAMEINPUTMAPPINGINSTRUCTIONSCANVAS_H
