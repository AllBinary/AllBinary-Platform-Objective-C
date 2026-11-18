// Generated Code Do Not Modify
#include "org/allbinary/game/GameMode.h"
#include "org/allbinary/logic/string/StringUtil.h"


GameMode* GameMode_NONE;
GameMode* GameMode_SERVER;
GameMode* GameMode_CLIENT;

void GameMode_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameMode_NONE = [((GameMode*) [GameMode alloc]) init:[StringUtil getInstance]->NULL_STRING];
    GameMode_SERVER = [((GameMode*) [GameMode alloc]) init:"Server"];
    GameMode_CLIENT = [((GameMode*) [GameMode alloc]) init:"Client"];
}

@implementation GameMode

- (void) initFields {
    self->name = [StringUtil getInstance]->EMPTY_STRING;
}


- (instancetype) init:(const char*)name {
    self = [super init];
    [self initFields];
        [self setName:name];
    return self;
}


- (void) setName:(const char*)name {
        self->name = name;
}


- (const char*) getName {
        return self->name;
}


- (const char*) toString {
        return [self getName];
}

@end

