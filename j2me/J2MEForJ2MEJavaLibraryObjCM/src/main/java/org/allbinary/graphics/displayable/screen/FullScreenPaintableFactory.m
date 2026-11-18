// Generated Code Do Not Modify
#include "org/allbinary/graphics/displayable/screen/FullScreenPaintableFactory.h"
#include "org/allbinary/graphics/paint/NullPaintable.h"
#include "org/allbinary/graphics/paint/Paintable.h"


static FullScreenPaintableFactory* FullScreenPaintableFactory_instance;

void FullScreenPaintableFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    FullScreenPaintableFactory_instance = [((FullScreenPaintableFactory*) [FullScreenPaintableFactory alloc]) init];
}

@implementation FullScreenPaintableFactory

- (void) initFields {
    self->paintable = [NullPaintable getInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (FullScreenPaintableFactory*) getInstance {
        return (FullScreenPaintableFactory_staticInit(), FullScreenPaintableFactory_instance);
}

@end

