// Generated Code Do Not Modify
#include "org/allbinary/graphics/font/FontDebugFactory.h"
#include "javax/microedition/lcdui/Font.h"
#include "javax/microedition/lcdui/Graphics.h"


static FontDebugFactory* FontDebugFactory_instance;

void FontDebugFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    FontDebugFactory_instance = [((FontDebugFactory*) [FontDebugFactory alloc]) init];
}

@implementation FontDebugFactory

- (instancetype) init {
    self = [super init];
    return self;
}


+ (FontDebugFactory*) getInstance {
        return (FontDebugFactory_staticInit(), FontDebugFactory_instance);
}


- (void) setFont:(Font*)font :(Graphics*)graphics {
        [graphics setFont:font];
}

@end

