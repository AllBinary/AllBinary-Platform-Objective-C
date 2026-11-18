// Generated Code Do Not Modify
#include "org/allbinary/ag/weapon/media/audio/DropWeaponSound.h"
#include "org/allbinary/media/audio/Sound.h"


static Sound* DropWeaponSound_soundInterface;

void DropWeaponSound_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    DropWeaponSound_soundInterface = [((DropWeaponSound*) [DropWeaponSound alloc]) init];
}

@implementation DropWeaponSound


- (instancetype) init {
        self = [super init:"resource:/wav/mine.wav"];
    return self;
}


+ (Sound*) getInstance {
        return (DropWeaponSound_staticInit(), DropWeaponSound_soundInterface);
}

@end

