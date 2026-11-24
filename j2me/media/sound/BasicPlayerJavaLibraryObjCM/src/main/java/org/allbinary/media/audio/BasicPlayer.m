// Generated Code Do Not Modify
#include "org/allbinary/media/audio/BasicPlayer.h"
#include "javax/microedition/media/Control.h"
#include "javax/microedition/media/MediaException.h"
#include "javax/microedition/media/PlayerListener.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/media/audio/Controllable2.h"
#include "org/allbinary/media/audio/NullControl.h"
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif


const char* BasicPlayer_CONTROL_TYPE = "ToneControl";

void BasicPlayer_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BasicPlayer

- (void) initFields {
    self->commonStrings = [CommonStrings getInstance];
    self->listenersList = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
    self->stateP = 0;
    self->loopCountP = 0;
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        [self setLoopCount:0];
        [self setState:(Player_staticInit(), Player_UNREALIZED)];
    return self;
}


- (const char*) getContentType {
        return [StringUtil getInstance]->EMPTY_STRING;
}


- (Control*) getControl:(const char*)controlType {
        return ((NullControl*) [((NullControl*) [NullControl alloc]) init]);
}


- (Control**) getControls {
        return ((Control**) java_array_new(sizeof(Control*), 0));
}


- (void) close {
}


// synchronized
- (void) addPlayerListener:(PlayerListener*)playerListener {
        if (![self->listenersList contains:playerListener]) {
            [self->listenersList add:playerListener];
        }
}


- (void) removePlayerListener:(PlayerListener*)playerListener {
        [self->listenersList remove:playerListener];
}


- (int32_t) getState {
        return self->stateP;
}


// synchronized
- (void) setState:(int32_t)state {
        self->stateP = state;
}


- (int64_t) getDuration {
        return 0LL;
}


- (int64_t) getMediaTime {
        return 0LL;
}


- (void) deallocate {
}


// throws MediaException
- (void) prefetch {
}


// throws MediaException
- (void) realize {
}


// synchronized
- (void) setLoopCount:(int32_t)count {
        self->loopCountP = count;
}


- (int32_t) getLoopCount {
        return self->loopCountP;
}


// throws MediaException
// synchronized
- (int64_t) setMediaTime:(int64_t)now {
        return 0LL;
}


// throws MediaException
// synchronized
- (void) start {
        [self setState:(Player_staticInit(), Player_STARTED)];
}


// throws MediaException
// synchronized
- (void) stop {
        [self setState:(Player_staticInit(), Player_PREFETCHED)];
}


- (void) setVolume:(int32_t)leftVolume :(int32_t)rightVolume {
}

@end

