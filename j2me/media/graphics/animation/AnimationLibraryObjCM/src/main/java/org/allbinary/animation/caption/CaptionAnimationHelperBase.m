// Generated Code Do Not Modify
#include "org/allbinary/animation/caption/CaptionAnimationHelperBase.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/color/BasicColor.h"


CaptionAnimationHelperBase* CaptionAnimationHelperBase_INSTANCE;

void CaptionAnimationHelperBase_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    CaptionAnimationHelperBase_INSTANCE = [((CaptionAnimationHelperBase*) [CaptionAnimationHelperBase alloc]) init];
}

@implementation CaptionAnimationHelperBase

- (instancetype) init {
    self = [super init];
    return self;
}


- (bool) isShowing {
        return false;
}


- (void) tick {
}


- (void) update:(const char*)message :(BasicColor*)basicColor {
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
}

@end

