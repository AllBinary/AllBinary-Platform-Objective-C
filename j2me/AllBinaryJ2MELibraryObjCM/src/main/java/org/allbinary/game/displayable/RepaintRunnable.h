#ifndef ORG_ALLBINARY_GAME_DISPLAYABLE_REPAINTRUNNABLE_H
#define ORG_ALLBINARY_GAME_DISPLAYABLE_REPAINTRUNNABLE_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.game.displayable

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class RepaintRunnable;
@class Canvas;
@class DisplayInfoSingleton;
@class LogUtil;
@class CommonStrings;
@class ARunnable;
#if __has_include("javax/microedition/lcdui/Canvas.h")
#include "javax/microedition/lcdui/Canvas.h"
#endif
#include "org/allbinary/thread/ARunnable.h"

@interface RepaintRunnable : ARunnable {
@public
    Canvas* canvas;
}
- (instancetype) init:(Canvas*)canvas;
- (void) initFields;
- (void) run;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void RepaintRunnable_staticInit(void);


#endif // ORG_ALLBINARY_GAME_DISPLAYABLE_REPAINTRUNNABLE_H
