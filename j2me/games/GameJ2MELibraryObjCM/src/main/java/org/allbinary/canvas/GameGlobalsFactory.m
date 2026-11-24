// Generated Code Do Not Modify
#include "org/allbinary/canvas/GameGlobalsFactory.h"
#include "org/allbinary/graphics/GPoint.h"
#include "org/allbinary/graphics/PointFactory.h"
#if __has_include("org/allbinary/graphics/PointFactory.h")
#include "org/allbinary/graphics/PointFactory.h"
#endif


static GameGlobalsFactory* GameGlobalsFactory_instance;

void GameGlobalsFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameGlobalsFactory_instance = ((GameGlobalsFactory*) [((GameGlobalsFactory*) [GameGlobalsFactory alloc]) init]);
}

@implementation GameGlobalsFactory

- (void) initFields {
    self->newCanvas = true;
    self->newDisplaybleTime = ((int64_t) (Integer_staticInit(), Integer_MIN_VALUE));
    self->point = [PointFactory getInstance]->ZERO_ZERO;
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (GameGlobalsFactory*) getInstance {
        return (GameGlobalsFactory_staticInit(), GameGlobalsFactory_instance);
}

@end

