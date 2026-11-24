// Generated Code Do Not Modify
#include "org/allbinary/game/multiplayer/layer/RemoteInfo.h"
#include "org/allbinary/logic/string/StringUtil.h"
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif



RemoteInfo* RemoteInfo_REMOTE_INFO;

void RemoteInfo_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    RemoteInfo_REMOTE_INFO = ((RemoteInfo*) [((RemoteInfo*) [RemoteInfo alloc]) init:[StringUtil getInstance]->EMPTY_STRING :-1 :-1 :RemoteInfo_NEW_PLAYER_ID]);
}

@implementation RemoteInfo


- (instancetype) init:(const char*)username :(int32_t)actorSessionId :(int32_t)playerInputId :(int32_t)id_ {
    self = [super init];
    return self;
}

@end

