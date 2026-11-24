// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/NullAllBinaryGameCanvas.h"
#include "javax/microedition/lcdui/Command.h"
#include "javax/microedition/lcdui/CommandListener.h"
#include "org/allbinary/game/layer/AllBinaryGameLayerManager.h"
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvasInterface.h"


NullAllBinaryGameCanvas* NullAllBinaryGameCanvas_NULL_ALLBINARY_GAME_CANVAS;

void NullAllBinaryGameCanvas_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NullAllBinaryGameCanvas_NULL_ALLBINARY_GAME_CANVAS = ((NullAllBinaryGameCanvas*) [((NullAllBinaryGameCanvas*) [NullAllBinaryGameCanvas alloc]) init]);
}

@implementation NullAllBinaryGameCanvas

- (instancetype) init {
    self = [super init];
    return self;
}


- (AllBinaryGameLayerManager*) getLayerManager {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (void) addCommand:(Command*)cmd {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (int32_t) getHeight {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (int32_t) getWidth {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (void) removeCommand:(Command*)cmd {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (void) setCommandListener:(CommandListener*)l {
        java_throw(java_exception_new("RuntimeException", ""));
}

@end

