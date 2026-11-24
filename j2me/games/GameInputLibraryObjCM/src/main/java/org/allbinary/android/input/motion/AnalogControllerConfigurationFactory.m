// Generated Code Do Not Modify
#include "org/allbinary/android/input/motion/AnalogControllerConfigurationFactory.h"
#include "org/allbinary/android/input/motion/event/AnalogControllerConfigurationEvent.h"
#include "org/allbinary/android/input/motion/event/AnalogControllerConfigurationEventHandler.h"
#include "org/allbinary/logic/math/ScaleFactorFactory.h"
#if __has_include("org/allbinary/logic/math/ScaleFactorFactory.h")
#include "org/allbinary/logic/math/ScaleFactorFactory.h"
#endif
#if __has_include("org/allbinary/logic/math/ScaleFactorFactory.h")
#include "org/allbinary/logic/math/ScaleFactorFactory.h"
#endif
#if __has_include("org/allbinary/android/input/motion/event/AnalogControllerConfigurationEventHandler.h")
#include "org/allbinary/android/input/motion/event/AnalogControllerConfigurationEventHandler.h"
#endif


static AnalogControllerConfigurationFactory* AnalogControllerConfigurationFactory_instance;

void AnalogControllerConfigurationFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    AnalogControllerConfigurationFactory_instance = ((AnalogControllerConfigurationFactory*) [((AnalogControllerConfigurationFactory*) [AnalogControllerConfigurationFactory alloc]) init]);
}

@implementation AnalogControllerConfigurationFactory

- (void) initFields {
    self->SCALE_FACTOR = [ScaleFactorFactory getInstance]->DEFAULT_SCALE_FACTOR;
    self->SCALE_VALUE = [ScaleFactorFactory getInstance]->DEFAULT_SCALE_VALUE;
    self->available = false;
    self->analogControllerConfigurationEvent = ((AnalogControllerConfigurationEvent*) [((AnalogControllerConfigurationEvent*) [AnalogControllerConfigurationEvent alloc]) init:self]);
}


+ (AnalogControllerConfigurationFactory*) getInstance {
        return (AnalogControllerConfigurationFactory_staticInit(), AnalogControllerConfigurationFactory_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (bool) isAvailable {
        return self->available;
}


// throws Exception
- (void) setAvailable:(bool)available {
        self->available = available;
        [[AnalogControllerConfigurationEventHandler getInstance] fireEvent:self->analogControllerConfigurationEvent];
}

@end

