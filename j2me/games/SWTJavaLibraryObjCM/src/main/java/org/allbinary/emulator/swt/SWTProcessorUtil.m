// Generated Code Do Not Modify
#include "org/allbinary/emulator/swt/SWTProcessorUtil.h"
#include "org/allbinary/emulator/swt/SWTProcessor.h"


static SWTProcessorUtil* SWTProcessorUtil_instance;

void SWTProcessorUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    SWTProcessorUtil_instance = [((SWTProcessorUtil*) [SWTProcessorUtil alloc]) init];
}

@implementation SWTProcessorUtil

- (void) initFields {
    self->swtProcessor = [SWTProcessor getInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (SWTProcessorUtil*) getInstance {
        return (SWTProcessorUtil_staticInit(), SWTProcessorUtil_instance);
}

@end

