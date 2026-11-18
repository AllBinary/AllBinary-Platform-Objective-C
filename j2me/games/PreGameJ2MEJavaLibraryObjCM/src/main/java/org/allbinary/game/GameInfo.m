// Generated Code Do Not Modify
#include "org/allbinary/game/GameInfo.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/logic/StdUtil.h"
#include "org/allbinary/string/CommonLabels.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/game/GameTypeFactory.h"
#include "org/allbinary/game/GameMode.h"
#include "org/allbinary/game/PlayerTypesFactory.h"
#include "org/allbinary/game/GameInfoData.h"
#include "org/allbinary/game/GameType.h"
#include "org/allbinary/game/PlayerType.h"


GameInfo* GameInfo_NONE;
const char* GameInfo_LEVEL_NAME = "LEVEL";

void GameInfo_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameInfo_NONE = [((GameInfo*) [GameInfo alloc]) init:[GameTypeFactory getInstance]->NONE :(GameMode_staticInit(), GameMode_NONE) :[PlayerTypesFactory getInstance]->PLAYER_TYPE_ONE :-1 :-1];
}

@implementation GameInfo

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->gameInfoData = [GameInfoData getInstance];
    
    
    
    self->highestLevel = 0;
    
    self->NEW_LEVEL = "New Level: ";
    self->SET_CURRENT_LEVEL = "setCurrentLevel";
    self->NEXT_GAME_LEVEL = "nextGameLevel";
}


- (instancetype) init:(GameType*)gameType :(GameMode*)gameMode :(PlayerType*)playerType :(int32_t)highestLevel :(int32_t)currentLevel {
    self = [super init];
    [self initFields];
        self->gameType = gameType;
        self->gameMode = gameMode;
        [self setHighestLevel:highestLevel];
        self->currentLevel = currentLevel;
        self->playerType = playerType;
    return self;
}


- (GameType*) getGameType {
        return self->gameType;
}


- (GameMode*) getGameMode {
        return self->gameMode;
}


- (PlayerType*) getPlayerType {
        return self->playerType;
}


- (int32_t) getHighestLevel {
        return self->highestLevel;
}


- (void) setHighestLevel:(int32_t)highestLevel {
        self->highestLevel = highestLevel;
}


- (int32_t) getCurrentLevel {
        return self->currentLevel;
}


- (void) setCurrentLevel:(int32_t)currentLevel {
        self->currentLevel = currentLevel;
        [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:self->NEW_LEVEL] appendint:[self getCurrentLevel]] toString] :self :self->SET_CURRENT_LEVEL];
}


- (void) nextGameLevel {
        if ([self getCurrentLevel] < [self getHighestLevel]) {
            self->currentLevel++;
        }
        [self->logUtil putF:[[[[[[((StringMaker*) [StringMaker alloc]) init] append:[CommonLabels getInstance]->NEXT] append:[CommonSeps getInstance]->SPACE] append:self->NEW_LEVEL] appendint:[self getCurrentLevel]] toString] :self :self->NEXT_GAME_LEVEL];
}


- (void) previousGameLevel {
        if ([self getCurrentLevel] > 1) {
            self->currentLevel--;
        }
}


- (bool) isLastLevel {
        if ([self getCurrentLevel] >= [self getHighestLevel]) {
            return true;
        } else {
            return false;
        }
}


- (ABHashtable*) toHashtable {
        ABHashtable* hashtable = [[StdUtil getInstance] createHashtable];
        [hashtable put:JAVA_BOX(self->gameInfoData->GAME_TYPE) :JAVA_BOX([[self getGameType] toString])];
        [hashtable put:JAVA_BOX(self->gameInfoData->GAME_MODE) :JAVA_BOX([self->gameMode toString])];
        [hashtable put:JAVA_BOX(self->gameInfoData->PLAYER_TYPE) :JAVA_BOX([self->playerType toString])];
        [hashtable put:JAVA_BOX(self->gameInfoData->HIGHEST_LEVEL) :JAVA_BOX(java_string_of([self getHighestLevel]))];
        [hashtable put:JAVA_BOX(self->gameInfoData->CURRENT_LEVEL) :JAVA_BOX(java_string_of(self->currentLevel))];
        return hashtable;
}


- (const char*) toString {
        StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
        CommonSeps* commonSeps = [CommonSeps getInstance];
        [stringBuffer append:self->gameInfoData->GAME_TYPE];
        [stringBuffer append:commonSeps->EQUALS];
        [stringBuffer append:[[self getGameType] toString]];
        [stringBuffer append:commonSeps->COMMA_SEP];
        [stringBuffer append:self->gameInfoData->GAME_MODE];
        [stringBuffer append:commonSeps->EQUALS];
        [stringBuffer append:[self->gameMode toString]];
        [stringBuffer append:commonSeps->COMMA_SEP];
        [stringBuffer append:self->gameInfoData->PLAYER_TYPE];
        [stringBuffer append:commonSeps->EQUALS];
        [stringBuffer append:[[StringUtil getInstance] toString:self->playerType]];
        [stringBuffer append:commonSeps->COMMA_SEP];
        [stringBuffer append:self->gameInfoData->HIGHEST_LEVEL];
        [stringBuffer append:commonSeps->EQUALS];
        [stringBuffer appendint:[self getHighestLevel]];
        [stringBuffer append:commonSeps->COMMA_SEP];
        [stringBuffer append:self->gameInfoData->CURRENT_LEVEL];
        [stringBuffer append:commonSeps->EQUALS];
        [stringBuffer appendint:self->currentLevel];
        return [stringBuffer toString];
}

@end

