#ifndef ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_BUFFEREDGAMECANVASPAINTHELPER_H
#define ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_BUFFEREDGAMECANVASPAINTHELPER_H
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
@class BufferedGameCanvasPaintHelper;
@class Canvas;
@class Graphics;
@class Image;
@class NullCanvas;
@class NullImage;
@class Anchor;
@class MyCanvas;
@class ProcessPaintable;
@class CircularIndexUtil;
@class AllBinaryGameCanvas;
#if __has_include("javax/microedition/lcdui/Canvas.h")
#include "javax/microedition/lcdui/Canvas.h"
#endif
#if __has_include("javax/microedition/lcdui/Image.h")
#include "javax/microedition/lcdui/Image.h"
#endif
#include "org/allbinary/graphics/paint/ProcessPaintable.h"
#if __has_include("org/allbinary/util/CircularIndexUtil.h")
#include "org/allbinary/util/CircularIndexUtil.h"
#endif

@interface BufferedGameCanvasPaintHelper : ProcessPaintable {
@public
    Canvas* gameCanvas;
    Image** offScreenImage;
    Image* previousImage;
    CircularIndexUtil* circularIndexUtil;
    CircularIndexUtil* drawCircularIndexUtil;
    int32_t anchor;
}
- (instancetype) init:(AllBinaryGameCanvas*)gameCanvas;
- (void) initFields;
- (void) process;
- (void) paint:(Graphics*)graphics;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BufferedGameCanvasPaintHelper_staticInit(void);


#endif // ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_BUFFEREDGAMECANVASPAINTHELPER_H
