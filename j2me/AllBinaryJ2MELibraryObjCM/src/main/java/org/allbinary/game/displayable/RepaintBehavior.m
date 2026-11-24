// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/RepaintBehavior.h"
#include "javax/microedition/lcdui/Canvas.h"
#include "org/allbinary/game/configuration/feature/Features.h"
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#include "org/allbinary/graphics/opengles/OpenGLFeatureFactory.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/game/displayable/RepaintRunnable.h"
#if __has_include("org/allbinary/graphics/displayable/DisplayInfoSingleton.h")
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#endif


static RepaintBehavior* RepaintBehavior_instance;

void RepaintBehavior_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    RepaintBehavior_instance = ((RepaintBehavior*) [((RepaintBehavior*) [RepaintBehavior alloc]) init]);
}

@implementation RepaintBehavior

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->NAME = "RepaintBehavior";
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (RepaintBehavior*) getInstance {
        return (RepaintBehavior_staticInit(), RepaintBehavior_instance);
}


- (void) repaint:(Canvas*)canvas {
}


- (void) onChangeRepaint:(Canvas*)canvas {
        Features* features = [Features getInstance];
        OpenGLFeatureFactory* openGLFeatureFactory = [OpenGLFeatureFactory getInstance];
        if ([features isFeature:openGLFeatureFactory->OPENGL]) {
            [[DisplayInfoSingleton getInstance] process];
        } else {
            Thread* thread = ((Thread*) [((Thread*) [Thread alloc]) init:((RepaintRunnable*) [((RepaintRunnable*) [RepaintRunnable alloc]) init:canvas]) :self->NAME]);
            [thread start];
        }
}

@end

