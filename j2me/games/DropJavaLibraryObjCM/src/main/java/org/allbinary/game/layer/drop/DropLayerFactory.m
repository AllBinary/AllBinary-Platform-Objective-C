// Generated Code Do Not Modify
#include "org/allbinary/game/layer/drop/DropLayerFactory.h"
#include "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactoryInterface.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/util/BasicArrayListUtil.h"


static DropLayerFactory* DropLayerFactory_DROP_LAYER_FACTORY;

void DropLayerFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    DropLayerFactory_DROP_LAYER_FACTORY = [((DropLayerFactory*) [DropLayerFactory alloc]) init];
}

@implementation DropLayerFactory

- (void) initFields {
    self->list = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
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


+ (DropLayerFactory*) getInstance {
        return (DropLayerFactory_staticInit(), DropLayerFactory_DROP_LAYER_FACTORY);
}


- (int32_t) getSize {
        return [self->list size];
}


- (PickedUpLayerInterfaceFactoryInterface*) getRandomInstance {
        return ((PickedUpLayerInterfaceFactoryInterface*) [self->basicArrayListUtil getRandom:self->list]);
}


- (void) add:(PickedUpLayerInterfaceFactoryInterface*)layerInterfaceFactoryInterface {
        [self->list add:layerInterfaceFactoryInterface];
}


- (BasicArrayList*) getList {
        return self->list;
}

@end

