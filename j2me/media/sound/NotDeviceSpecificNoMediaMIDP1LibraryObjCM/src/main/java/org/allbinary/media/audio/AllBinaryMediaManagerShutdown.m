// Generated Code Do Not Modify
#include "org/allbinary/media/audio/AllBinaryMediaManagerShutdown.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/media/audio/AllBinaryMediaManager.h"
#include "org/allbinary/media/audio/SoundsFactoryInterface.h"


static AllBinaryMediaManagerShutdown* AllBinaryMediaManagerShutdown_instance;

void AllBinaryMediaManagerShutdown_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    AllBinaryMediaManagerShutdown_instance = [((AllBinaryMediaManagerShutdown*) [AllBinaryMediaManagerShutdown alloc]) init];
}

@implementation AllBinaryMediaManagerShutdown

- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
+ (void) shutdown:(SoundsFactoryInterface*)soundsFactoryInterface {
        LogUtil* logUtil = [LogUtil getInstance];
        CommonStrings* commonStrings = [CommonStrings getInstance];
        [logUtil putF:commonStrings->START :(AllBinaryMediaManagerShutdown_staticInit(), AllBinaryMediaManagerShutdown_instance) :"shutdown"];
        [AllBinaryMediaManager shutdown:soundsFactoryInterface];
}

@end

