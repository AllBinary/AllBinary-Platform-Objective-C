// Generated Code Do Not Modify
#include "org/allbinary/game/layer/LayerPlacementTypeFactory.h"
#include "org/allbinary/direction/DirectionFactory.h"
#include "org/allbinary/game/layer/LayerPlacementType.h"
#if __has_include("org/allbinary/direction/DirectionFactory.h")
#include "org/allbinary/direction/DirectionFactory.h"
#endif
#if __has_include("org/allbinary/direction/DirectionFactory.h")
#include "org/allbinary/direction/DirectionFactory.h"
#endif
#if __has_include("org/allbinary/direction/DirectionFactory.h")
#include "org/allbinary/direction/DirectionFactory.h"
#endif
#if __has_include("org/allbinary/direction/DirectionFactory.h")
#include "org/allbinary/direction/DirectionFactory.h"
#endif


static LayerPlacementTypeFactory* LayerPlacementTypeFactory_instance;

void LayerPlacementTypeFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    LayerPlacementTypeFactory_instance = ((LayerPlacementTypeFactory*) [((LayerPlacementTypeFactory*) [LayerPlacementTypeFactory alloc]) init]);
}

@implementation LayerPlacementTypeFactory

- (void) initFields {
    self->MAP = ((LayerPlacementType*) [((LayerPlacementType*) [LayerPlacementType alloc]) init:(Integer_staticInit(), Integer_MAX_VALUE)]);
    self->LEFT = ((LayerPlacementType*) [((LayerPlacementType*) [LayerPlacementType alloc]) init:[[DirectionFactory getInstance]->LEFT getValue]]);
    self->DOWN = ((LayerPlacementType*) [((LayerPlacementType*) [LayerPlacementType alloc]) init:[[DirectionFactory getInstance]->DOWN getValue]]);
    self->UP = ((LayerPlacementType*) [((LayerPlacementType*) [LayerPlacementType alloc]) init:[[DirectionFactory getInstance]->UP getValue]]);
    self->RIGHT = ((LayerPlacementType*) [((LayerPlacementType*) [LayerPlacementType alloc]) init:[[DirectionFactory getInstance]->RIGHT getValue]]);
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (LayerPlacementTypeFactory*) getInstance {
        return (LayerPlacementTypeFactory_staticInit(), LayerPlacementTypeFactory_instance);
}

@end

