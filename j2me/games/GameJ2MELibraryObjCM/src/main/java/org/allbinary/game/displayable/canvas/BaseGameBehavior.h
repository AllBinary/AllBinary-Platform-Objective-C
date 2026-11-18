#ifndef ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_BASEGAMEBEHAVIOR_H
#define ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_BASEGAMEBEHAVIOR_H
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
@class BaseGameBehavior;
@class GameAdStateFactory;
@class GameAdState;
@class Features;
@class CurrentDisplayableFactory;
@class OpenGLFeatureFactory;
@class AbeClientInformationInterface;
@class DemoGameBehavior;
@class AllBinaryGameCanvas;
#include "org/allbinary/game/displayable/canvas/DemoGameBehavior.h"

@interface BaseGameBehavior : DemoGameBehavior {
@public
}
- (instancetype) init;
+ (DemoGameBehavior*) getInstance;
- (void) init_;
- (void) pause:(AllBinaryGameCanvas*)allBinaryGameCanvas;
- (void) unPause:(AllBinaryGameCanvas*)allBinaryGameCanvas;
- (void) updateTouch:(AllBinaryGameCanvas*)allBinaryGameCanvas;
- (void) updateScreenButtonPaintable:(AllBinaryGameCanvas*)allBinaryGameCanvas;
- (void) setGameState:(AllBinaryGameCanvas*)allBinaryGameCanvas;
- (void) removeAllGameKeyInputListeners:(AllBinaryGameCanvas*)allBinaryGameCanvas;
- (void) updateEndGameProcessor:(AllBinaryGameCanvas*)allBinaryGameCanvas;
- (void) buildGame:(AllBinaryGameCanvas*)allBinaryGameCanvas;
- (void) run:(AllBinaryGameCanvas*)allBinaryGameCanvas;
- (void) setHighScore:(AbeClientInformationInterface*)abeClientInformation :(AllBinaryGameCanvas*)allBinaryGameCanvas :(const char*)name :(int64_t)score :(bool)autoSubmit :(bool)isLast;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BaseGameBehavior_staticInit(void);


#endif // ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_BASEGAMEBEHAVIOR_H
