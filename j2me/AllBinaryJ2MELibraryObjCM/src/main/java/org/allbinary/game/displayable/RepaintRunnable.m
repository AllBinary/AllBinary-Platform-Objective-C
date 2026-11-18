// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/RepaintRunnable.h"
#include "javax/microedition/lcdui/Canvas.h"
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"



void RepaintRunnable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation RepaintRunnable

- (void) initFields {
    
}


- (instancetype) init:(Canvas*)canvas {
    self = [super init];
    [self initFields];
        self->canvas = canvas;
    return self;
}


- (void) run {
        JAVA_TRY {
            [self->canvas repaint];
            [[DisplayInfoSingleton getInstance] process];
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            LogUtil* logUtil = [LogUtil getInstance];
            [logUtil put:commonStrings->EXCEPTION :self :commonStrings->RUN :e];
        } JAVA_END_TRY;
}

@end

