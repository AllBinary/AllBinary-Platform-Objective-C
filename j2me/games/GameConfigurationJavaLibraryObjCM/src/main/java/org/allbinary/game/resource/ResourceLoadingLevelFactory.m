// Generated Code Do Not Modify
#include "org/allbinary/game/resource/ResourceLoadingLevelFactory.h"
#include "org/allbinary/game/resource/ResourceLoadingLevel.h"


static ResourceLoadingLevelFactory* ResourceLoadingLevelFactory_instance;

void ResourceLoadingLevelFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ResourceLoadingLevelFactory_instance = ((ResourceLoadingLevelFactory*) [((ResourceLoadingLevelFactory*) [ResourceLoadingLevelFactory alloc]) init]);
}

@implementation ResourceLoadingLevelFactory

- (void) initFields {
    self->LOAD_EARLY = ((ResourceLoadingLevel*) [((ResourceLoadingLevel*) [ResourceLoadingLevel alloc]) init:"Load Early" :(Integer_staticInit(), Integer_MAX_VALUE)]);
    self->LOAD_TOUCH = ((ResourceLoadingLevel*) [((ResourceLoadingLevel*) [ResourceLoadingLevel alloc]) init:"Load Touch" :(Integer_staticInit(), Integer_MAX_VALUE) - 1]);
    self->LOAD_GAME = ((ResourceLoadingLevel*) [((ResourceLoadingLevel*) [ResourceLoadingLevel alloc]) init:"Load Game" :(Integer_staticInit(), Integer_MAX_VALUE) - 2]);
    self->LEVEL = ((ResourceLoadingLevel*) [((ResourceLoadingLevel*) [ResourceLoadingLevel alloc]) init:"Level" :(Integer_staticInit(), Integer_MAX_VALUE) - 99]);
    self->MAX_LEVEL = ((ResourceLoadingLevel*) [((ResourceLoadingLevel*) [ResourceLoadingLevel alloc]) init:"Max Level" :(Integer_staticInit(), Integer_MAX_VALUE) - 100]);
    self->LOAD_ALL = ((ResourceLoadingLevel*) [((ResourceLoadingLevel*) [ResourceLoadingLevel alloc]) init:"Load All" :-1]);
    self->RESOURCE_LOADING_LEVEL_ARRAY = ((ResourceLoadingLevel**) java_array_from(sizeof(ResourceLoadingLevel*), sizeof((ResourceLoadingLevel*[]){ self->LOAD_ALL, self->MAX_LEVEL, self->LEVEL, self->LOAD_GAME, self->LOAD_TOUCH, self->LOAD_EARLY }) / sizeof(ResourceLoadingLevel*), (ResourceLoadingLevel*[]){ self->LOAD_ALL, self->MAX_LEVEL, self->LEVEL, self->LOAD_GAME, self->LOAD_TOUCH, self->LOAD_EARLY }));
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (ResourceLoadingLevelFactory*) getInstance {
        return (ResourceLoadingLevelFactory_staticInit(), ResourceLoadingLevelFactory_instance);
}


- (const char*) getLevelString:(int32_t)level {
        for (int32_t index = 0; index < java_array_length(self->RESOURCE_LOADING_LEVEL_ARRAY); index++) {
            if (level == [self->RESOURCE_LOADING_LEVEL_ARRAY[index] getLevel]) {
                return [self->RESOURCE_LOADING_LEVEL_ARRAY[index] getName];
            }
        }
        return java_string_of(level);
}

@end

