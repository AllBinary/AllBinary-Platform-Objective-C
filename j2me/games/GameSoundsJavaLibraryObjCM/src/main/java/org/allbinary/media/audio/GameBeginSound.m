// Generated Code Do Not Modify
#include "org/allbinary/media/audio/GameBeginSound.h"
#include "org/allbinary/media/audio/CompositeSound.h"
#include "org/allbinary/media/audio/Sound.h"


static Sound* GameBeginSound_soundInterface;

void GameBeginSound_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameBeginSound_soundInterface = [((GameBeginSound*) [GameBeginSound alloc]) init];
}

@implementation GameBeginSound


- (instancetype) init {
        self = [super init:"resource:/wav/begin.wav"];
    return self;
}


+ (Sound*) getInstance {
        return (GameBeginSound_staticInit(), GameBeginSound_soundInterface);
}

@end

