// Generated Code Do Not Modify
#include "org/allbinary/media/audio/GameYouLoseSound.h"
#include "org/allbinary/media/audio/CompositeSound.h"
#include "org/allbinary/media/audio/Sound.h"


static Sound* GameYouLoseSound_soundInterface;

void GameYouLoseSound_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameYouLoseSound_soundInterface = [((GameYouLoseSound*) [GameYouLoseSound alloc]) init];
}

@implementation GameYouLoseSound


- (instancetype) init {
        self = [super init:"resource:/wav/youlose.wav"];
    return self;
}


+ (Sound*) getInstance {
        return (GameYouLoseSound_staticInit(), GameYouLoseSound_soundInterface);
}

@end

