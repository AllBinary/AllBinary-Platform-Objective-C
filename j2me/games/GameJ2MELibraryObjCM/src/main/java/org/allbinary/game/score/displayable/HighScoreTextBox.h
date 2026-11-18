#ifndef ORG_ALLBINARY_GAME_SCORE_DISPLAYABLE_HIGHSCORETEXTBOX_H
#define ORG_ALLBINARY_GAME_SCORE_DISPLAYABLE_HIGHSCORETEXTBOX_H
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
// package org.allbinary.game.score.displayable

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class HighScoreTextBox;
@class CommandListener;
@class Font;
@class Graphics;
@class TextField;
@class PostGameCommandFactory;
@class GameInfo;
@class HighScore;
@class HighScoresHelperBaseInterface;
@class HighScoresFactoryInterface;
@class BasicColor;
@class BasicColorFactory;
@class CustomTextBox;
@class NullPaintable;
@class Paintable;
@class SimpleTextPaintable;
@class VirtualKeyboardEventHandler;
@class GenericOperatingSystem;
@class OperatingSystemFactory;
@class AbeClientInformationInterface;
@class InApplicationPurchaseFactory;
@class HighScoreUtil;
#include "org/allbinary/graphics/form/item/CustomTextBox.h"
#if __has_include("org/allbinary/graphics/paint/Paintable.h")
#include "org/allbinary/graphics/paint/Paintable.h"
#endif
#if __has_include("org/allbinary/input/event/VirtualKeyboardEventHandler.h")
#include "org/allbinary/input/event/VirtualKeyboardEventHandler.h"
#endif
#if __has_include("org/allbinary/game/score/displayable/HighScoreUtil.h")
#include "org/allbinary/game/score/displayable/HighScoreUtil.h"
#endif

@interface HighScoreTextBox : CustomTextBox {
@public
    VirtualKeyboardEventHandler* virtualKeyboardEventHandler;
    HighScoreUtil* highScoreUtil;
    Paintable* pleaseWait;
    Paintable* paintable;
    bool submitted;
}
- (instancetype) init:(HighScoresFactoryInterface*)highScoresFactoryInterface :(HighScoresHelperBaseInterface*)highScoresHelper :(AbeClientInformationInterface*)abeClientInformation :(GameInfo*)gameInfo :(CommandListener*)cmdListener :(const char*)name :(HighScore*)highScore :(BasicColor*)backgrounBasicColor :(BasicColor*)foregroundBasicColor;
- (void) initFields;
- (void) initCommands:(CommandListener*)cmdListener;
- (void) open;
- (void) close;
- (void) update;
- (void) paint:(Graphics*)graphics;
- (void) saveHighScore;
- (void) submit;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void HighScoreTextBox_staticInit(void);


#endif // ORG_ALLBINARY_GAME_SCORE_DISPLAYABLE_HIGHSCORETEXTBOX_H
