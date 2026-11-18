// Generated Code Do Not Modify
#include "org/allbinary/game/paint/BasicGameDemoPaintable.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/paint/NullPaintable.h"
#include "org/allbinary/graphics/paint/Paintable.h"



void BasicGameDemoPaintable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BasicGameDemoPaintable

- (void) initFields {
    
    
    
    self->currentStatePaintable = [NullPaintable getInstance];
}


- (instancetype) init:(Paintable*)mainDemoStatePaintable :(Paintable*)ownershipPaintable :(Paintable*)helpPaintableInterface {
    self = [super init];
    [self initFields];
        self->mainDemoStatePaintable = mainDemoStatePaintable;
        [self setCurrentStatePaintable:[NullPaintable getInstance]];
        self->ownershipPaintable = ownershipPaintable;
        self->helpPaintableInterface = helpPaintableInterface;
    return self;
}


- (void) setState:(int32_t)state {
        if (state == 0) {
            [self setCurrentStatePaintable:[self getMainDemoStatePaintable]];
        } else if (state == 1) {
            [self setCurrentStatePaintable:self->helpPaintableInterface];
        } else {
            [self setCurrentStatePaintable:self->ownershipPaintable];
        }
}


- (void) paint:(Graphics*)graphics {
        [[self getCurrentStatePaintable] paint:graphics];
}


- (Paintable*) getHelpPaintableInterface {
        return self->helpPaintableInterface;
}


- (void) setCurrentStatePaintable:(Paintable*)currentStatePaintable {
        self->currentStatePaintable = currentStatePaintable;
}


- (Paintable*) getCurrentStatePaintable {
        return self->currentStatePaintable;
}


- (Paintable*) getMainDemoStatePaintable {
        return self->mainDemoStatePaintable;
}

@end

