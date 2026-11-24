// Generated Code Do Not Modify
#include "org/allbinary/game/layer/drop/PlacedLayerFactory.h"
#include "org/allbinary/layer/AllBinaryLayerFactoryInterface.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/util/BasicArrayListUtil.h"


static PlacedLayerFactory* PlacedLayerFactory_instance;

void PlacedLayerFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    PlacedLayerFactory_instance = ((PlacedLayerFactory*) [((PlacedLayerFactory*) [PlacedLayerFactory alloc]) init]);
}

@implementation PlacedLayerFactory

- (void) initFields {
    self->list = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
    self->basicArrayListUtil = [BasicArrayListUtil getInstance];
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) clear {
        [self->list clear];
}


+ (PlacedLayerFactory*) getInstance {
        return (PlacedLayerFactory_staticInit(), PlacedLayerFactory_instance);
}


- (int32_t) getSize {
        return [self->list size];
}


- (AllBinaryLayerFactoryInterface*) getRandomInstance {
        return ((AllBinaryLayerFactoryInterface*) [self->basicArrayListUtil getRandom:self->list]);
}


- (void) add:(AllBinaryLayerFactoryInterface*)layerInterfaceFactoryInterface {
        [self->list add:layerInterfaceFactoryInterface];
}

@end

