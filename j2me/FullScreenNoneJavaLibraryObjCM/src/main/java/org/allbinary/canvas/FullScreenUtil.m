// Generated Code Do Not Modify
#include "org/allbinary/canvas/FullScreenUtil.h"
#include "javax/microedition/lcdui/Canvas.h"
#include "javax/microedition/lcdui/CommandListener.h"
#include "org/allbinary/game/configuration/feature/Features.h"
#include "org/allbinary/game/configuration/feature/MainFeatureFactory.h"


static FullScreenUtil* FullScreenUtil_instance;

void FullScreenUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    FullScreenUtil_instance = [((FullScreenUtil*) [FullScreenUtil alloc]) init];
}

@implementation FullScreenUtil

- (instancetype) init {
    self = [super init];
    return self;
}


+ (FullScreenUtil*) getInstance {
        return (FullScreenUtil_staticInit(), FullScreenUtil_instance);
}


// throws Exception
- (void) initOnRun:(Canvas*)fullScreenInterface :(CommandListener*)commandListener {
        if (commandListener != nil) {
            [self init_:fullScreenInterface];
        }
}


- (void) init_:(Canvas*)fullScreenInterface {
}


- (bool) isScreenChange:(bool)isFullScreen {
        MainFeatureFactory* mainFeatureFactory = [MainFeatureFactory getInstance];
        Features* features = [Features getInstance];
        if ([features isFeature:mainFeatureFactory->FULL_SCREEN] != isFullScreen) {
            return true;
        }
        return false;
}


- (bool) isScreenChangeCanvas:(Canvas*)fullScreenInterface {
        return [self isScreenChange:false];
}

@end

