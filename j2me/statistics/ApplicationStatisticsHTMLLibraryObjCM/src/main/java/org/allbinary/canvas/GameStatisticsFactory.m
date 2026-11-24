// Generated Code Do Not Modify
#include "org/allbinary/canvas/GameStatisticsFactory.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/canvas/BaseGameStatistics.h"
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif


static GameStatisticsFactory* GameStatisticsFactory_instance;

void GameStatisticsFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameStatisticsFactory_instance = ((GameStatisticsFactory*) [((GameStatisticsFactory*) [GameStatisticsFactory alloc]) init]);
}

@implementation GameStatisticsFactory

- (void) initFields {
    self->stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (GameStatisticsFactory*) getInstance {
        return (GameStatisticsFactory_staticInit(), GameStatisticsFactory_instance);
}


- (void) add:(const char*)string {
        if ([self->stringBuffer length] > 12000) {
            [self->stringBuffer delete:0 :[self->stringBuffer length]];
            [self->stringBuffer append:"Old Stats Cleared"];
        }
        [self->stringBuffer append:string];
}


- (const char*) toString {
        return [[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:[super toString]] append:[self->stringBuffer toString]] toString];
}

@end

