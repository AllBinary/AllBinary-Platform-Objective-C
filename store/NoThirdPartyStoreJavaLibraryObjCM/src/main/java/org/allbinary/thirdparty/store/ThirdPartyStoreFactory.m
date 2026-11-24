// Generated Code Do Not Modify
#include "org/allbinary/thirdparty/store/ThirdPartyStoreFactory.h"
#include "org/allbinary/thirdparty/store/NoThirdPartyStore.h"
#include "org/allbinary/thirdparty/store/ThirdPartyStore.h"


static NoThirdPartyStore* ThirdPartyStoreFactory_instance;

void ThirdPartyStoreFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ThirdPartyStoreFactory_instance = ((NoThirdPartyStore*) [((NoThirdPartyStore*) [NoThirdPartyStore alloc]) init]);
}

@implementation ThirdPartyStoreFactory


+ (ThirdPartyStore*) getInstance {
        return (ThirdPartyStoreFactory_staticInit(), ThirdPartyStoreFactory_instance);
}


- (instancetype) init {
    self = [super init];
    return self;
}

@end

