// Generated Code Do Not Modify
#include "org/allbinary/device/OpenGLESGraphics.h"
#include "javax/microedition/khronos/opengles/GL.h"
#include "javax/microedition/khronos/opengles/GL10.h"
#include "javax/microedition/lcdui/Font.h"
#include "org/allbinary/graphics/font/FontDebugBase.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/device/GraphicsInterface.h"
#include "org/allbinary/device/NullGL10.h"



void OpenGLESGraphics_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation OpenGLESGraphics

- (void) initFields {
    self->commonStrings = [CommonStrings getInstance];
    self->gl = (NullGL10_staticInit(), NullGL10_NULL_GL10);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) updateGL:(GL*)gl {
}


- (void) set:(GL*)gl {
}


// throws Exception
- (void) initMethod {
}


// throws Exception
- (void) update {
}


- (void) setOrthoginalMode {
}


- (void) setCameraMode {
}


- (GL10*) getGl10 {
        return self->gl;
}


- (void) setFontDebug:(Font*)font :(FontDebugBase*)fontDebug {
        java_throw(java_exception_new("RuntimeException", ""));
}

@end

