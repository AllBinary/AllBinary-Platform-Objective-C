// Generated Code Do Not Modify
#include "org/allbinary/logic/system/security/licensing/InApplicationPurchaseFactory.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/logic/system/security/licensing/LockableFeature.h"


static InApplicationPurchaseFactory* InApplicationPurchaseFactory_instance;

void InApplicationPurchaseFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    InApplicationPurchaseFactory_instance = [((InApplicationPurchaseFactory*) [InApplicationPurchaseFactory alloc]) init];
}

@implementation InApplicationPurchaseFactory


+ (InApplicationPurchaseFactory*) getInstance {
        return (InApplicationPurchaseFactory_staticInit(), InApplicationPurchaseFactory_instance);
}


- (instancetype) init {
    self = [super init];
    return self;
}


- (void) init_:(id)anyType :(id)stateObject {
}


- (void) onCreate:(id)anyType :(id)stateObject {
}


- (void) onStart {
}


- (void) onResult:(int32_t)requestCode :(int32_t)resultCode :(id)data {
}


- (void) onSaveState:(id)anyType {
}


- (void) onStop {
}


- (void) onDestroy {
}


- (void) purchase:(LockableFeature*)lockableFeature {
}


- (bool) isPurchased:(LockableFeature*)lockableFeature {
        return false;
}


- (void) add:(LockableFeature*)lockableFeature {
}


- (const char*) getUserName {
        return [StringUtil getInstance]->EMPTY_STRING;
}


- (bool) isEnabled {
        return false;
}

@end

