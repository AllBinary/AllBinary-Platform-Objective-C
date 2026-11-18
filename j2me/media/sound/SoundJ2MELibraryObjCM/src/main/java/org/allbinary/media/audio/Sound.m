// Generated Code Do Not Modify
#include "org/allbinary/media/audio/Sound.h"
#include "javax/microedition/media/Player.h"
#include "org/allbinary/logic/communication/log/PreLogUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/media/audio/SoundInterface.h"
#include "org/allbinary/media/audio/NoPlayer.h"



void Sound_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation Sound

- (void) initFields {
    
    self->player = (NoPlayer_staticInit(), NoPlayer_NO_PLAYER);
}


- (instancetype) init:(const char*)resource {
    self = [super init];
    [self initFields];
        self->resource = resource;
    return self;
}


- (const char*) getResource {
        return self->resource;
}


- (Player*) getPlayerP {
        return self->player;
}


- (void) setPlayerP:(Player*)player {
        self->player = player;
}


// throws Exception
- (void) init_ {
}


- (int32_t) getDuration {
        return -1;
}


- (void) run {
        JAVA_TRY {
            [self->player start];
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [PreLogUtil put:commonStrings->EXCEPTION :self :commonStrings->RUN];
        } JAVA_END_TRY;
}

@end

