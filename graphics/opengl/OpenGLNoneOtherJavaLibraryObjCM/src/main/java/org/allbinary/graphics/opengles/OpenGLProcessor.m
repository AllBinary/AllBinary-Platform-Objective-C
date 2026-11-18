// Generated Code Do Not Modify
#include "org/allbinary/graphics/opengles/OpenGLProcessor.h"
#include "javax/microedition/khronos/opengles/GL10.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"



void OpenGLProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation OpenGLProcessor

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) process:(GL10*)gl {
}

@end

