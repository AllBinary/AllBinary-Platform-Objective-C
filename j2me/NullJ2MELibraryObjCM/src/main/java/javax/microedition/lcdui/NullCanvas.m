// Generated Code Do Not Modify
#include "javax/microedition/lcdui/NullCanvas.h"
#include "javax/microedition/lcdui/Canvas.h"
#include "javax/microedition/lcdui/Command.h"
#include "javax/microedition/lcdui/CommandListener.h"
#include "javax/microedition/lcdui/Graphics.h"


NullCanvas* NullCanvas_NULL_CANVAS;

void NullCanvas_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NullCanvas_NULL_CANVAS = [((NullCanvas*) [NullCanvas alloc]) init];
}

@implementation NullCanvas


- (instancetype) init {
    self = [super init];
    return self;
}


- (void) setFullScreenMode:(bool)mode {
}


- (void) sizeChanged:(int32_t)w :(int32_t)h {
}


- (Stack*) getCommandStack {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (bool) isCommand:(Command*)command {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (void) addCommand:(Command*)command {
}


- (void) removeCommand:(Command*)command {
}


- (void) removeAllCommands {
}


- (void) setCommandListener:(CommandListener*)l {
}


- (CommandListener*) getCustomCommandListener {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (bool) isPaused {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (void) removePauseCommand {
}


- (void) pause {
}


- (void) unPause {
}


// throws Exception
- (void) process {
}


- (void) paint:(Graphics*)graphics {
}


- (void) destroy {
}


- (void) setPaused:(bool)isPaused {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (void) pointerDragged:(int32_t)x :(int32_t)y {
}


- (void) pointerPressed:(int32_t)x :(int32_t)y {
}


- (void) pointerReleased:(int32_t)x :(int32_t)y {
}

@end

