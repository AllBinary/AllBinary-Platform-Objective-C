#ifndef ORG_ALLBINARY_GAME_PAINT_GAMESCROLLMENUPAINTABLE_H
#define ORG_ALLBINARY_GAME_PAINT_GAMESCROLLMENUPAINTABLE_H
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
// package org.allbinary.game.paint

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class GameScrollMenuPaintable;
@class BasicColor;
@class ColorChangeEventHandler;
@class ColorChangeListener;
@class FormPaintable;
@class ScrollSelectionForm;
@class ABStringComponent;
@class ABTextItem;
@class Paintable;
@class AllBinaryEventObject;
@class BasicGameDemoPaintable;
@class MainGameDemoStatePaintable;
#include "org/allbinary/graphics/color/ColorChangeListener.h"
#include "org/allbinary/game/paint/BasicGameDemoPaintable.h"

@interface GameScrollMenuPaintable : BasicGameDemoPaintable <ColorChangeListener> {
@public
}
- (instancetype) init:(Paintable*)mainDemoStatePaintable :(Paintable*)ownershipPaintable :(Paintable*)helpPaintableInterface :(BasicColor*)basicColor;
- (void) setState:(int32_t)state;
- (void) onEvent:(AllBinaryEventObject*)eventObject;
- (void) setColor:(BasicColor*)basicColor;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void GameScrollMenuPaintable_staticInit(void);


#endif // ORG_ALLBINARY_GAME_PAINT_GAMESCROLLMENUPAINTABLE_H
