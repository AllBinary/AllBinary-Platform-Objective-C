// Generated Code Do Not Modify
#include "org/allbinary/graphics/draw/KeyValueDrawString.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#include "org/allbinary/graphics/font/UpdateMyFontProcessor.h"
#include "org/allbinary/logic/string/StringUtil.h"
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/graphics/draw/Font.h")
#include "org/allbinary/graphics/draw/Font.h"
#endif
#if __has_include("javax/microedition/lcdui/Font.h")
#include "javax/microedition/lcdui/Font.h"
#endif
#if __has_include("org/allbinary/graphics/font/Font.h")
#include "org/allbinary/graphics/font/Font.h"
#endif
#if __has_include("org/allbinary/graphics/font/Font.h")
#include "org/allbinary/graphics/font/Font.h"
#endif
#if __has_include("org/allbinary/graphics/font/Font.h")
#include "org/allbinary/graphics/font/Font.h"
#endif
#if __has_include("org/allbinary/logic/string/Font.h")
#include "org/allbinary/logic/string/Font.h"
#endif



void KeyValueDrawString_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation KeyValueDrawString

- (void) initFields {
    self->myFontProcessor = ((UpdateMyFontProcessor*) [((UpdateMyFontProcessor*) [UpdateMyFontProcessor alloc]) init:self]);
    
    
    self->valueX = 0;
    self->value = [StringUtil getInstance]->EMPTY_STRING;
}


- (instancetype) init:(const char*)label :(int32_t)x {
    self = [super init];
    [self initFields];
        self->LABEL = label;
        self->labelX = x;
    return self;
}


- (void) updateMeasurement:(Graphics*)graphics {
        int32_t labelWidth = [[graphics getFont] stringWidth:self->LABEL] - ((int32_t) strlen(self->LABEL));
        self->valueX = labelWidth + self->labelX;
        self->myFontProcessor = [MyFontProcessor getInstance];
}


- (void) paint:(Graphics*)graphics :(int32_t)y {
        [self->myFontProcessor process:graphics];
        [graphics drawString:self->LABEL :self->labelX :y :0];
        [graphics drawString:self->value :self->valueX :y :0];
}


- (void) update:(const char*)value {
        self->value = value;
}

@end

