// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/GameCanvasPauseRunnable.h"
#include "org/allbinary/game/configuration/feature/Features.h"
#include "org/allbinary/graphics/opengles/OpenGLFeatureFactory.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/game/displayable/canvas/GameRunnable.h"
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h"
#if __has_include("org/allbinary/graphics/opengles/OpenGLFeatureFactory.h")
#include "org/allbinary/graphics/opengles/OpenGLFeatureFactory.h"
#endif



void GameCanvasPauseRunnable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation GameCanvasPauseRunnable

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    
}


- (instancetype) init:(AllBinaryGameCanvas*)allBinaryGameCanvas {
    self = [super init];
    [self initFields];
        self->allBinaryGameCanvas = allBinaryGameCanvas;
    return self;
}


- (void) run {
}


// throws Exception
- (void) processLoopSleep {
        JAVA_TRY {
            Features* features = [Features getInstance];
            bool isOpenGL = [features isDefault:[OpenGLFeatureFactory getInstance]->OPENGL];
            if (isOpenGL) {
                [self->allBinaryGameCanvas processSleep];
            }
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:commonStrings->EXCEPTION :self :commonStrings->RUN :e];
        } JAVA_END_TRY;
}

@end

