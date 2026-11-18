// Generated Code Do Not Modify
#include "org/allbinary/media/audio/CompositeSound.h"
#include "org/allbinary/media/audio/Sound.h"
#include "org/allbinary/media/audio/PlayerComposite.h"
#include "org/allbinary/media/audio/AllBinaryMediaManager.h"



void CompositeSound_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CompositeSound


- (instancetype) init:(const char*)resource {
        self = [super init:resource];
    return self;
}


// throws Exception
- (void) init_ {
        [self setPlayerP:[((PlayerComposite*) [PlayerComposite alloc]) init:[AllBinaryMediaManager createPlayer:[self getResource]] :570]];
}

@end

