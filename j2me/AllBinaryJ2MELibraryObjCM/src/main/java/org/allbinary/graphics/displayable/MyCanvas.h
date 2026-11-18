#ifndef ORG_ALLBINARY_GRAPHICS_DISPLAYABLE_MYCANVAS_H
#define ORG_ALLBINARY_GRAPHICS_DISPLAYABLE_MYCANVAS_H
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
// package org.allbinary.graphics.displayable

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class MyCanvas;
@class Canvas;
@class Command;
@class CommandListener;
@class Graphics;
@class NullCommandListener;
@class MyCommandInterface;
@class MyCommandsFactory;
@class TouchJ2ME;
@class LogUtil;
@class StringUtil;
@class Sound;
@class CommonStrings;
@class BasicArrayList;
@class StdUtil;
@class ABStack;
@class DisplayableInterface;
@class CanvasStrings;
@class DisplayInfoSingleton;
#include "javax/microedition/lcdui/Canvas.h"
#if __has_include("javax/microedition/lcdui/CommandListener.h")
#include "javax/microedition/lcdui/CommandListener.h"
#endif
#include "org/allbinary/graphics/displayable/command/MyCommandInterface.h"
#if __has_include("org/allbinary/input/TouchJ2ME.h")
#include "org/allbinary/input/TouchJ2ME.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
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
#if __has_include("org/allbinary/util/ABStack.h")
#include "org/allbinary/util/ABStack.h"
#endif
#include "org/allbinary/graphics/displayable/DisplayableInterface.h"
#if __has_include("org/allbinary/graphics/displayable/CanvasStrings.h")
#include "org/allbinary/graphics/displayable/CanvasStrings.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/DisplayInfoSingleton.h")
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#endif

@interface MyCanvas : Canvas <DisplayableInterface, MyCommandInterface> {
@public
    LogUtil* logUtil;
    CommonStrings* commonStrings;
    CanvasStrings* canvasStrings;
    StringUtil* stringUtil;
    DisplayInfoSingleton* displayInfo;
    const char* name;
    BasicArrayList* childNameList;
    ABStack* commandStack;
    CommandListener* commandListener;
    bool paused;
    TouchJ2ME* touchME;
}
- (instancetype) init:(const char*)name :(BasicArrayList*)childNameList;
- (void) initFields;
- (int32_t) getWidth;
- (int32_t) getHeight;
- (void) setFullScreenMode:(bool)mode;
- (void) sizeChanged:(int32_t)w :(int32_t)h;
- (ABStack*) getCommandStack;
- (bool) isCommand:(Command*)command;
- (void) addCommand:(Command*)command;
- (void) removeCommand:(Command*)command;
- (void) removeAllCommands;
- (void) setCommandListener:(CommandListener*)l;
- (CommandListener*) getCustomCommandListener;
- (bool) isPaused;
- (void) removePauseCommand;
- (void) pause;
- (void) unPause;
- (void) process;
- (void) paint:(Graphics*)graphics;
- (void) draw:(Graphics*)graphics;
- (bool) hasChild:(MyCanvas*)displayable;
- (void) destroy;
- (void) setPaused:(bool)isPaused;
- (void) keyPressedByDevice:(int32_t)keyCode :(int32_t)deviceId;
- (void) keyRepeatedByDevice:(int32_t)keyCode :(int32_t)deviceId;
- (void) keyReleasedByDevice:(int32_t)keyCode :(int32_t)deviceId;
- (void) pointerDragged:(int32_t)x :(int32_t)y;
- (void) pointerPressed:(int32_t)x :(int32_t)y;
- (void) pointerReleased:(int32_t)x :(int32_t)y;
- (void) nextSong:(Sound*)nextSongSound :(int32_t)leftVolume :(int32_t)rightVolume;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void MyCanvas_staticInit(void);

#if __has_include("javax/microedition/lcdui/CommandListener.h")
#include "javax/microedition/lcdui/CommandListener.h"
#endif
#if __has_include("org/allbinary/util/ABStack.h")
#include "org/allbinary/util/ABStack.h"
#endif

#endif // ORG_ALLBINARY_GRAPHICS_DISPLAYABLE_MYCANVAS_H
