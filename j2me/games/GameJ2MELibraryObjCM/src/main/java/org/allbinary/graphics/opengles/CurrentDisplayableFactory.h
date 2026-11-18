#ifndef ORG_ALLBINARY_GRAPHICS_OPENGLES_CURRENTDISPLAYABLEFACTORY_H
#define ORG_ALLBINARY_GRAPHICS_OPENGLES_CURRENTDISPLAYABLEFACTORY_H
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
// package org.allbinary.graphics.opengles

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class CurrentDisplayableFactory;
@class Displayable;
@class J2MEUtil;
@class Features;
@class AllBinaryGameCanvas;
@class DemoCanvas;
@class GameInputMappingCanvas;
@class GameInputMappingInstructionsCanvas;
@class GameRunnable;
@class NullDisplayable;
@class NullWaitGameRunnable;
@class SWTUtil;
@class HighScoresCanvas;
@class GraphicsStrings;
@class CanvasStrings;
@class MyCanvas;
@class PreLogUtil;
@class StringMaker;
@class StringUtil;
@class CommonSeps;
@class CommonStrings;
@class NullRunnable;
@class BasicArrayList;
@class BasicArrayListD;
@class OpenGLFeatureFactory;
#if __has_include("javax/microedition/lcdui/Displayable.h")
#include "javax/microedition/lcdui/Displayable.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/GameRunnable.h")
#include "org/allbinary/game/displayable/canvas/GameRunnable.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/CanvasStrings.h")
#include "org/allbinary/graphics/displayable/CanvasStrings.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

@interface CurrentDisplayableFactory : ABObject {
@public
    CommonStrings* commonStrings;
    CanvasStrings* canvasStrings;
    StringUtil* stringUtil;
    const char* SET_DISPLAYABLE;
    const char* SET_RUNNABLE;
    const char* CLEAR_RUNNABLE;
    const char* SET_USED_RUNNABLE;
    const char* RUNNABLE;
    const char* RUNNABLE_WAS_ALREADY_IN_USE;
    BasicArrayList* DEFAULT_CHILD_NAME_LIST;
    Displayable* displayable;
    Displayable* openGlReadydisplayable;
    GameRunnable* runnable;
    GameRunnable* usedRunnable;
}
- (instancetype) init;
- (void) initFields;
+ (CurrentDisplayableFactory*) getInstance;
- (void) setMyCanvas:(MyCanvas*)displayable;
- (void) setDisplayable:(Displayable*)displayable;
- (void) setOpenGlReadydisplayable:(Displayable*)openGlReadydisplayable;
- (Displayable*) getOpenGlReadydisplayable;
- (void) setRunnable:(GameRunnable*)runnable;
- (void) clearRunnable;
- (void) update;
- (Displayable*) getDisplayable;
- (GameRunnable*) getUsedRunnable;
- (void) setUsedRunnable:(GameRunnable*)usedRunnable;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CurrentDisplayableFactory_staticInit(void);

#if __has_include("javax/microedition/lcdui/Displayable.h")
#include "javax/microedition/lcdui/Displayable.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/GameRunnable.h")
#include "org/allbinary/game/displayable/canvas/GameRunnable.h"
#endif

#endif // ORG_ALLBINARY_GRAPHICS_OPENGLES_CURRENTDISPLAYABLEFACTORY_H
