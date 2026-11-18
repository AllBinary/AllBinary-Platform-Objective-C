// Generated Code Do Not Modify
#include "org/allbinary/game/score/HighScores.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonLabels.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/game/score/HighScoresInterface.h"
#include "org/allbinary/game/score/HighScore.h"



void HighScores_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation HighScores

- (void) initFields {
    self->orderedHighScoresList = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
    
    
    self->columnOneHeading = "Name";
    
}


- (instancetype) init:(const char*)name :(const char*)heading :(const char*)columnTwoHeading {
    self = [super init];
    [self initFields];
        self->name = name;
        self->heading = heading;
        self->columnTwoHeading = columnTwoHeading;
    return self;
}


- (void) setList:(BasicArrayList*)orderedHighScoresList {
        self->orderedHighScoresList = orderedHighScoresList;
}


- (BasicArrayList*) getList {
        return self->orderedHighScoresList;
}


- (const char*) getName {
        return self->name;
}


- (int32_t) getTotal {
        return [[self getList] size];
}


- (void) addHighScore:(HighScore*)newHighScore {
        [self->orderedHighScoresList add:newHighScore];
}


- (const char*) getHeading {
        return self->heading;
}


- (const char*) getColumnOneHeading {
        return self->columnOneHeading;
}


- (const char*) getColumnTwoHeading {
        return self->columnTwoHeading;
}


// throws Exception
- (bool) isBestScore:(HighScore*)newHighScore {
        return false;
}


- (const char*) toString {
        StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
        [stringBuffer append:"HighScores: "];
        [stringBuffer append:self->heading];
        [stringBuffer append:[CommonSeps getInstance]->SPACE];
        [stringBuffer append:[CommonLabels getInstance]->TOTAL_LABEL];
        [stringBuffer appendint:[self->orderedHighScoresList size]];
        return [stringBuffer toString];
}

@end

