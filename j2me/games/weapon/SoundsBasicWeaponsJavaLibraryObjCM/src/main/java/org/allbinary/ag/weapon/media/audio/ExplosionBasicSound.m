// Generated Code Do Not Modify
#include "org/allbinary/ag/weapon/media/audio/ExplosionBasicSound.h"
#include "org/allbinary/media/audio/Sound.h"


static Sound* ExplosionBasicSound_soundInterface;

void ExplosionBasicSound_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ExplosionBasicSound_soundInterface = ((ExplosionBasicSound*) [((ExplosionBasicSound*) [ExplosionBasicSound alloc]) init]);
}

@implementation ExplosionBasicSound


- (instancetype) init {
        self = [super init:"resource:/wav/explosion.wav"];
    return self;
}


+ (Sound*) getInstance {
        return (ExplosionBasicSound_staticInit(), ExplosionBasicSound_soundInterface);
}

@end

