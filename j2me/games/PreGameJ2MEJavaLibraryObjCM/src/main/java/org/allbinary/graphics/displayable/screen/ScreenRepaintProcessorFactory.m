// Generated Code Do Not Modify
#include "org/allbinary/graphics/displayable/screen/ScreenRepaintProcessorFactory.h"
#include "javax/microedition/lcdui/Displayable.h"
#include "org/allbinary/J2MEUtil.h"
#include "org/allbinary/canvas/Processor.h"
#include "org/allbinary/graphics/displayable/screen/ScreenRepaintProcessor.h"


static ScreenRepaintProcessorFactory* ScreenRepaintProcessorFactory_instance;

void ScreenRepaintProcessorFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ScreenRepaintProcessorFactory_instance = ((ScreenRepaintProcessorFactory*) [((ScreenRepaintProcessorFactory*) [ScreenRepaintProcessorFactory alloc]) init]);
}

@implementation ScreenRepaintProcessorFactory


+ (ScreenRepaintProcessorFactory*) getInstance {
        return (ScreenRepaintProcessorFactory_staticInit(), ScreenRepaintProcessorFactory_instance);
}


- (instancetype) init {
    self = [super init];
    return self;
}


- (Processor*) create:(Displayable*)displayable {
        if (![J2MEUtil isJ2ME]) {
            return ((ScreenRepaintProcessor*) [((ScreenRepaintProcessor*) [ScreenRepaintProcessor alloc]) init:displayable]);
        } else {
            return [Processor getInstance];
        }
}

@end

