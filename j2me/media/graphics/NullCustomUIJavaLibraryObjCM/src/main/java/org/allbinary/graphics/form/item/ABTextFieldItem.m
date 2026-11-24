// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/item/ABTextFieldItem.h"
#include "javax/microedition/lcdui/Canvas.h"
#include "javax/microedition/lcdui/Font.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/logic/util/visitor/Visitor.h"
#include "org/allbinary/graphics/form/item/ABTextItem.h"
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif



void ABTextFieldItem_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ABTextFieldItem

- (void) initFields {
    
}


- (instancetype) init:(Canvas*)canvas :(Visitor*)visitor :(const char*)label :(const char*)value :(int32_t)maxSize :(int32_t)layout :(const char*)altText :(Font*)font :(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor {
        self = [super init:label :layout :altText :backgroundBasicColor :foregroundBasicColor];
        [self initFields];
        self->font = font;
    return self;
}


- (const char*) getLabel {
        return [StringUtil getInstance]->EMPTY_STRING;
}


- (void) setLabel:(const char*)label {
}


- (const char*) getString {
        return [StringUtil getInstance]->EMPTY_STRING;
}


- (void) setString:(const char*)string {
}


- (void) setFocus:(bool)state {
}


- (int32_t) getFontHeight {
        return [self->font getHeight];
}


- (void) setBackgroundBasicColorP:(BasicColor*)basicColor {
}


- (void) setForegroundBasicColorP:(BasicColor*)basicColor {
}

@end

