// Generated Code Do Not Modify
#include "org/allbinary/thirdparty/store/ThirdPartyMessageFactory.h"


static ThirdPartyMessageFactory* ThirdPartyMessageFactory_instance;

void ThirdPartyMessageFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ThirdPartyMessageFactory_instance = ((ThirdPartyMessageFactory*) [((ThirdPartyMessageFactory*) [ThirdPartyMessageFactory alloc]) init]);
}

@implementation ThirdPartyMessageFactory

- (void) initFields {
    self->AUTHORIZED = "Authorized";
    self->NOT_AUTHORIZED = "Not Authorized";
    self->LINKAGE_ERROR = "Linkage Error";
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (ThirdPartyMessageFactory*) getInstance {
        return (ThirdPartyMessageFactory_staticInit(), ThirdPartyMessageFactory_instance);
}

@end

