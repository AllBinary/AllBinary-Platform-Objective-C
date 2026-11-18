// Generated Code Do Not Modify
#include "org/allbinary/graphics/Anchor.h"
#include "javax/microedition/lcdui/Graphics.h"


int32_t Anchor_TOP_LEFT;

void Anchor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    Anchor_TOP_LEFT = (Graphics_staticInit(), Graphics_TOP) & (Graphics_staticInit(), Graphics_LEFT);
}

@implementation Anchor

- (instancetype) init {
    self = [super init];
    return self;
}

@end

