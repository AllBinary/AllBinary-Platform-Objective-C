// Generated Code Do Not Modify
#include "org/allbinary/game/midlet/GameMidletStateFactory.h"
#include "org/allbinary/game/state/GameState.h"
#include "org/allbinary/game/state/GameStateFactory.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonLabels.h"


static GameMidletStateFactory* GameMidletStateFactory_INSTANCE;

void GameMidletStateFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameMidletStateFactory_INSTANCE = [((GameMidletStateFactory*) [GameMidletStateFactory alloc]) init];
}

@implementation GameMidletStateFactory

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->currentGameState = [GameStateFactory getInstance]->NO_GAME_STATE;
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (GameMidletStateFactory*) getInstance {
        return (GameMidletStateFactory_staticInit(), GameMidletStateFactory_INSTANCE);
}


- (GameState*) getCurrentGameState {
        return self->currentGameState;
}


- (void) setCurrentGameState:(GameState*)currentGameState {
        [self->logUtil putF:[[[[[((StringMaker*) [StringMaker alloc]) init] append:[CommonLabels getInstance]->CURRENT] append:" GameState: "] append:[[StringUtil getInstance] toString:currentGameState]] toString] :self :"setCurrentGameState"];
        self->currentGameState = currentGameState;
}

@end

