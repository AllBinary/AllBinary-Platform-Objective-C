// Generated Code Do Not Modify
#include "org/allbinary/game/input/GameInputStrings.h"


static GameInputStrings* GameInputStrings_instance;

void GameInputStrings_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameInputStrings_instance = [((GameInputStrings*) [GameInputStrings alloc]) init];
}

@implementation GameInputStrings

- (void) initFields {
    self->PROCESS_INPUT = "processInput";
    self->KEY_PRESSED = "keyPressed";
    self->KEY_RELEASED = "keyReleased";
    self->KEY_REPEATED = "keyRepeated";
    self->ON_PRESS_GAME_KEY = "onPressGameKeyEvent";
    self->ON_DOWN_GAME_KEY = "onDownGameKeyEvent";
    self->ON_UP_GAME_KEY = "onUpGameKeyEvent";
    self->NO_KEY = "Key Code Not Mapped For Game: ";
    self->ADD_KEY_EVENT = "addGameKeyEvent";
    self->REMOVE_KEY_EVENT = "removeGameKeyEvent";
    self->STRAFE_LEFT = "strafeLeft";
    self->STRAFE_RIGHT = "strafeRight";
    self->PROCESS_MOTION_INPUT = "processMotionInput";
    self->UDPATE_CURRENT_TOUCH_INPUT_FACTORY = "updateCurrentTouchInputFactory";
    self->ENABLE_PLAYER_GAME_INPUTS = "Enabling PlayerGameInputs: ";
    self->ENABLE_PLAYER_GAME_INPUT = "Enabling PlayerGameInput: ";
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (GameInputStrings*) getInstance {
        return (GameInputStrings_staticInit(), GameInputStrings_instance);
}

@end

