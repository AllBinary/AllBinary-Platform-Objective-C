// Generated Code Do Not Modify
#include "org/allbinary/media/audio/PlayerStateUtil.h"
#include "javax/microedition/media/Player.h"
#include "org/allbinary/string/CommonStrings.h"


static PlayerStateUtil* PlayerStateUtil_instance;

void PlayerStateUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    PlayerStateUtil_instance = ((PlayerStateUtil*) [((PlayerStateUtil*) [PlayerStateUtil alloc]) init]);
}

@implementation PlayerStateUtil

- (void) initFields {
    self->commonStrings = [CommonStrings getInstance];
    self->UNREALIZED = "UNREALIZED";
    self->REALIZED = "REALIZED";
    self->PREFETCHED = "PREFETCHED";
    self->STARTED = "STARTED";
    self->CLOSED = "CLOSED";
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (PlayerStateUtil*) getInstance {
        return (PlayerStateUtil_staticInit(), PlayerStateUtil_instance);
}


- (const char*) convert:(int32_t)state {
        if (state == (Player_staticInit(), Player_UNREALIZED)) {
            return self->UNREALIZED;
        } else if (state == (Player_staticInit(), Player_REALIZED)) {
            return self->REALIZED;
        } else if (state == (Player_staticInit(), Player_PREFETCHED)) {
            return self->PREFETCHED;
        } else if (state == (Player_staticInit(), Player_STARTED)) {
            return self->STARTED;
        } else if (state == (Player_staticInit(), Player_CLOSED)) {
            return self->CLOSED;
        }
        return self->commonStrings->UNKNOWN;
}

@end

