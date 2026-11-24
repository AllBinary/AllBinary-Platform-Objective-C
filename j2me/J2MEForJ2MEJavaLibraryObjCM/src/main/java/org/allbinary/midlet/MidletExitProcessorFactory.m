// Generated Code Do Not Modify
#include "org/allbinary/midlet/MidletExitProcessorFactory.h"
#include "javax/microedition/midlet/MIDlet.h"
#include "org/allbinary/AppletUtil.h"
#include "org/allbinary/J2MEUtil.h"
#include "org/allbinary/canvas/Processor.h"
#include "org/allbinary/midlet/MidletExitProcessor.h"


static MidletExitProcessorFactory* MidletExitProcessorFactory_instance;

void MidletExitProcessorFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    MidletExitProcessorFactory_instance = ((MidletExitProcessorFactory*) [((MidletExitProcessorFactory*) [MidletExitProcessorFactory alloc]) init]);
}

@implementation MidletExitProcessorFactory

- (instancetype) init {
    self = [super init];
    return self;
}


+ (MidletExitProcessorFactory*) getInstance {
        return (MidletExitProcessorFactory_staticInit(), MidletExitProcessorFactory_instance);
}


- (Processor*) getExitInstance:(MIDlet*)midlet {
        if ([AppletUtil isAppletLoader:midlet] || [J2MEUtil isJ2ME]) {
            return [Processor getInstance];
        } else {
            return ((MidletExitProcessor*) [((MidletExitProcessor*) [MidletExitProcessor alloc]) init:midlet]);
        }
}

@end

