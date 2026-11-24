// Generated Code Do Not Modify
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/color/BasicColorUtil.h"
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif


static BasicColorFactory* BasicColorFactory_instance;

void BasicColorFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    BasicColorFactory_instance = ((BasicColorFactory*) [((BasicColorFactory*) [BasicColorFactory alloc]) init]);
}

@implementation BasicColorFactory

- (void) initFields {
    self->NULL_COLOR = [self createInstanceARGB:255 :255 :255 :255 :"null color"];
    self->TAN = [self createInstance:0xE9D8B5];
    self->SKIN_PINK = [self createInstance:0xFDCECE];
    self->RED = [self createInstanceAN:[BasicColorUtil getInstance]->ALPHA :0xFF0000 :"red"];
    self->LIGHT_RED = [self createInstanceAN:[BasicColorUtil getInstance]->ALPHA :0xFFA0A0 :"light red"];
    self->DARK_GREEN = [self createInstance:0x00FF00];
    self->GREEN = [self createInstanceAN:[BasicColorUtil getInstance]->ALPHA :0x00DD00 :"green"];
    self->LIGHT_GREEN = [self createInstance:0x007700];
    self->PURPLE = [self createInstanceAN:[BasicColorUtil getInstance]->ALPHA :0x400040 :"purple"];
    self->BLUE = [self createInstanceAN:[BasicColorUtil getInstance]->ALPHA :0x0000FF :"blue"];
    self->LIGHT_BLUE = [self createInstance:0x00aaff];
    self->VERY_LIGHT_BLUE = [self createInstance:0x000033];
    self->PUCE = [self createInstance:0xFF00AA];
    self->AQUA = [self createInstance:0x00FFFF];
    self->YELLOW = [self createInstanceAN:[BasicColorUtil getInstance]->ALPHA :0xFFFF00 :"yellow"];
    self->PINK = [self createInstance:0xFF00FF];
    self->BLACK = [self createInstanceAN:[BasicColorUtil getInstance]->ALPHA :0x000000 :"black"];
    self->GREY = [self createInstanceAN:[BasicColorUtil getInstance]->ALPHA :0xAAAAAA :"grey"];
    self->LIGHT_GREY = [self createInstance:0xC0C0C0];
    self->DARK_GREY = [self createInstance:0x404040];
    self->ORANGE = [self createInstance:0xe07718];
    self->BROWN = [self createInstance:0x956B00];
    self->WHITE = [self createInstance:0xFFFFFF];
    self->TRANSPARENT_COLOR = [self createInstanceAN:0x00000000 :0x000000 :[StringUtil getInstance]->EMPTY_STRING];
    self->TRANSPARENT_GREY = [self createInstanceAN:0x52000000 :0xECECEC :[StringUtil getInstance]->EMPTY_STRING];
    self->TRANSPARENT_BLACK = [self createInstanceAN:0x52000000 :0x000000 :[StringUtil getInstance]->EMPTY_STRING];
    self->TRANSPARENT_RED = [self createInstanceAN:0x52000000 :0xFF0000 :[StringUtil getInstance]->EMPTY_STRING];
    self->CLEAR_COLOR = self->BLACK;
    self->BORDER_COLOR = self->WHITE;
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (BasicColorFactory*) getInstance {
        return (BasicColorFactory_staticInit(), BasicColorFactory_instance);
}


- (BasicColor*) createInstance:(int32_t)value {
        return ((BasicColor*) [((BasicColor*) [BasicColor alloc]) init:[BasicColorUtil getInstance]->ALPHA :value :[StringUtil getInstance]->EMPTY_STRING]);
}


- (BasicColor*) createInstanceA:(int32_t)alphaValue :(int32_t)value {
        return ((BasicColor*) [((BasicColor*) [BasicColor alloc]) init:alphaValue :value :[StringUtil getInstance]->EMPTY_STRING]);
}


- (BasicColor*) createInstanceAN:(int32_t)alphaValue :(int32_t)value :(const char*)name {
        return ((BasicColor*) [((BasicColor*) [BasicColor alloc]) init:alphaValue :value :name]);
}


- (BasicColor*) createInstanceARGB:(int32_t)alphaValue :(int32_t)r :(int32_t)g :(int32_t)b :(const char*)name {
        int32_t ALPHA_MASK = 0xFF000000;
        return ((BasicColor*) [((BasicColor*) [BasicColor alloc]) init:alphaValue :((alphaValue << 24) & ALPHA_MASK) + ((r << 16) & 0x00FF0000) + ((g << 8) & 0x0000FF00) + (b & 0x000000FF) :[StringUtil getInstance]->EMPTY_STRING]);
}

@end

