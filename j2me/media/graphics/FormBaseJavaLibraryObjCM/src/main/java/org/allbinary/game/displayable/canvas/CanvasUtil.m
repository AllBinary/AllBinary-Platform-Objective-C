// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/CanvasUtil.h"
#include "javax/microedition/lcdui/Canvas.h"
#include "org/allbinary/string/CommonPhoneStrings.h"



void CanvasUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CanvasUtil


- (instancetype) init {
    self = [super init];
    return self;
}


+ (const char*) getKeyName:(int32_t)key {
        CommonPhoneStrings* commonPhoneStrings = [CommonPhoneStrings getInstance];
        if (key == (Canvas_staticInit(), Canvas_UP)) {
            return commonPhoneStrings->UP;
        } else if (key == (Canvas_staticInit(), Canvas_DOWN)) {
            return commonPhoneStrings->DOWN;
        } else if (key == (Canvas_staticInit(), Canvas_RIGHT)) {
            return commonPhoneStrings->RIGHT;
        } else if (key == (Canvas_staticInit(), Canvas_LEFT)) {
            return commonPhoneStrings->LEFT;
        } else if (key == (Canvas_staticInit(), Canvas_FIRE)) {
            return commonPhoneStrings->FIRE;
        }
        return "UNKNOWN KEY";
}

@end

