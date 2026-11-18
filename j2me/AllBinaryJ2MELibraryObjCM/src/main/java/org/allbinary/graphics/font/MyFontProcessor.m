// Generated Code Do Not Modify
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#include "javax/microedition/lcdui/Font.h"
#include "javax/microedition/lcdui/Graphics.h"


static MyFontProcessor* MyFontProcessor_instance;

void MyFontProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    MyFontProcessor_instance = [((MyFontProcessor*) [MyFontProcessor alloc]) init];
}

@implementation MyFontProcessor

- (instancetype) init {
    self = [super init];
    return self;
}


+ (int32_t) defaultCharWidth:(Font*)font {
        return [font charWidth:u'C'];
}


+ (int32_t) defaultStringWidth:(Font*)font :(int32_t)size {
        return [MyFontProcessor defaultCharWidth:font] * size;
}


+ (MyFontProcessor*) getInstance {
        return (MyFontProcessor_staticInit(), MyFontProcessor_instance);
}


- (void) process:(Graphics*)graphics {
}

@end

