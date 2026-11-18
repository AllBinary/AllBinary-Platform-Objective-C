// Generated Code Do Not Modify
#include "org/allbinary/game/input/event/GameKeyEventUtil.h"
#include "org/allbinary/game/input/event/GameKeyEvent.h"



void GameKeyEventUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation GameKeyEventUtil


- (instancetype) init {
    self = [super init];
    return self;
}


+ (int32_t) getKey:(id)anyType {
        GameKeyEvent* gameKeyEvent = ((GameKeyEvent*) anyType);
        return [gameKeyEvent getKey];
}

@end

