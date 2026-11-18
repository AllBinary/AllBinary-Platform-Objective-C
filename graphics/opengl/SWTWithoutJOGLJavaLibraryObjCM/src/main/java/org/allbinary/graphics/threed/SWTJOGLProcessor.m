// Generated Code Do Not Modify
#include "org/allbinary/graphics/threed/SWTJOGLProcessor.h"
#include "javax/microedition/lcdui/Font.h"
#include "javax/microedition/midlet/MIDlet.h"
#include "org/allbinary/graphics/threed/GLHolder.h"
#include "org/allbinary/graphics/threed/RatioProcessor.h"


static SWTJOGLProcessor* SWTJOGLProcessor_instance;

void SWTJOGLProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    SWTJOGLProcessor_instance = [((SWTJOGLProcessor*) [SWTJOGLProcessor alloc]) init];
}

@implementation SWTJOGLProcessor

- (void) initFields {
    self->glHolder = [((GLHolder*) [GLHolder alloc]) init]
#if 0 /* Java anonymous class body: implement it as a named subclass */
        

    - (void) run:(id)renderer {
    }
#endif
;
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (SWTJOGLProcessor*) getInstance {
        return (SWTJOGLProcessor_staticInit(), SWTJOGLProcessor_instance);
}


- (void) init_:(id)display :(id)comp {
}


- (bool) isHolderCreated {
        return self->glHolder->isCreated;
}


- (void) setRenderer:(id)renderer {
}


- (bool) isJOGL {
        return false;
}


- (void) createSurface {
}


- (void) onSurfaceCreated {
}


- (void) onSurfaceChangedForEvent:(id)event {
}


- (void) onSurfaceChanged {
}


- (void) onSurfaceChangedWH:(int32_t)width :(int32_t)height {
}


- (void) addListener {
}


- (void) addListeners:(MIDlet*)midlet {
}


- (void) run {
}


- (void) clear {
}


- (void) setCustom:(int32_t)width :(int32_t)height :(float)ratio {
}


- (void) setRatioProcessor:(RatioProcessor*)ratioProcessor {
}


- (int32_t) charWidth:(Font*)font :(uint16_t)ch {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (int32_t) charsWidth:(Font*)font :(uint16_t*)ch :(int32_t)offset :(int32_t)length {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (int32_t) stringWidth:(Font*)font :(const char*)str {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (int32_t) substringWidth:(Font*)font :(const char*)str :(int32_t)offset :(int32_t)len {
        java_throw(java_exception_new("RuntimeException", ""));
}

@end

