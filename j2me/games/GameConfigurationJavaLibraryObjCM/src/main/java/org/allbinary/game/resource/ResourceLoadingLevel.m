// Generated Code Do Not Modify
#include "org/allbinary/game/resource/ResourceLoadingLevel.h"



void ResourceLoadingLevel_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ResourceLoadingLevel

- (void) initFields {
    
    
}


- (instancetype) init:(const char*)name :(int32_t)level {
    self = [super init];
    [self initFields];
        self->name = name;
        self->level = level;
    return self;
}


- (int32_t) getLevel {
        return self->level;
}


- (const char*) getName {
        return self->name;
}

@end

