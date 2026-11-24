// Generated Code Do Not Modify
#include "org/allbinary/game/GameInfoCopyFactory.h"
#include "org/allbinary/game/GameInfo.h"



void GameInfoCopyFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation GameInfoCopyFactory

- (instancetype) init {
    self = [super init];
    return self;
}


+ (GameInfo*) getInstanceMaxLevel:(GameInfo*)gameInfo :(int32_t)maxLevel {
        return ((GameInfo*) [((GameInfo*) [GameInfo alloc]) init:[gameInfo getGameType] :[gameInfo getGameMode] :[gameInfo getPlayerType] :maxLevel :[gameInfo getCurrentLevel]]);
}


+ (GameInfo*) getInstance:(GameInfo*)gameInfo {
        return ((GameInfo*) [((GameInfo*) [GameInfo alloc]) init:[gameInfo getGameType] :[gameInfo getGameMode] :[gameInfo getPlayerType] :[gameInfo getHighestLevel] :[gameInfo getCurrentLevel]]);
}

@end

