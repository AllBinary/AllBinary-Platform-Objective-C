// Generated Code Do Not Modify
#include "org/allbinary/graphics/threed/GLHolder.h"



void GLHolder_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation GLHolder

- (void) initFields {
    self->isCreated = true;
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) runOnSurfaceCreated:(id)renderer {
}


- (void) runOnSurfaceChanged:(id)renderer :(int32_t)width :(int32_t)height {
}


- (void) run:(id)renderer {
}

@end

