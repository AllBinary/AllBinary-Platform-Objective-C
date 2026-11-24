// Generated Code Do Not Modify
#include "org/allbinary/logic/system/security/licensing/LockableFeatureFactory.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"


static LockableFeatureFactory* LockableFeatureFactory_instance;

void LockableFeatureFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    LockableFeatureFactory_instance = ((LockableFeatureFactory*) [((LockableFeatureFactory*) [LockableFeatureFactory alloc]) init]);
}

@implementation LockableFeatureFactory

- (void) initFields {
    self->list = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (LockableFeatureFactory*) getInstance {
        return (LockableFeatureFactory_staticInit(), LockableFeatureFactory_instance);
}


- (BasicArrayList*) getList {
        return self->list;
}

@end

