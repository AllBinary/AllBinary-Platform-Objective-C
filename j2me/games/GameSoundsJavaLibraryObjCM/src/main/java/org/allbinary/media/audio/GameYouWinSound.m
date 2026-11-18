// Generated Code Do Not Modify
#include "org/allbinary/media/audio/GameYouWinSound.h"
#include "org/allbinary/media/audio/CompositeSound.h"
#include "org/allbinary/media/audio/Sound.h"


static Sound* GameYouWinSound_soundInterface;

void GameYouWinSound_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameYouWinSound_soundInterface = [((GameYouWinSound*) [GameYouWinSound alloc]) init];
}

@implementation GameYouWinSound


- (instancetype) init {
        self = [super init:"resource:/wav/youwin.wav"];
    return self;
}


+ (Sound*) getInstance {
        return (GameYouWinSound_staticInit(), GameYouWinSound_soundInterface);
}

@end

