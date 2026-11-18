// Generated Code Do Not Modify
#include "org/allbinary/animation/text/CustomTextBoxIndexedAnimation.h"
#include "javax/microedition/lcdui/Font.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/form/item/CustomTextBox.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/animation/text/TextInterface.h"
#include "org/allbinary/animation/text/TextChangeListener.h"
#if __has_include("org/allbinary/animation/text/ABTextFieldItem.h")
#include "org/allbinary/animation/text/ABTextFieldItem.h"
#endif
#if __has_include("javax/microedition/lcdui/ABTextFieldItem.h")
#include "javax/microedition/lcdui/ABTextFieldItem.h"
#endif
#if __has_include("javax/microedition/lcdui/ABTextFieldItem.h")
#include "javax/microedition/lcdui/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/animation/ABTextFieldItem.h")
#include "org/allbinary/animation/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/animation/ABTextFieldItem.h")
#include "org/allbinary/animation/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/game/input/event/ABTextFieldItem.h")
#include "org/allbinary/game/input/event/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/graphics/color/ABTextFieldItem.h")
#include "org/allbinary/graphics/color/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/graphics/font/ABTextFieldItem.h")
#include "org/allbinary/graphics/font/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/graphics/form/item/ABTextFieldItem.h")
#include "org/allbinary/graphics/form/item/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/logic/string/ABTextFieldItem.h")
#include "org/allbinary/logic/string/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/animation/text/ABTextFieldItem.h")
#include "org/allbinary/animation/text/ABTextFieldItem.h"
#endif
#if __has_include("javax/microedition/lcdui/ABTextFieldItem.h")
#include "javax/microedition/lcdui/ABTextFieldItem.h"
#endif
#if __has_include("javax/microedition/lcdui/ABTextFieldItem.h")
#include "javax/microedition/lcdui/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/animation/ABTextFieldItem.h")
#include "org/allbinary/animation/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/animation/ABTextFieldItem.h")
#include "org/allbinary/animation/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/game/input/event/ABTextFieldItem.h")
#include "org/allbinary/game/input/event/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/graphics/color/ABTextFieldItem.h")
#include "org/allbinary/graphics/color/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/graphics/font/ABTextFieldItem.h")
#include "org/allbinary/graphics/font/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/graphics/form/item/ABTextFieldItem.h")
#include "org/allbinary/graphics/form/item/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/logic/string/ABTextFieldItem.h")
#include "org/allbinary/logic/string/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/animation/text/ABTextFieldItem.h")
#include "org/allbinary/animation/text/ABTextFieldItem.h"
#endif
#if __has_include("javax/microedition/lcdui/ABTextFieldItem.h")
#include "javax/microedition/lcdui/ABTextFieldItem.h"
#endif
#if __has_include("javax/microedition/lcdui/ABTextFieldItem.h")
#include "javax/microedition/lcdui/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/animation/ABTextFieldItem.h")
#include "org/allbinary/animation/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/animation/ABTextFieldItem.h")
#include "org/allbinary/animation/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/game/input/event/ABTextFieldItem.h")
#include "org/allbinary/game/input/event/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/graphics/color/ABTextFieldItem.h")
#include "org/allbinary/graphics/color/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/graphics/font/ABTextFieldItem.h")
#include "org/allbinary/graphics/font/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/graphics/form/item/ABTextFieldItem.h")
#include "org/allbinary/graphics/form/item/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/logic/string/ABTextFieldItem.h")
#include "org/allbinary/logic/string/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/animation/text/ABTextFieldItem.h")
#include "org/allbinary/animation/text/ABTextFieldItem.h"
#endif
#if __has_include("javax/microedition/lcdui/ABTextFieldItem.h")
#include "javax/microedition/lcdui/ABTextFieldItem.h"
#endif
#if __has_include("javax/microedition/lcdui/ABTextFieldItem.h")
#include "javax/microedition/lcdui/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/animation/ABTextFieldItem.h")
#include "org/allbinary/animation/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/animation/ABTextFieldItem.h")
#include "org/allbinary/animation/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/game/input/event/ABTextFieldItem.h")
#include "org/allbinary/game/input/event/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/graphics/color/ABTextFieldItem.h")
#include "org/allbinary/graphics/color/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/graphics/font/ABTextFieldItem.h")
#include "org/allbinary/graphics/font/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/graphics/form/item/ABTextFieldItem.h")
#include "org/allbinary/graphics/form/item/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/logic/string/ABTextFieldItem.h")
#include "org/allbinary/logic/string/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/animation/text/ABTextFieldItem.h")
#include "org/allbinary/animation/text/ABTextFieldItem.h"
#endif
#if __has_include("javax/microedition/lcdui/ABTextFieldItem.h")
#include "javax/microedition/lcdui/ABTextFieldItem.h"
#endif
#if __has_include("javax/microedition/lcdui/ABTextFieldItem.h")
#include "javax/microedition/lcdui/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/animation/ABTextFieldItem.h")
#include "org/allbinary/animation/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/animation/ABTextFieldItem.h")
#include "org/allbinary/animation/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/game/input/event/ABTextFieldItem.h")
#include "org/allbinary/game/input/event/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/graphics/color/ABTextFieldItem.h")
#include "org/allbinary/graphics/color/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/graphics/font/ABTextFieldItem.h")
#include "org/allbinary/graphics/font/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/graphics/form/item/ABTextFieldItem.h")
#include "org/allbinary/graphics/form/item/ABTextFieldItem.h"
#endif
#if __has_include("org/allbinary/logic/string/ABTextFieldItem.h")
#include "org/allbinary/logic/string/ABTextFieldItem.h"
#endif



void CustomTextBoxIndexedAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CustomTextBoxIndexedAnimation

- (void) initFields {
    
    self->lastText = [StringUtil getInstance]->INIT_STRING;
    self->hasChanged = true;
    self->textChangeListener = [TextChangeListener getInstance];
}


- (instancetype) init:(CustomTextBox*)customTextBox {
        self = [super init:[AnimationBehavior getInstance]];
        [self initFields];
        self->customTextBox = customTextBox;
    return self;
}


- (void) setBasicColorP:(BasicColor*)basicColor {
        [[self->customTextBox getTextFieldItem] setForegroundBasicColorP:basicColor];
}


- (void) setBackgroundBasicColorP:(BasicColor*)basicColor {
        [[self->customTextBox getTextFieldItem] setBackgroundBasicColorP:basicColor];
}


- (void) setTextWithOnMeasure:(const char*)text :(TextChangeListener*)textChangeListener {
        [self setText:text];
        self->textChangeListener = textChangeListener;
}


- (void) updateMeasurement:(Graphics*)graphics {
        Font* font = [graphics getFont];
        [self->textChangeListener onMeasure];
        self->textChangeListener = [TextChangeListener getInstance];
}


- (void) setText:(const char*)text {
        if (self->lastText != text) {
            self->hasChanged = true;
            self->lastText = text;
            [[self->customTextBox getTextFieldItem] setString:text];
        }
}


- (const char*) getText {
        return [[self->customTextBox getTextFieldItem] getString];
}


- (void) onEventRaw:(int32_t)keyCode :(int32_t)deviceId :(bool)repeated {
        [self->customTextBox onEventRaw:keyCode :deviceId :repeated];
}


- (int32_t) getFontHeight {
        return [[self->customTextBox getTextFieldItem] getFontHeight];
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
        [self->customTextBox paintXY:graphics :x :y];
}


- (void) paintThreedXYZ:(Graphics*)graphics :(int32_t)x :(int32_t)y :(int32_t)z {
}


- (int32_t) getWidth {
        return [super getWidth];
}

@end

