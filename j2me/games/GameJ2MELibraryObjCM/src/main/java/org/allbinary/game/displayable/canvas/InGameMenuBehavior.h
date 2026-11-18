#ifndef ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_INGAMEMENUBEHAVIOR_H
#define ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_INGAMEMENUBEHAVIOR_H
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
// package org.allbinary.game.displayable.canvas

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class InGameMenuBehavior;
@class DisplayChangeEvent;
@class BaseMenuBehavior;
@class AllBinaryGameCanvas;
@class GameCanvasNonBotPaintable;
#include "org/allbinary/game/displayable/canvas/BaseMenuBehavior.h"

@interface InGameMenuBehavior : BaseMenuBehavior {
@public
}
- (instancetype) init;
+ (InGameMenuBehavior*) getInstance;
- (void) onDisplayChangeEvent:(AllBinaryGameCanvas*)allBinaryGameCanvas :(DisplayChangeEvent*)displayChangeEvent;
- (void) initSpecialPaint:(AllBinaryGameCanvas*)allBinaryGameCanvas;
- (void) initMenu:(AllBinaryGameCanvas*)allBinaryGameCanvas;
- (void) updateMenu:(AllBinaryGameCanvas*)allBinaryGameCanvas;
- (void) popupMenu:(AllBinaryGameCanvas*)allBinaryGameCanvas;
- (void) closeMenu:(AllBinaryGameCanvas*)allBinaryGameCanvas;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void InGameMenuBehavior_staticInit(void);


#endif // ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_INGAMEMENUBEHAVIOR_H
