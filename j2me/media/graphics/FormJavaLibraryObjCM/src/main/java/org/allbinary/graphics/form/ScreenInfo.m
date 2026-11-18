// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/ScreenInfo.h"


static ScreenInfo* ScreenInfo_instance;

void ScreenInfo_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ScreenInfo_instance = [((ScreenInfo*) [ScreenInfo alloc]) init];
}

@implementation ScreenInfo

- (void) initFields {
    self->SMALL_WIDTH = 320;
    self->SMALL_HEIGHT = 240;
    self->MEDIUM_WIDTH = 800;
    self->MEDIUM_HEIGHT = 600;
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (ScreenInfo*) getInstance {
        return (ScreenInfo_staticInit(), ScreenInfo_instance);
}

@end

