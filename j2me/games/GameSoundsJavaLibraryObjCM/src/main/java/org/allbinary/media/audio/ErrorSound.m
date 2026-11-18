// Generated Code Do Not Modify
#include "org/allbinary/media/audio/ErrorSound.h"
#include "org/allbinary/media/audio/CompositeSound.h"
#include "org/allbinary/media/audio/Sound.h"


static Sound* ErrorSound_soundInterface;

void ErrorSound_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ErrorSound_soundInterface = [((ErrorSound*) [ErrorSound alloc]) init];
}

@implementation ErrorSound


- (instancetype) init {
        self = [super init:"resource:/wav/error.wav"];
    return self;
}


+ (Sound*) getInstance {
        return (ErrorSound_staticInit(), ErrorSound_soundInterface);
}

@end

