// Generated Code Do Not Modify
#include "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactoryPool.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"


static CountedPickedUpLayerInterfaceFactoryPool* CountedPickedUpLayerInterfaceFactoryPool_SINGLETON;

void CountedPickedUpLayerInterfaceFactoryPool_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    CountedPickedUpLayerInterfaceFactoryPool_SINGLETON = [((CountedPickedUpLayerInterfaceFactoryPool*) [CountedPickedUpLayerInterfaceFactoryPool alloc]) init];
}

@implementation CountedPickedUpLayerInterfaceFactoryPool

- (void) initFields {
    
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        self->list = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
    return self;
}


- (BasicArrayList*) getList {
        return self->list;
}


+ (CountedPickedUpLayerInterfaceFactoryPool*) getInstance {
        return (CountedPickedUpLayerInterfaceFactoryPool_staticInit(), CountedPickedUpLayerInterfaceFactoryPool_SINGLETON);
}


+ (void) init_ {
        CountedPickedUpLayerInterfaceFactoryPool_SINGLETON = [((CountedPickedUpLayerInterfaceFactoryPool*) [CountedPickedUpLayerInterfaceFactoryPool alloc]) init];
}

@end

