// Generated Code Do Not Modify
#include "org/allbinary/media/audio/FireworksSound.h"
#include "org/allbinary/media/audio/CompositeSound.h"
#include "org/allbinary/media/audio/Sound.h"


static Sound* FireworksSound_soundInterface;

void FireworksSound_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    FireworksSound_soundInterface = [((FireworksSound*) [FireworksSound alloc]) init];
}

@implementation FireworksSound


- (instancetype) init {
        self = [super init:"resource:/wav/fireworks.wav"];
    return self;
}


+ (Sound*) getInstance {
        return (FireworksSound_staticInit(), FireworksSound_soundInterface);
}

@end

