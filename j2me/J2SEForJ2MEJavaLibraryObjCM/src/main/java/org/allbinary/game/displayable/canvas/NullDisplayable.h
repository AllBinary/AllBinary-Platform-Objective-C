#ifndef ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_NULLDISPLAYABLE_H
#define ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_NULLDISPLAYABLE_H
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
@class NullDisplayable;
@class Canvas;
@class Graphics;
@class BaseGameStatistics;
@class GameStatisticsFactory;
#include "javax/microedition/lcdui/Canvas.h"
#if __has_include("org/allbinary/canvas/BaseGameStatistics.h")
#include "org/allbinary/canvas/BaseGameStatistics.h"
#endif

//J2SEForJ2ME
@interface NullDisplayable : Canvas {
@public
    BaseGameStatistics* baseGameStatistics;
}
- (instancetype) init;
- (void) initFields;
+ (NullDisplayable*) getInstance;
- (void) paint:(Graphics*)graphics;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NullDisplayable_staticInit(void);


#endif // ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_NULLDISPLAYABLE_H
