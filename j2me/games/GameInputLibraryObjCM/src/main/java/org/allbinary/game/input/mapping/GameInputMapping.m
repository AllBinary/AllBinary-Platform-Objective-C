// Generated Code Do Not Modify
#include "org/allbinary/game/input/mapping/GameInputMapping.h"
#include "org/allbinary/game/input/GameKey.h"
#include "org/allbinary/logic/string/StringUtil.h"
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif



void GameInputMapping_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation GameInputMapping

- (void) initFields {
    self->name = [StringUtil getInstance]->EMPTY_STRING;
    self->gameKey = (GameKey_staticInit(), GameKey_NULL_GAME_KEY);
}


- (instancetype) init:(const char*)name :(GameKey*)gameKey {
    self = [super init];
    [self initFields];
        [self setName:name];
        [self setGameKey:gameKey];
    return self;
}


- (void) setGameKey:(GameKey*)gameKey {
        self->gameKey = gameKey;
}


- (GameKey*) getGameKey {
        return self->gameKey;
}


- (void) setName:(const char*)name {
        self->name = name;
}


- (const char*) getName {
        return self->name;
}

@end

