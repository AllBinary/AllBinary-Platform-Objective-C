// Generated Code Do Not Modify
#include "org/allbinary/graphics/paint/AnimationCompositePaintable.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/graphics/paint/InitUpdatePaintable.h"



void AnimationCompositePaintable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AnimationCompositePaintable

- (void) initFields {
    
}


- (instancetype) init:(Animation*)animationInterface {
    self = [super init];
    [self initFields];
        self->animationInterface = animationInterface;
    return self;
}


- (void) paint:(Graphics*)graphics {
        [self->animationInterface paintXY:graphics :0 :0];
}


- (void) paintThreed:(Graphics*)graphics {
        [self->animationInterface paintThreedXYZ:graphics :0 :0 :0];
}

@end

