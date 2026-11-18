// Generated Code Do Not Modify
#include "org/allbinary/media/audio/SelectSound.h"
#include "org/allbinary/media/audio/CompositeSound.h"
#include "org/allbinary/media/audio/Sound.h"


static Sound* SelectSound_soundInterface;

void SelectSound_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    SelectSound_soundInterface = [((SelectSound*) [SelectSound alloc]) init];
}

@implementation SelectSound


- (instancetype) init {
        self = [super init:"resource:/wav/select.wav"];
    return self;
}


+ (Sound*) getInstance {
        return (SelectSound_staticInit(), SelectSound_soundInterface);
}

@end

