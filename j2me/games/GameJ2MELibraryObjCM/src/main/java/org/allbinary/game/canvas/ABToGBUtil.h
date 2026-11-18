#ifndef ORG_ALLBINARY_GAME_CANVAS_ABTOGBUTIL_H
#define ORG_ALLBINARY_GAME_CANVAS_ABTOGBUTIL_H
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
// package org.allbinary.game.canvas

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class ABToGBUtil;
@class Canvas;
@class NullCanvas;
@class AllBinaryGameLayerManager;
#if __has_include("javax/microedition/lcdui/Canvas.h")
#include "javax/microedition/lcdui/Canvas.h"
#endif
#if __has_include("org/allbinary/game/layer/AllBinaryGameLayerManager.h")
#include "org/allbinary/game/layer/AllBinaryGameLayerManager.h"
#endif

@interface ABToGBUtil : ABObject {
@public
    Canvas* abCanvas;
    AllBinaryGameLayerManager* allBinaryGameLayerManager;
}
- (instancetype) init;
- (void) initFields;
+ (ABToGBUtil*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ABToGBUtil_staticInit(void);


#endif // ORG_ALLBINARY_GAME_CANVAS_ABTOGBUTIL_H
