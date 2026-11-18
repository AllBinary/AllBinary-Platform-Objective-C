// Generated Code Do Not Modify
#include "org/allbinary/game/layer/weapon/WeaponLayerArrayLayerCircularStaticPool.h"
#include "org/allbinary/util/CircularIndexUtil.h"
#include "org/allbinary/game/layer/weapon/WeaponLayer.h"


static WeaponLayerArrayLayerCircularStaticPool* WeaponLayerArrayLayerCircularStaticPool_instance;

void WeaponLayerArrayLayerCircularStaticPool_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    WeaponLayerArrayLayerCircularStaticPool_instance = [((WeaponLayerArrayLayerCircularStaticPool*) [WeaponLayerArrayLayerCircularStaticPool alloc]) init];
}

@implementation WeaponLayerArrayLayerCircularStaticPool

- (void) initFields {
    self->MAX = 5;
    self->circularIndexUtil = [CircularIndexUtil createInstance:self->MAX];
    self->WEAPONLAYER_ARRAY = nullptr;
    self->TWO_WEAPONLAYER_ARRAY = nullptr;
    self->THREE_WEAPONLAYER_ARRAY = nullptr;
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (WeaponLayerArrayLayerCircularStaticPool*) getInstance {
        return (WeaponLayerArrayLayerCircularStaticPool_staticInit(), WeaponLayerArrayLayerCircularStaticPool_instance);
}


- (void) init_ {
        WeaponLayer*** WEAPONLAYER_ARRAY = ((WeaponLayer***) java_array_new(sizeof(WeaponLayer**), self->MAX * 2));
        WeaponLayer*** TWO_WEAPONLAYER_ARRAY = ((WeaponLayer***) java_array_new(sizeof(WeaponLayer**), self->MAX));
        WeaponLayer*** THREE_WEAPONLAYER_ARRAY = ((WeaponLayer***) java_array_new(sizeof(WeaponLayer**), self->MAX));
        for (int32_t index = 0; index < self->MAX; index++) {
            WEAPONLAYER_ARRAY[index] = ((WeaponLayer**) java_array_new(sizeof(WeaponLayer*), 1));
            TWO_WEAPONLAYER_ARRAY[index] = ((WeaponLayer**) java_array_new(sizeof(WeaponLayer*), 2));
            THREE_WEAPONLAYER_ARRAY[index] = ((WeaponLayer**) java_array_new(sizeof(WeaponLayer*), 3));
        }
        self->WEAPONLAYER_ARRAY = WEAPONLAYER_ARRAY;
        self->TWO_WEAPONLAYER_ARRAY = TWO_WEAPONLAYER_ARRAY;
        self->THREE_WEAPONLAYER_ARRAY = THREE_WEAPONLAYER_ARRAY;
}


- (WeaponLayer***) getWeaponLayerArrays:(int32_t)size {
        if (size == 1) {
            return self->WEAPONLAYER_ARRAY;
        } else if (size == 2) {
            return self->TWO_WEAPONLAYER_ARRAY;
        } else if (size == 3) {
            return self->THREE_WEAPONLAYER_ARRAY;
        }
        java_throw(java_exception_new("RuntimeException", ""));
}


// throws Exception
- (WeaponLayer**) getInstanceArray:(int32_t)size {
        WeaponLayer** weaponLayerArray = [self getWeaponLayerArrays:size][[self->circularIndexUtil getIndex]];
        [self->circularIndexUtil next];
        return weaponLayerArray;
}

@end

