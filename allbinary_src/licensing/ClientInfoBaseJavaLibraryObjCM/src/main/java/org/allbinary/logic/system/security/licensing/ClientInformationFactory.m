// Generated Code Do Not Modify
#include "org/allbinary/logic/system/security/licensing/ClientInformationFactory.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/logic/system/security/licensing/ClientInformation.h"



void ClientInformationFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ClientInformationFactory

- (instancetype) init {
    self = [super init];
    return self;
}


- (ClientInformation*) getInstance {
        LogUtil* logUtil = [LogUtil getInstance];
        CommonStrings* commonStrings = [CommonStrings getInstance];
        [logUtil putF:commonStrings->NOT_IMPLEMENTED :self :commonStrings->GET_INSTANCE];
        StringUtil* stringUtil = [StringUtil getInstance];
        return [((ClientInformation*) [ClientInformation alloc]) init:stringUtil->NULL_STRING :stringUtil->NULL_STRING :stringUtil->NULL_STRING :stringUtil->NULL_STRING];
}

@end

