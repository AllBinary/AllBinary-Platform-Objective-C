// Generated Code Do Not Modify
#include "org/allbinary/game/input/GameKey.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/game/input/Input.h"


GameKey* GameKey_NULL_GAME_KEY;

void GameKey_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameKey_NULL_GAME_KEY = [((GameKey*) [GameKey alloc]) init:-1 :[StringUtil getInstance]->NULL_STRING];
}

@implementation GameKey


- (instancetype) init:(int32_t)key :(const char*)name {
        self = [super init:key :name];
    return self;
}


- (const char*) toString {
        return [[[[((StringMaker*) [StringMaker alloc]) init] append:"GameKey "] append:[super toString]] toString];
}

@end

