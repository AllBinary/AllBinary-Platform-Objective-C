// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/BaseMenuBehavior.h"
#include "org/allbinary/graphics/displayable/event/DisplayChangeEvent.h"
#include "org/allbinary/graphics/paint/NullPaintable.h"
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h"


static BaseMenuBehavior* BaseMenuBehavior_instance;

void BaseMenuBehavior_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    BaseMenuBehavior_instance = ((BaseMenuBehavior*) [((BaseMenuBehavior*) [BaseMenuBehavior alloc]) init]);
}

@implementation BaseMenuBehavior

- (instancetype) init {
    self = [super init];
    return self;
}


+ (BaseMenuBehavior*) getInstance {
        return (BaseMenuBehavior_staticInit(), BaseMenuBehavior_instance);
}


// throws Exception
- (void) onDisplayChangeEvent:(AllBinaryGameCanvas*)allBinaryGameCanvas :(DisplayChangeEvent*)displayChangeEvent {
}


- (void) initSpecialPaint:(AllBinaryGameCanvas*)allBinaryGameCanvas {
        [allBinaryGameCanvas setNonBotPaintableP:[NullPaintable getInstance]];
}


// throws Exception
- (void) initMenu:(AllBinaryGameCanvas*)allBinaryGameCanvas {
}


// throws Exception
- (void) updateMenu:(AllBinaryGameCanvas*)allBinaryGameCanvas {
}


// throws Exception
- (void) popupMenu:(AllBinaryGameCanvas*)allBinaryGameCanvas {
}


- (void) closeMenu:(AllBinaryGameCanvas*)allBinaryGameCanvas {
}

@end

