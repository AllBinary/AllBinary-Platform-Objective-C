// Generated Code Do Not Modify
#include "org/allbinary/game/paint/MainGameDemoStatePaintable.h"
#include "javax/microedition/lcdui/Graphics.h"



void MainGameDemoStatePaintable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation MainGameDemoStatePaintable

- (void) initFields {
    
    
}


- (instancetype) init:(Paintable*)ownershipPaintableInterface :(Paintable*)menuPaintableInterface {
    self = [super init];
    [self initFields];
        self->ownershipPaintableInterface = ownershipPaintableInterface;
        self->menuPaintableInterface = menuPaintableInterface;
    return self;
}


- (void) paint:(Graphics*)graphics {
        [self->menuPaintableInterface paint:graphics];
        [self->ownershipPaintableInterface paint:graphics];
}


- (Paintable*) getOwnershipPaintableInterface {
        return self->ownershipPaintableInterface;
}


- (Paintable*) getMenuPaintableInterface {
        return self->menuPaintableInterface;
}

@end

