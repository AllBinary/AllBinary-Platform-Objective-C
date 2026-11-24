// Generated Code Do Not Modify
#include "org/allbinary/logic/util/cache/PoolTypeFactory.h"
#include "org/allbinary/logic/util/cache/PoolType.h"
#include "org/allbinary/logic/util/cache/CacheTypeFactory.h"


static PoolTypeFactory* PoolTypeFactory_instance;

void PoolTypeFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    PoolTypeFactory_instance = ((PoolTypeFactory*) [((PoolTypeFactory*) [PoolTypeFactory alloc]) init]);
}

@implementation PoolTypeFactory

- (void) initFields {
    self->VECTOR_POOL = ((PoolType*) [((PoolType*) [PoolType alloc]) init:[CacheTypeFactory getInstance]->NO_CACHE]);
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (PoolTypeFactory*) getInstance {
        return (PoolTypeFactory_staticInit(), PoolTypeFactory_instance);
}

@end

