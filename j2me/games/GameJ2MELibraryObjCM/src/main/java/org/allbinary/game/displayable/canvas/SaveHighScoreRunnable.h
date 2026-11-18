#ifndef ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_SAVEHIGHSCORERUNNABLE_H
#define ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_SAVEHIGHSCORERUNNABLE_H
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
@class SaveHighScoreRunnable;
@class HighScoreTextBox;
@class ProgressCanvas;
@class ProgressCanvasFactory;
@class LogUtil;
@class CommonStrings;
#if __has_include("org/allbinary/game/score/displayable/HighScoreTextBox.h")
#include "org/allbinary/game/score/displayable/HighScoreTextBox.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.h")
#include "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.h"
#endif
#include "java/lang/Runnable.h"

@interface SaveHighScoreRunnable : ABObject <Runnable> {
@public
    ProgressCanvas* progressCanvas;
    bool isLast;
    HighScoreTextBox* textBox;
}
- (instancetype) init:(bool)isLast :(HighScoreTextBox*)textBox;
- (void) initFields;
- (void) run;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void SaveHighScoreRunnable_staticInit(void);


#endif // ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_SAVEHIGHSCORERUNNABLE_H
