// Generated Code Do Not Modify
#include "org/allbinary/emulator/swt/SWTRunnableProcessor.h"
#include "org/eclipse/swt/widgets/Display.h"
#include "org/allbinary/emulator/swt/SWTProcessor.h"


static SWTRunnableProcessor* SWTRunnableProcessor_instanceR;

void SWTRunnableProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    SWTRunnableProcessor_instanceR = [((SWTRunnableProcessor*) [SWTRunnableProcessor alloc]) init];
}

@implementation SWTRunnableProcessor

- (instancetype) init {
    self = [super init];
    return self;
}


+ (SWTRunnableProcessor*) getInstance {
        return (SWTRunnableProcessor_staticInit(), SWTRunnableProcessor_instanceR);
}


- (void) process:(Display*)display {
}

@end

