// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/AlwaysRepaintBehavior.h"
#include "javax/microedition/lcdui/Canvas.h"
#include "org/allbinary/game/configuration/feature/Features.h"
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#include "org/allbinary/graphics/opengles/OpenGLFeatureFactory.h"
#include "org/allbinary/game/displayable/RepaintBehavior.h"
#include "org/allbinary/game/displayable/RepaintRunnable.h"


static AlwaysRepaintBehavior* AlwaysRepaintBehavior_instanceC;

void AlwaysRepaintBehavior_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    AlwaysRepaintBehavior_instanceC = [((AlwaysRepaintBehavior*) [AlwaysRepaintBehavior alloc]) init];
}

@implementation AlwaysRepaintBehavior

- (void) initFields {
    self->NAME = "AlwaysRepaintBehavior";
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (AlwaysRepaintBehavior*) getInstance {
        return (AlwaysRepaintBehavior_staticInit(), AlwaysRepaintBehavior_instanceC);
}


- (void) repaint:(Canvas*)canvas {
        Features* features = [Features getInstance];
        OpenGLFeatureFactory* openGLFeatureFactory = [OpenGLFeatureFactory getInstance];
        if ([features isFeature:openGLFeatureFactory->OPENGL]) {
            [[DisplayInfoSingleton getInstance] process];
        } else {
            Thread* thread = [((Thread*) [Thread alloc]) init:[((RepaintRunnable*) [RepaintRunnable alloc]) init:canvas] :self->NAME];
            [thread start];
        }
}


- (void) onChangeRepaint:(Canvas*)canvas {
}

@end

