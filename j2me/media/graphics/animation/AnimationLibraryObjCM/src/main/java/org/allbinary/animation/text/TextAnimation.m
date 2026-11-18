// Generated Code Do Not Modify
#include "org/allbinary/animation/text/TextAnimation.h"
#include "javax/microedition/lcdui/Font.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#include "org/allbinary/graphics/Anchor.h"
#include "org/allbinary/graphics/font/MyFontProcessor.h"
#include "org/allbinary/graphics/font/UpdateMyFontProcessor.h"
#include "org/allbinary/graphics/threed/SWTJOGLProcessor.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/animation/text/TextChangeListener.h"



void TextAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation TextAnimation

- (void) initFields {
    self->updateMyFontProcessor = [((UpdateMyFontProcessor*) [UpdateMyFontProcessor alloc]) init:self];
    self->myFontProcessor = self->updateMyFontProcessor;
    self->textArrayP = [StringUtil getInstance]->ONE_EMPTY_STRING_ARRAY;
    self->anchor = (Anchor_staticInit(), Anchor_TOP_LEFT);
    self->fontHeight = 0;
    self->offsetY = 0;
    self->textChangeListener = [TextChangeListener getInstance];
}


- (instancetype) init:(const char*)text :(AnimationBehavior*)animationBehavior {
        self = [super init:animationBehavior];
        [self initFields];
        [self setText:text];
    return self;
}


- (void) updateMeasurement:(Graphics*)graphics {
        Font* font = [graphics getFont];
        self->fontHeight = [font getHeight];
        int32_t adjustedFontHeight = ((int32_t) (-(((double) self->fontHeight) * 2.00)));
        self->offsetY = ([[SWTJOGLProcessor getInstance] isJOGL] ? adjustedFontHeight : 0);
        [self->textChangeListener onMeasure];
        self->textChangeListener = [TextChangeListener getInstance];
        self->myFontProcessor = [MyFontProcessor getInstance];
}


// throws Exception
- (void) nextFrame {
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
        [self->myFontProcessor process:graphics];
        [self paintXYNoUpdate:graphics :x :y];
}


- (void) paintXYNoUpdate:(Graphics*)graphics :(int32_t)x :(int32_t)y {
        [self->basicSetColorUtil setBasicColorP3:graphics :[self getBasicColorP] :[self getColor]];
        int32_t size = java_array_length(self->textArrayP);
        for (int32_t index = 0; index < size; index++) {
            [graphics drawString:self->textArrayP[index] :x :y + self->offsetY + (index * self->fontHeight) :self->anchor];
        }
}


- (void) setTextWithOnMeasure:(const char*)text :(TextChangeListener*)textChangeListener {
        [self setText:text];
        self->textChangeListener = textChangeListener;
}


- (void) setText:(const char*)text {
        BasicArrayList* list = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
        if (((int32_t) strlen(text)) > 0) {
            int32_t index = 0;
            int32_t startIndex = 0;
            int32_t endIndex = 0;
            while (index >= 0) {
                startIndex = index;
                index = java_string_indexOf(text, u'\n', startIndex);
                endIndex = index;
                if (index < 0) {
                    endIndex = ((int32_t) strlen(text));
                }
                [list add:java_substring(text, startIndex, endIndex)];
                if (index < 0) {
                    break;
                }
                index++;
            }
        }
        if ([list size] > 0) {
            const char** textArray = ((const char**) java_array_new(sizeof(const char*), [list size]));
            int32_t size = [list size];
            for (int32_t index = 0; index < size; index++) {
                textArray[index] = ((const char*) [list get:index]);
            }
            self->textArrayP = textArray;
        } else {
            self->textArrayP = [StringUtil getInstance]->ONE_EMPTY_STRING_ARRAY;
        }
        self->myFontProcessor = self->updateMyFontProcessor;
}


- (const char**) getTextArray {
        return self->textArrayP;
}


- (int32_t) getFontHeight {
        return self->fontHeight;
}

@end

