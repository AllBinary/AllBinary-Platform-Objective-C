// Generated Code Do Not Modify
#include "org/allbinary/game/input/GameKeyUtil.h"
#include "javax/microedition/lcdui/Canvas.h"


static GameKeyUtil* GameKeyUtil_instance;

void GameKeyUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameKeyUtil_instance = ((GameKeyUtil*) [((GameKeyUtil*) [GameKeyUtil alloc]) init]);
}

@implementation GameKeyUtil

- (instancetype) init {
    self = [super init];
    return self;
}


- (bool) isDirectionKey:(int32_t)key {
        if (key == (Canvas_staticInit(), Canvas_UP) || key == (Canvas_staticInit(), Canvas_DOWN) || key == (Canvas_staticInit(), Canvas_LEFT) || key == (Canvas_staticInit(), Canvas_RIGHT)) {
            return true;
        } else {
            return false;
        }
}


+ (GameKeyUtil*) getInstance {
        return (GameKeyUtil_staticInit(), GameKeyUtil_instance);
}

@end

