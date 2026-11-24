// Generated Code Do Not Modify
#include "org/allbinary/logic/system/security/licensing/ThirdPartyInApplicationPurchase.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/logic/system/security/licensing/ThirdPartyInApplicationPurchaseInterface.h"
#include "org/allbinary/logic/system/security/licensing/LockableFeature.h"
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif



void ThirdPartyInApplicationPurchase_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ThirdPartyInApplicationPurchase

- (instancetype) init {
    self = [super init];
    return self;
}


- (bool) isPurchased:(LockableFeature*)lockableFeature {
        return false;
}


- (void) onCreate:(id)anyType :(id)stateObject {
}


- (void) onDestroy {
}


- (void) onStart {
}


- (void) onActivityResult:(int32_t)requestCode :(int32_t)resultCode :(id)dataObject {
}


- (void) onSaveInstanceState:(id)anyType {
}


- (void) onStop {
}


- (void) requestPurchase:(LockableFeature*)lockableFeature {
}


- (void) requestReceipts {
}


- (void) add:(LockableFeature*)lockableFeature {
}


- (const char*) getUserName {
        return [StringUtil getInstance]->EMPTY_STRING;
}


- (bool) isEnabled {
        return false;
}


- (void) requestProducts {
}

@end

