// Generated Code Do Not Modify
#include "org/allbinary/game/score/HighScoresCanvasInputProcessor.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/game/input/event/GameKeyEvent.h"
#include "org/allbinary/game/score/displayable/HighScoresCanvas.h"
#include "org/allbinary/util/BasicArrayListD.h"



void HighScoresCanvasInputProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation HighScoresCanvasInputProcessor

- (void) initFields {
    
}


- (instancetype) init:(HighScoresCanvas*)highScoresCanvas {
        self = [super init:((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]) :((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]) :-1];
        [self initFields];
        self->highScoresCanvas = highScoresCanvas;
    return self;
}


- (void) open {
}


- (void) close {
}


// synchronized
- (void) onPressGameKeyEvent:(GameKeyEvent*)gameKeyEvent {
        [super onPressGameKeyEvent:gameKeyEvent];
        [self update];
}


// synchronized
- (void) onDownGameKeyEvent:(GameKeyEvent*)gameKeyEvent {
        [super onDownGameKeyEvent:gameKeyEvent];
        [self update];
}


// synchronized
- (void) onUpGameKeyEvent:(GameKeyEvent*)gameKeyEvent {
        [super onUpGameKeyEvent:gameKeyEvent];
        [self update];
}


- (void) paint:(Graphics*)graphics {
}


- (HighScoresCanvas*) getHighScoresCanvas {
        return self->highScoresCanvas;
}

@end

