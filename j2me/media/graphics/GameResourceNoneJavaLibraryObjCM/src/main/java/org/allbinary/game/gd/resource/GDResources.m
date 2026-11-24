// Generated Code Do Not Modify
#include "org/allbinary/game/gd/resource/GDResources.h"


static GDResources* GDResources_instance;

void GDResources_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GDResources_instance = ((GDResources*) [((GDResources*) [GDResources alloc]) init]);
}

@implementation GDResources

- (void) initFields {
    self->resourceStringArray = ((const char**) java_array_from(sizeof(const char*), sizeof((const char*[]){  }) / sizeof(const char*), (const char*[]){  }));
    self->currentLayoutRequiredTotal = 0;
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (GDResources*) getInstance {
        return (GDResources_staticInit(), GDResources_instance);
}

@end

