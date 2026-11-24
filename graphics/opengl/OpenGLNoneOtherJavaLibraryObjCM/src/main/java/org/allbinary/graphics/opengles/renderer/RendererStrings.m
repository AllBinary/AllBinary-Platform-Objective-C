// Generated Code Do Not Modify
#include "org/allbinary/graphics/opengles/renderer/RendererStrings.h"


static RendererStrings* RendererStrings_instance;

void RendererStrings_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    RendererStrings_instance = ((RendererStrings*) [((RendererStrings*) [RendererStrings alloc]) init]);
}

@implementation RendererStrings

- (void) initFields {
    self->ON_SURFACE_CREATED = "onSurfaceCreated";
    self->ON_SURFACE_CHANGED = "onSurfaceChanged";
    self->ON_DRAW_FRAME = "onDrawFrame";
    self->ON_DRAW_FRAME_THREED = "onDrawFrameThreed";
    self->ON_DRAW_FRAME_2D = "onDrawFrame2d";
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (RendererStrings*) getInstance {
        return (RendererStrings_staticInit(), RendererStrings_instance);
}

@end

