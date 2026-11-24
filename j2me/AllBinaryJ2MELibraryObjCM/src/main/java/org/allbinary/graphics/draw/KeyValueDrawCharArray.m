// Generated Code Do Not Modify
#include "org/allbinary/graphics/draw/KeyValueDrawCharArray.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/logic/java/character/CharArrayFactory.h"
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#include "org/allbinary/graphics/font/UpdateMyFontProcessor.h"
#if __has_include("org/allbinary/logic/java/character/CharArrayFactory.h")
#include "org/allbinary/logic/java/character/CharArrayFactory.h"
#endif
#if __has_include("org/allbinary/graphics/draw/Font.h")
#include "org/allbinary/graphics/draw/Font.h"
#endif
#if __has_include("javax/microedition/lcdui/Font.h")
#include "javax/microedition/lcdui/Font.h"
#endif
#if __has_include("org/allbinary/logic/java/character/Font.h")
#include "org/allbinary/logic/java/character/Font.h"
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



void KeyValueDrawCharArray_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation KeyValueDrawCharArray

- (void) initFields {
    self->myFontProcessor = ((UpdateMyFontProcessor*) [((UpdateMyFontProcessor*) [UpdateMyFontProcessor alloc]) init:self]);
    
    
    self->valueX = 0;
    self->value = [[CharArrayFactory getInstance] getZeroCharArray];
    self->len = 0;
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
        [graphics drawChars:self->value :0 :self->len :self->valueX :y :0];
}


- (void) update:(uint16_t*)value :(int32_t)len {
        self->value = value;
        self->len = len;
}

@end

