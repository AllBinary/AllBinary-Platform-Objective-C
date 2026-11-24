// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/feature/InputFeatureFactory.h"
#include "org/allbinary/game/configuration/feature/InputFeature.h"
#include "org/allbinary/game/configuration/feature/Features.h"


static InputFeatureFactory* InputFeatureFactory_instance;

void InputFeatureFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    InputFeatureFactory_instance = ((InputFeatureFactory*) [((InputFeatureFactory*) [InputFeatureFactory alloc]) init]);
}

@implementation InputFeatureFactory

- (void) initFields {
    self->REMOVE_DUPLICATE_KEY_PRESSES = ((InputFeature*) [((InputFeature*) [InputFeature alloc]) init:"Remove Duplicate Key Presses"]);
    self->INPUT_MAPPING = ((InputFeature*) [((InputFeature*) [InputFeature alloc]) init:"Input Mapping"]);
    self->MULTI_KEY_PRESS = ((InputFeature*) [((InputFeature*) [InputFeature alloc]) init:"Multi Key Press"]);
    self->SINGLE_KEY_REPEAT_PRESS = ((InputFeature*) [((InputFeature*) [InputFeature alloc]) init:"Single Key Repeat Press"]);
    self->SINGLE_KEY_PRESS = ((InputFeature*) [((InputFeature*) [InputFeature alloc]) init:"Single Key Press"]);
}


+ (InputFeatureFactory*) getInstance {
        return (InputFeatureFactory_staticInit(), InputFeatureFactory_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (bool) isSingleKeyProcessing {
        Features* features = [Features getInstance];
        if ([features isFeature:self->SINGLE_KEY_REPEAT_PRESS] || [features isFeature:self->SINGLE_KEY_PRESS]) {
            return true;
        } else {
            return false;
        }
}

@end

