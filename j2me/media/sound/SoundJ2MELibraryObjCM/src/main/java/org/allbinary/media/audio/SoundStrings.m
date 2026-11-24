// Generated Code Do Not Modify
#include "org/allbinary/media/audio/SoundStrings.h"


static SoundStrings* SoundStrings_instance;

void SoundStrings_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    SoundStrings_instance = ((SoundStrings*) [((SoundStrings*) [SoundStrings alloc]) init]);
}

@implementation SoundStrings

- (void) initFields {
    self->STOP_ALL = "stopAll";
    self->CLOSE_ALL = "closeAll";
    self->SOUND = " Sound: ";
    self->INIT_SOUND = "Initializing Sound: ";
    self->STOPPING_SOUND = "Stopping Sound: ";
    self->CLOSING_SOUND = "Closing Sound: ";
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (SoundStrings*) getInstance {
        return (SoundStrings_staticInit(), SoundStrings_instance);
}

@end

