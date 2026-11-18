// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/InGameMenuBehavior.h"
#include "org/allbinary/graphics/displayable/event/DisplayChangeEvent.h"
#include "org/allbinary/game/displayable/canvas/BaseMenuBehavior.h"
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h"
#include "org/allbinary/game/displayable/canvas/GameCanvasNonBotPaintable.h"


static InGameMenuBehavior* InGameMenuBehavior_instanceC;

void InGameMenuBehavior_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    InGameMenuBehavior_instanceC = [((InGameMenuBehavior*) [InGameMenuBehavior alloc]) init];
}

@implementation InGameMenuBehavior

- (instancetype) init {
    self = [super init];
    return self;
}


+ (InGameMenuBehavior*) getInstance {
        return (InGameMenuBehavior_staticInit(), InGameMenuBehavior_instanceC);
}


// throws Exception
- (void) onDisplayChangeEvent:(AllBinaryGameCanvas*)allBinaryGameCanvas :(DisplayChangeEvent*)displayChangeEvent {
        [allBinaryGameCanvas updateMenuFromEvent:displayChangeEvent];
}


- (void) initSpecialPaint:(AllBinaryGameCanvas*)allBinaryGameCanvas {
        [allBinaryGameCanvas setNonBotPaintableP:[((GameCanvasNonBotPaintable*) [GameCanvasNonBotPaintable alloc]) init:allBinaryGameCanvas]];
}


// throws Exception
- (void) initMenu:(AllBinaryGameCanvas*)allBinaryGameCanvas {
        [allBinaryGameCanvas initMenu2];
}


// throws Exception
- (void) updateMenu:(AllBinaryGameCanvas*)allBinaryGameCanvas {
        [allBinaryGameCanvas initMenu2];
}


// throws Exception
- (void) popupMenu:(AllBinaryGameCanvas*)allBinaryGameCanvas {
        [allBinaryGameCanvas popupMenu2];
}


- (void) closeMenu:(AllBinaryGameCanvas*)allBinaryGameCanvas {
        [allBinaryGameCanvas closeMenu2];
}

@end

