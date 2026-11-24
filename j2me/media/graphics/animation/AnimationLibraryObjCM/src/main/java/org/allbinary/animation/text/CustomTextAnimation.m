// Generated Code Do Not Modify
#include "org/allbinary/animation/text/CustomTextAnimation.h"
#include "javax/microedition/lcdui/Font.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#include "org/allbinary/graphics/font/FontDebugFactory.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/animation/text/TextAnimation.h"
#include "org/allbinary/animation/text/TextInterface.h"
#include "org/allbinary/animation/text/TextChangeListener.h"
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif



void CustomTextAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CustomTextAnimation

- (void) initFields {
    self->fontDebugFactory = [FontDebugFactory getInstance];
    
    
    self->lastText = [StringUtil getInstance]->INIT_STRING;
    self->hasChanged = true;
    self->textWidth = 0;
}


- (instancetype) init:(const char*)text :(int32_t)fontSize :(AnimationBehavior*)animationBehavior {
        self = [super init:text :animationBehavior];
        [self initFields];
        self->fontSize = fontSize;
        self->font = [Font getFont:(Font_staticInit(), Font_FACE_SYSTEM) :(Font_staticInit(), Font_STYLE_PLAIN) :fontSize];
    return self;
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
        [self->myFontProcessor process:graphics];
        Font* existingFont = [graphics getFont];
        [self->fontDebugFactory setFont:self->font :graphics];
        [super paintXYNoUpdate:graphics :x :y];
        [self->fontDebugFactory setFont:existingFont :graphics];
}


- (void) setScale:(float)scaleX :(float)scaleY {
        if (scaleX != scaleY) {
            java_throw(java_exception_new("RuntimeException", ""));
        }
        self->hasChanged = true;
        self->font = [Font getFont:(Font_staticInit(), Font_FACE_SYSTEM) :(Font_staticInit(), Font_STYLE_PLAIN) :((int32_t) (((float) self->fontSize) * scaleX))];
}


- (void) setTextWithOnMeasure:(const char*)text :(TextChangeListener*)textChangeListener {
        [super setTextWithOnMeasure:text :textChangeListener];
}


- (void) setText:(const char*)text {
        if (self->lastText != text) {
            self->hasChanged = true;
            self->lastText = text;
            [super setText:text];
        }
}


- (const char*) getText {
        return self->lastText;
}


- (int32_t) getWidth {
        if (self->hasChanged) {
            self->textWidth = [self->font stringWidth:self->textArrayP[0]];
            self->hasChanged = false;
        }
        return self->textWidth;
}


- (int32_t) getFontHeight {
        return [self->font getHeight];
}

@end

