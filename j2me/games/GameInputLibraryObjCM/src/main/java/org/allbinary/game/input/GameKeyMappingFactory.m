// Generated Code Do Not Modify
#include "org/allbinary/game/input/GameKeyMappingFactory.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/game/input/GameKey.h"
#include "org/allbinary/game/input/InputFactory.h"
#include "org/allbinary/game/input/GameKeyFactory.h"


static id GameKeyMappingFactory_instance;

void GameKeyMappingFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameKeyMappingFactory_instance = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation GameKeyMappingFactory

- (void) initFields {
    self->intKeyToGameKey = ((GameKey**) java_array_new(sizeof(GameKey*), [InputFactory getInstance]->MAX));
}


+ (GameKeyMappingFactory*) getInstance {
        if ((GameKeyMappingFactory_staticInit(), GameKeyMappingFactory_instance) == [NullUtil getInstance]->NULL_OBJECT) {
            GameKeyMappingFactory_instance = [((GameKeyMappingFactory*) [GameKeyMappingFactory alloc]) init];
        }
        return ((GameKeyMappingFactory*) (GameKeyMappingFactory_staticInit(), GameKeyMappingFactory_instance));
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        GameKeyFactory* gameKeyFactory = [GameKeyFactory getInstance];
        [self setGameKey:gameKeyFactory->NONE];
        [self setGameKey:gameKeyFactory->UP];
        [self setGameKey:gameKeyFactory->DOWN];
        [self setGameKey:gameKeyFactory->LEFT];
        [self setGameKey:gameKeyFactory->RIGHT];
        [self setGameKey:gameKeyFactory->KEY_POUND];
        [self setGameKey:gameKeyFactory->KEY_STAR];
        [self setGameKey:gameKeyFactory->KEY_NUM0];
        [self setGameKey:gameKeyFactory->KEY_NUM1];
        [self setGameKey:gameKeyFactory->KEY_NUM2];
        [self setGameKey:gameKeyFactory->KEY_NUM3];
        [self setGameKey:gameKeyFactory->KEY_NUM4];
        [self setGameKey:gameKeyFactory->KEY_NUM5];
        [self setGameKey:gameKeyFactory->KEY_NUM6];
        [self setGameKey:gameKeyFactory->KEY_NUM7];
        [self setGameKey:gameKeyFactory->KEY_NUM8];
        [self setGameKey:gameKeyFactory->KEY_NUM9];
        [self setGameKey:gameKeyFactory->GAME_A];
        [self setGameKey:gameKeyFactory->GAME_B];
        [self setGameKey:gameKeyFactory->GAME_C];
        [self setGameKey:gameKeyFactory->GAME_D];
        [self setGameKey:gameKeyFactory->FIRE];
        [self setGameKey:gameKeyFactory->LEVEL_DOWN];
        [self setGameKey:gameKeyFactory->LEVEL_UP];
    return self;
}


- (GameKey*) getGameKey:(int32_t)key {
        return self->intKeyToGameKey[key];
}


- (void) setGameKey:(GameKey*)gameKey {
        self->intKeyToGameKey[[gameKey getId]] = gameKey;
}

@end

