// Generated Code Do Not Modify
#include "org/allbinary/game/input/J2MEKeyFactory.h"
#include "org/allbinary/game/input/GameKeyFactory.h"
#include "org/allbinary/game/input/GameKey.h"
#include "org/allbinary/game/input/InputFactory.h"
#include "org/allbinary/game/input/Input.h"


static J2MEKeyFactory* J2MEKeyFactory_instance;

void J2MEKeyFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    J2MEKeyFactory_instance = [((J2MEKeyFactory*) [J2MEKeyFactory alloc]) init];
}

@implementation J2MEKeyFactory

- (void) initFields {
    self->gameKeyFactory = [GameKeyFactory getInstance];
}


+ (J2MEKeyFactory*) getInstance {
        return (J2MEKeyFactory_staticInit(), J2MEKeyFactory_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) init_ {
        GameKey** gameKeyArray = ((GameKey**) java_array_from(sizeof(GameKey*), sizeof((GameKey*[]){ self->gameKeyFactory->DOWN, self->gameKeyFactory->FIRE, self->gameKeyFactory->GAME_A, self->gameKeyFactory->GAME_B, self->gameKeyFactory->GAME_C, self->gameKeyFactory->GAME_D, self->gameKeyFactory->KEY_NUM0, self->gameKeyFactory->KEY_NUM1, self->gameKeyFactory->KEY_NUM2, self->gameKeyFactory->KEY_NUM3, self->gameKeyFactory->KEY_NUM4, self->gameKeyFactory->KEY_NUM5, self->gameKeyFactory->KEY_NUM6, self->gameKeyFactory->KEY_NUM7, self->gameKeyFactory->KEY_NUM8, self->gameKeyFactory->KEY_NUM9, self->gameKeyFactory->KEY_POUND, self->gameKeyFactory->KEY_STAR, self->gameKeyFactory->LEFT, self->gameKeyFactory->LEVEL_DOWN, self->gameKeyFactory->LEVEL_UP, self->gameKeyFactory->NONE, self->gameKeyFactory->RIGHT, self->gameKeyFactory->UP }) / sizeof(GameKey*), (GameKey*[]){ self->gameKeyFactory->DOWN, self->gameKeyFactory->FIRE, self->gameKeyFactory->GAME_A, self->gameKeyFactory->GAME_B, self->gameKeyFactory->GAME_C, self->gameKeyFactory->GAME_D, self->gameKeyFactory->KEY_NUM0, self->gameKeyFactory->KEY_NUM1, self->gameKeyFactory->KEY_NUM2, self->gameKeyFactory->KEY_NUM3, self->gameKeyFactory->KEY_NUM4, self->gameKeyFactory->KEY_NUM5, self->gameKeyFactory->KEY_NUM6, self->gameKeyFactory->KEY_NUM7, self->gameKeyFactory->KEY_NUM8, self->gameKeyFactory->KEY_NUM9, self->gameKeyFactory->KEY_POUND, self->gameKeyFactory->KEY_STAR, self->gameKeyFactory->LEFT, self->gameKeyFactory->LEVEL_DOWN, self->gameKeyFactory->LEVEL_UP, self->gameKeyFactory->NONE, self->gameKeyFactory->RIGHT, self->gameKeyFactory->UP }));
        InputFactory* inputFactory = [InputFactory getInstance];
        for (int32_t index = java_array_length(gameKeyArray); --index >= 0; ) {
            [inputFactory add:[gameKeyArray[index] getId] :gameKeyArray[index]];
        }
}


- (bool) isSubmission:(Input*)input {
        if (input == self->gameKeyFactory->FIRE) {
            return true;
        }
        return false;
}


- (bool) isDelete:(Input*)input {
        if (input == self->gameKeyFactory->GAME_D) {
            return true;
        }
        return false;
}


- (bool) isBackSpace:(Input*)input {
        return false;
}


- (bool) isUp:(Input*)input {
        if (input == self->gameKeyFactory->UP) {
            return true;
        }
        return false;
}


- (bool) isDown:(Input*)input {
        if (input == self->gameKeyFactory->DOWN) {
            return true;
        }
        return false;
}


- (bool) isLeft:(Input*)input {
        if (input == self->gameKeyFactory->LEFT) {
            return true;
        }
        return false;
}


- (bool) isRight:(Input*)input {
        if (input == self->gameKeyFactory->RIGHT) {
            return true;
        }
        return false;
}


- (bool) isEnter:(Input*)input {
        if (input == self->gameKeyFactory->FIRE) {
            return true;
        }
        return false;
}

@end

