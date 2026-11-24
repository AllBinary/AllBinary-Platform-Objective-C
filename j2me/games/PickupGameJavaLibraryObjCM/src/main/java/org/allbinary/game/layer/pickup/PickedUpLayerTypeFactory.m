// Generated Code Do Not Modify
#include "org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/game/layer/pickup/PickedUpLayerType.h"
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif


static PickedUpLayerTypeFactory* PickedUpLayerTypeFactory_instance;

void PickedUpLayerTypeFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    PickedUpLayerTypeFactory_instance = ((PickedUpLayerTypeFactory*) [((PickedUpLayerTypeFactory*) [PickedUpLayerTypeFactory alloc]) init]);
}

@implementation PickedUpLayerTypeFactory

- (void) initFields {
    self->NONE = ((PickedUpLayerType*) [((PickedUpLayerType*) [PickedUpLayerType alloc]) init:[StringUtil getInstance]->NULL_STRING]);
    self->BEAM = ((PickedUpLayerType*) [((PickedUpLayerType*) [PickedUpLayerType alloc]) init:"BEAM"]);
    self->MINE = ((PickedUpLayerType*) [((PickedUpLayerType*) [PickedUpLayerType alloc]) init:"MINE"]);
    self->PROJECTILE = ((PickedUpLayerType*) [((PickedUpLayerType*) [PickedUpLayerType alloc]) init:"PROJECTILE"]);
    self->ENHANCEMENT = ((PickedUpLayerType*) [((PickedUpLayerType*) [PickedUpLayerType alloc]) init:"Enhancement"]);
    self->MORPH = ((PickedUpLayerType*) [((PickedUpLayerType*) [PickedUpLayerType alloc]) init:"Morph"]);
    self->PART = ((PickedUpLayerType*) [((PickedUpLayerType*) [PickedUpLayerType alloc]) init:"Part"]);
    self->HEAL = ((PickedUpLayerType*) [((PickedUpLayerType*) [PickedUpLayerType alloc]) init:"Heal"]);
    self->LIFE = ((PickedUpLayerType*) [((PickedUpLayerType*) [PickedUpLayerType alloc]) init:"Life"]);
    self->POINTS = ((PickedUpLayerType*) [((PickedUpLayerType*) [PickedUpLayerType alloc]) init:"Points"]);
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (PickedUpLayerTypeFactory*) getInstance {
        return (PickedUpLayerTypeFactory_staticInit(), PickedUpLayerTypeFactory_instance);
}

@end

