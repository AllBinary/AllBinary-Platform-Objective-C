// Generated Code Do Not Modify
#include "org/allbinary/logic/communication/log/config/type/LogConfigTypes.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"


BasicArrayList* LogConfigTypes_LOGGING;

void LogConfigTypes_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    LogConfigTypes_LOGGING = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
}

@implementation LogConfigTypes


- (instancetype) init {
    self = [super init];
    return self;
}

@end

