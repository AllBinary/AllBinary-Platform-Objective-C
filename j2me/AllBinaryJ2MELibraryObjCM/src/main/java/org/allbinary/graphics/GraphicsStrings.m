// Generated Code Do Not Modify
#include "org/allbinary/graphics/GraphicsStrings.h"


static GraphicsStrings* GraphicsStrings_instance;

void GraphicsStrings_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GraphicsStrings_instance = ((GraphicsStrings*) [((GraphicsStrings*) [GraphicsStrings alloc]) init]);
}

@implementation GraphicsStrings

- (void) initFields {
    self->ANIMATION = "animation";
    self->ANGLE = "angle";
    self->MOVEMENT_ANGLE = "movement_angle";
    self->ROTATION = "rotation";
    self->OPACITY = "opacity";
    self->HTML = "HTML";
    self->WIDTH = "width";
    self->HEIGHT = "height";
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (GraphicsStrings*) getInstance {
        return (GraphicsStrings_staticInit(), GraphicsStrings_instance);
}

@end

