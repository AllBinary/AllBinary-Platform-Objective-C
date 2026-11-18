// Generated Code Do Not Modify
#include "org/allbinary/animation/text/CustomTextBox2.h"
#include "javax/microedition/lcdui/CommandListener.h"
#include "javax/microedition/lcdui/Font.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#if __has_include("org/allbinary/animation/text/ABTextFieldItem.h")
#include "org/allbinary/animation/text/ABTextFieldItem.h"
#endif
#if __has_include("javax/microedition/lcdui/ABTextFieldItem.h")
#include "javax/microedition/lcdui/ABTextFieldItem.h"
#endif
#if __has_include("javax/microedition/lcdui/ABTextFieldItem.h")
#include "javax/microedition/lcdui/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/graphics/color/ABTextFieldItem.h")
#include "org/allbinary/graphics/color/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/graphics/form/item/ABTextFieldItem.h")
#include "org/allbinary/graphics/form/item/ABTextFieldItem.h"
#endif



void CustomTextBox2_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CustomTextBox2


- (instancetype) init:(CommandListener*)cmdListener :(const char*)label :(const char*)text :(int32_t)maxSize :(int32_t)constraints :(Font*)font :(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor {
        self = [super init:cmdListener :label :text :maxSize :constraints :font :backgroundBasicColor :foregroundBasicColor];
        [[self getTextFieldItem] setFocus:true];
    return self;
}

@end

