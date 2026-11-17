// Generated Code Do Not Modify
#include "org/allbinary/string/CommonStateStrings.h"


static CommonStateStrings* CommonStateStrings_instance;

void CommonStateStrings_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    CommonStateStrings_instance = [((CommonStateStrings*) [CommonStateStrings alloc]) init];
}

@implementation CommonStateStrings

- (void) initFields {
    self->CONTEXT = "Context: ";
    self->FINISH = "finish";
    self->CREATE = "onCreate";
    self->START = "onStart";
    self->RESTART = "onRestart";
    self->RESUME = "onResume";
    self->PAUSE = "onPause";
    self->STOP = "onStop";
    self->DESTROY = "onDestroy";
    self->BIND = "onBind";
    self->ON_SAVE_INSTANCE_STATE = "onSaveInstanceState";
    self->ON_START_COMMAND = "onStartCommand";
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (CommonStateStrings*) getInstance {
        return (CommonStateStrings_staticInit(), CommonStateStrings_instance);
}

@end

