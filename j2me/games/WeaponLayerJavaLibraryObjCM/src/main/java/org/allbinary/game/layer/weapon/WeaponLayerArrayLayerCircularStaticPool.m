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
    WeaponLayerArrayLayerCircularStaticPool_instance = ((WeaponLayerArrayLayerCircularStaticPool*) [((WeaponLayerArrayLayerCircularStaticPool*) [WeaponLayerArrayLayerCircularStaticPool alloc]) init]);
}

@implementation WeaponLayerArrayLayerCircularStaticPool

- (void) initFields {
    self->MAX = 5;
    self->circularIndexUtil = [CircularIndexUtil createInstance:self->MAX];
    self->WEAPONLAYER_ARRAY = ((WeaponLayer***) java_array_new(sizeof(WeaponLayer**), self->MAX * 2));
    self->TWO_WEAPONLAYER_ARRAY = ((WeaponLayer***) java_array_new(sizeof(WeaponLayer**), self->MAX));
    self->THREE_WEAPONLAYER_ARRAY = ((WeaponLayer***) java_array_new(sizeof(WeaponLayer**), self->MAX));
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (WeaponLayerArrayLayerCircularStaticPool*) getInstance {
        return (WeaponLayerArrayLayerCircularStaticPool_staticInit(), WeaponLayerArrayLayerCircularStaticPool_instance);
}


- (void) initMethod {
        for (int32_t index = 0; index < self->MAX; index++) {
            self->WEAPONLAYER_ARRAY[index] = ((WeaponLayer**) java_array_new(sizeof(WeaponLayer*), 1));
            self->TWO_WEAPONLAYER_ARRAY[index] = ((WeaponLayer**) java_array_new(sizeof(WeaponLayer*), 2));
            self->THREE_WEAPONLAYER_ARRAY[index] = ((WeaponLayer**) java_array_new(sizeof(WeaponLayer*), 3));
        }
        self->WEAPONLAYER_ARRAY = self->WEAPONLAYER_ARRAY;
        self->TWO_WEAPONLAYER_ARRAY = self->TWO_WEAPONLAYER_ARRAY;
        self->THREE_WEAPONLAYER_ARRAY = self->THREE_WEAPONLAYER_ARRAY;
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

