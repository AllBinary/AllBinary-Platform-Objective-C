// Generated Code Do Not Modify
#include "org/allbinary/debug/DebugFactory.h"
#include "org/allbinary/debug/NoDebug.h"
#include "org/allbinary/debug/DebugInterface.h"



void DebugFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation DebugFactory

- (instancetype) init {
    self = [super init];
    return self;
}


+ (DebugInterface*) getInstance {
        return [NoDebug getInstance];
}

@end

