#ifndef ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_NULLALLBINARYGAMECANVAS_H
#define ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_NULLALLBINARYGAMECANVAS_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
@class NullAllBinaryGameCanvas;
@class Command;
@class CommandListener;
@class AllBinaryGameLayerManager;
@class AllBinaryGameCanvasInterface;
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvasInterface.h"

@interface NullAllBinaryGameCanvas : ABObject <AllBinaryGameCanvasInterface> {
@public
}
- (instancetype) init;
- (AllBinaryGameLayerManager*) getLayerManager;
- (void) addCommand:(Command*)cmd;
- (int32_t) getHeight;
- (int32_t) getWidth;
- (void) removeCommand:(Command*)cmd;
- (void) setCommandListener:(CommandListener*)l;
@end

extern NullAllBinaryGameCanvas* NullAllBinaryGameCanvas_NULL_ALLBINARY_GAME_CANVAS;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NullAllBinaryGameCanvas_staticInit(void);

#if __has_include("org/allbinary/game/layer/AllBinaryGameLayerManager.h")
#include "org/allbinary/game/layer/AllBinaryGameLayerManager.h"
#endif

#endif // ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_NULLALLBINARYGAMECANVAS_H
