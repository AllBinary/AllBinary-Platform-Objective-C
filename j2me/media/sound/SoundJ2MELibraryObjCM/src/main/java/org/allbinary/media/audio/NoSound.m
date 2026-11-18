// Generated Code Do Not Modify
#include "org/allbinary/media/audio/NoSound.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/media/audio/Sound.h"
#include "org/allbinary/media/audio/NoPlayer.h"


static NoSound* NoSound_instance;

void NoSound_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NoSound_instance = [((NoSound*) [NoSound alloc]) init];
}

@implementation NoSound


+ (NoSound*) getInstance {
        return (NoSound_staticInit(), NoSound_instance);
}


- (instancetype) init {
        self = [super init:[StringUtil getInstance]->EMPTY_STRING];
        [self setPlayerP:(NoPlayer_staticInit(), NoPlayer_NO_PLAYER)];
    return self;
}

@end

