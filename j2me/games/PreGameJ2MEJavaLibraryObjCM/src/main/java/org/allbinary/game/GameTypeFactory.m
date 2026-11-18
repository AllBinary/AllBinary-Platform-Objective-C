// Generated Code Do Not Modify
#include "org/allbinary/game/GameTypeFactory.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/game/GameType.h"


static GameTypeFactory* GameTypeFactory_instance;

void GameTypeFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameTypeFactory_instance = [((GameTypeFactory*) [GameTypeFactory alloc]) init];
}

@implementation GameTypeFactory

- (void) initFields {
    self->NULL_GAME_TYPE_ARRAY = ((GameType**) java_array_new(sizeof(GameType*), 0));
    self->NONE = [((GameType*) [GameType alloc]) init:[StringUtil getInstance]->NULL_STRING];
    self->SINGLE_PLAYER = [((GameType*) [GameType alloc]) init:"Single Player"];
    self->MULTI_PLAYER = [((GameType*) [GameType alloc]) init:"Multi Player"];
    self->BOT = [((GameType*) [GameType alloc]) init:"Artificial Player"];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (GameTypeFactory*) getInstance {
        return (GameTypeFactory_staticInit(), GameTypeFactory_instance);
}

@end

