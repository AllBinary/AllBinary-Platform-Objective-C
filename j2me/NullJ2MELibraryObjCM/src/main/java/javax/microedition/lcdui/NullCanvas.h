#ifndef JAVAX_MICROEDITION_LCDUI_NULLCANVAS_H
#define JAVAX_MICROEDITION_LCDUI_NULLCANVAS_H
// Generated Code Do Not Modify
// package javax.microedition.lcdui

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class NullCanvas;
@class Canvas;
@class Command;
@class CommandListener;
@class Graphics;
#include "java/util/Stack.h"
#include "javax/microedition/lcdui/Canvas.h"

@interface NullCanvas : Canvas {
@public
}
- (instancetype) init;
- (void) setFullScreenMode:(bool)mode;
- (void) sizeChanged:(int32_t)w :(int32_t)h;
- (Stack*) getCommandStack;
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
- (void) destroy;
- (void) setPaused:(bool)isPaused;
- (void) pointerDragged:(int32_t)x :(int32_t)y;
- (void) pointerPressed:(int32_t)x :(int32_t)y;
- (void) pointerReleased:(int32_t)x :(int32_t)y;
@end

extern NullCanvas* NullCanvas_NULL_CANVAS;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NullCanvas_staticInit(void);


#endif // JAVAX_MICROEDITION_LCDUI_NULLCANVAS_H
