// Generated Code Do Not Modify
#include "org/allbinary/image/PreResourceImageUtil.h"
#include "javax/microedition/khronos/opengles/GL.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "javax/microedition/lcdui/Image.h"


static PreResourceImageUtil* PreResourceImageUtil_instance;

void PreResourceImageUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    PreResourceImageUtil_instance = ((PreResourceImageUtil*) [((PreResourceImageUtil*) [PreResourceImageUtil alloc]) init]);
}

@implementation PreResourceImageUtil

- (instancetype) init {
    self = [super init];
    return self;
}


+ (PreResourceImageUtil*) getInstance {
        return (PreResourceImageUtil_staticInit(), PreResourceImageUtil_instance);
}


- (Image*) encapsulate:(Image*)image {
        return image;
}


- (void) updateGL:(GL*)gl :(Image*)image {
}


- (void) update:(Graphics*)graphics :(Image*)image {
}

@end

