// Generated Code Do Not Modify
#include "org/allbinary/game/NullIntermissionEnableListener.h"
#include "org/allbinary/game/IntermissionEnableListenerInterface.h"


static IntermissionEnableListenerInterface* NullIntermissionEnableListener_SINGLETON;

void NullIntermissionEnableListener_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NullIntermissionEnableListener_SINGLETON = ((NullIntermissionEnableListener*) [((NullIntermissionEnableListener*) [NullIntermissionEnableListener alloc]) init]);
}

@implementation NullIntermissionEnableListener


+ (IntermissionEnableListenerInterface*) getInstance {
        return (NullIntermissionEnableListener_staticInit(), NullIntermissionEnableListener_SINGLETON);
}


- (instancetype) init {
    self = [super init];
    return self;
}


- (void) notifyIntermission:(bool)enable {
}

@end

