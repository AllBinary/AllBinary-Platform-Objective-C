// Generated Code Do Not Modify
#include "org/allbinary/game/input/GameKeyFactory.h"
#include "javax/microedition/lcdui/Canvas.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/string/CommonPhoneStrings.h"
#include "org/allbinary/game/input/GameKey.h"
#include "org/allbinary/game/input/InputFactory.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonPhoneStrings.h")
#include "org/allbinary/string/CommonPhoneStrings.h"
#endif
#if __has_include("org/allbinary/string/CommonPhoneStrings.h")
#include "org/allbinary/string/CommonPhoneStrings.h"
#endif
#if __has_include("org/allbinary/string/CommonPhoneStrings.h")
#include "org/allbinary/string/CommonPhoneStrings.h"
#endif
#if __has_include("org/allbinary/string/CommonPhoneStrings.h")
#include "org/allbinary/string/CommonPhoneStrings.h"
#endif
#if __has_include("org/allbinary/string/CommonPhoneStrings.h")
#include "org/allbinary/string/CommonPhoneStrings.h"
#endif
#if __has_include("org/allbinary/string/CommonPhoneStrings.h")
#include "org/allbinary/string/CommonPhoneStrings.h"
#endif
#if __has_include("org/allbinary/string/CommonPhoneStrings.h")
#include "org/allbinary/string/CommonPhoneStrings.h"
#endif
#if __has_include("org/allbinary/string/CommonPhoneStrings.h")
#include "org/allbinary/string/CommonPhoneStrings.h"
#endif
#if __has_include("org/allbinary/string/CommonPhoneStrings.h")
#include "org/allbinary/string/CommonPhoneStrings.h"
#endif
#if __has_include("org/allbinary/string/CommonPhoneStrings.h")
#include "org/allbinary/string/CommonPhoneStrings.h"
#endif
#if __has_include("org/allbinary/string/CommonPhoneStrings.h")
#include "org/allbinary/string/CommonPhoneStrings.h"
#endif
#if __has_include("org/allbinary/string/CommonPhoneStrings.h")
#include "org/allbinary/string/CommonPhoneStrings.h"
#endif
#if __has_include("org/allbinary/string/CommonPhoneStrings.h")
#include "org/allbinary/string/CommonPhoneStrings.h"
#endif
#if __has_include("org/allbinary/string/CommonPhoneStrings.h")
#include "org/allbinary/string/CommonPhoneStrings.h"
#endif
#if __has_include("org/allbinary/string/CommonPhoneStrings.h")
#include "org/allbinary/string/CommonPhoneStrings.h"
#endif


static id GameKeyFactory_instance;

void GameKeyFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameKeyFactory_instance = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation GameKeyFactory

- (void) initFields {
    self->NONE = ((GameKey*) [((GameKey*) [GameKey alloc]) init:[InputFactory getInstance]->MAX - 1 :"None"]);
    self->UP = ((GameKey*) [((GameKey*) [GameKey alloc]) init:(Canvas_staticInit(), Canvas_UP) :[CommonPhoneStrings getInstance]->UP]);
    self->DOWN = ((GameKey*) [((GameKey*) [GameKey alloc]) init:(Canvas_staticInit(), Canvas_DOWN) :[CommonPhoneStrings getInstance]->DOWN]);
    self->LEFT = ((GameKey*) [((GameKey*) [GameKey alloc]) init:(Canvas_staticInit(), Canvas_LEFT) :[CommonPhoneStrings getInstance]->LEFT]);
    self->RIGHT = ((GameKey*) [((GameKey*) [GameKey alloc]) init:(Canvas_staticInit(), Canvas_RIGHT) :[CommonPhoneStrings getInstance]->RIGHT]);
    self->KEY_POUND = ((GameKey*) [((GameKey*) [GameKey alloc]) init:(Canvas_staticInit(), Canvas_KEY_POUND) :"POUND"]);
    self->KEY_STAR = ((GameKey*) [((GameKey*) [GameKey alloc]) init:(Canvas_staticInit(), Canvas_KEY_STAR) :"STAR"]);
    self->KEY_NUM0 = ((GameKey*) [((GameKey*) [GameKey alloc]) init:(Canvas_staticInit(), Canvas_KEY_NUM0) :[CommonPhoneStrings getInstance]->ZERO]);
    self->KEY_NUM1 = ((GameKey*) [((GameKey*) [GameKey alloc]) init:(Canvas_staticInit(), Canvas_KEY_NUM1) :[CommonPhoneStrings getInstance]->ONE]);
    self->KEY_NUM2 = ((GameKey*) [((GameKey*) [GameKey alloc]) init:(Canvas_staticInit(), Canvas_KEY_NUM2) :[CommonPhoneStrings getInstance]->TWO]);
    self->KEY_NUM3 = ((GameKey*) [((GameKey*) [GameKey alloc]) init:(Canvas_staticInit(), Canvas_KEY_NUM3) :[CommonPhoneStrings getInstance]->THREE]);
    self->KEY_NUM4 = ((GameKey*) [((GameKey*) [GameKey alloc]) init:(Canvas_staticInit(), Canvas_KEY_NUM4) :[CommonPhoneStrings getInstance]->FOUR]);
    self->KEY_NUM5 = ((GameKey*) [((GameKey*) [GameKey alloc]) init:(Canvas_staticInit(), Canvas_KEY_NUM5) :[CommonPhoneStrings getInstance]->FIVE]);
    self->KEY_NUM6 = ((GameKey*) [((GameKey*) [GameKey alloc]) init:(Canvas_staticInit(), Canvas_KEY_NUM6) :[CommonPhoneStrings getInstance]->SIX]);
    self->KEY_NUM7 = ((GameKey*) [((GameKey*) [GameKey alloc]) init:(Canvas_staticInit(), Canvas_KEY_NUM7) :[CommonPhoneStrings getInstance]->SEVEN]);
    self->KEY_NUM8 = ((GameKey*) [((GameKey*) [GameKey alloc]) init:(Canvas_staticInit(), Canvas_KEY_NUM8) :[CommonPhoneStrings getInstance]->EIGHT]);
    self->KEY_NUM9 = ((GameKey*) [((GameKey*) [GameKey alloc]) init:(Canvas_staticInit(), Canvas_KEY_NUM9) :[CommonPhoneStrings getInstance]->NINE]);
    self->GAME_A = ((GameKey*) [((GameKey*) [GameKey alloc]) init:(Canvas_staticInit(), Canvas_GAME_A) :"Game A"]);
    self->GAME_B = ((GameKey*) [((GameKey*) [GameKey alloc]) init:(Canvas_staticInit(), Canvas_GAME_B) :"Game B"]);
    self->GAME_C = ((GameKey*) [((GameKey*) [GameKey alloc]) init:(Canvas_staticInit(), Canvas_GAME_C) :"Game C"]);
    self->GAME_D = ((GameKey*) [((GameKey*) [GameKey alloc]) init:(Canvas_staticInit(), Canvas_GAME_D) :"Game D"]);
    self->FIRE = ((GameKey*) [((GameKey*) [GameKey alloc]) init:(Canvas_staticInit(), Canvas_FIRE) :[CommonPhoneStrings getInstance]->FIRE]);
    self->LEVEL_DOWN = ((GameKey*) [((GameKey*) [GameKey alloc]) init:(Canvas_staticInit(), Canvas_KEY_NUM9) + 1 :"Cheat Level Up"]);
    self->LEVEL_UP = ((GameKey*) [((GameKey*) [GameKey alloc]) init:(Canvas_staticInit(), Canvas_KEY_NUM9) + 2 :"Cheat Level Down"]);
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (GameKeyFactory*) getInstance {
        if ((GameKeyFactory_staticInit(), GameKeyFactory_instance) == [NullUtil getInstance]->NULL_OBJECT) {
            GameKeyFactory_instance = ((GameKeyFactory*) [((GameKeyFactory*) [GameKeyFactory alloc]) init]);
        }
        return ((GameKeyFactory*) (GameKeyFactory_staticInit(), GameKeyFactory_instance));
}

@end

