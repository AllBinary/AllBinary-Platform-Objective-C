// Generated Code Do Not Modify
#include "org/allbinary/media/audio/NoPlayer.h"
#include "javax/microedition/media/Control.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/media/audio/BasicPlayer.h"
#include "org/allbinary/media/audio/NullControl.h"
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif


NoPlayer* NoPlayer_NO_PLAYER;

void NoPlayer_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NoPlayer_NO_PLAYER = ((NoPlayer*) [((NoPlayer*) [NoPlayer alloc]) init]);
}

@implementation NoPlayer


- (instancetype) init {
    self = [super init];
    return self;
}


- (void) close {
}


- (const char*) getContentType {
        return [StringUtil getInstance]->NULL_STRING;
}


- (Control*) getControl:(const char*)controlType {
        return ((NullControl*) [((NullControl*) [NullControl alloc]) init]);
}


- (Control**) getControls {
        return ((Control**) java_array_new(sizeof(Control*), 0));
}

@end

