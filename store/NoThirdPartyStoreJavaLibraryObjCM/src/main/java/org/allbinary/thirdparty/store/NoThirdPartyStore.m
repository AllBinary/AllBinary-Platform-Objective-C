// Generated Code Do Not Modify
#include "org/allbinary/thirdparty/store/NoThirdPartyStore.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.h"
#include "org/allbinary/thirdparty/store/ThirdPartyStore.h"



void NoThirdPartyStore_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation NoThirdPartyStore


- (instancetype) init {
        self = [super init:[StringUtil getInstance]->EMPTY_STRING];
    return self;
}


- (void) authorize:(AbeClientInformationInterface*)clientInformationInterface {
        [self setAuthorized:true];
}

@end

