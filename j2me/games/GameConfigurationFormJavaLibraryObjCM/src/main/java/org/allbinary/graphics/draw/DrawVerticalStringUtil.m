// Generated Code Do Not Modify
#include "org/allbinary/graphics/draw/DrawVerticalStringUtil.h"
#include "javax/microedition/lcdui/Font.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/AndroidUtil.h"
#include "org/allbinary/J2MEUtil.h"
#include "org/allbinary/graphics/Anchor.h"
#include "org/allbinary/graphics/opengles/OpenGLFeatureUtil.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/communication/log/PreLogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"


static DrawVerticalStringUtil* DrawVerticalStringUtil_instance;

void DrawVerticalStringUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    DrawVerticalStringUtil_instance = [((DrawVerticalStringUtil*) [DrawVerticalStringUtil alloc]) init];
}

@implementation DrawVerticalStringUtil

- (void) initFields {
    self->EMPTY_STRING = [StringUtil getInstance]->EMPTY_STRING;
    self->anchor = (Anchor_staticInit(), Anchor_TOP_LEFT);
    self->charHeight = 0;
    self->offsetY = 0;
    self->offsetXArray = [NullUtil getInstance]->NULL_INT_ARRAY;
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (DrawVerticalStringUtil*) getInstance {
        return (DrawVerticalStringUtil_staticInit(), DrawVerticalStringUtil_instance);
}


- (void) updateMeasurement:(Graphics*)graphics :(const char*)string {
        OpenGLFeatureUtil* openGLFeatureUtil = [OpenGLFeatureUtil getInstance];
        Font* font = [graphics getFont];
        self->charHeight = [font getHeight];
        self->offsetY = 0;
        if ([J2MEUtil isHTML]) {
            self->charHeight += 1;
        } else if ([openGLFeatureUtil isAnyThreed]) {
            self->charHeight += 2;
            if ([AndroidUtil isAndroid]) {
            } else {
                self->offsetY = 2 + (self->charHeight * 2 / 3);
            }
        }
        int32_t size = ((int32_t) strlen(string));
        uint16_t aChar = 0;
        int32_t* offsetXArray = ((int32_t*) java_array_new(sizeof(int32_t), size));
        for (int32_t index = size - 1; index >= 0; index--) {
            aChar = ((uint16_t) string[index]);
            if ([openGLFeatureUtil isAnyThreed]) {
                offsetXArray[index] = [font charWidth:aChar] / 2;
            }
        }
        self->offsetXArray = offsetXArray;
}


- (void) paintVerticle:(Graphics*)graphics :(const char*)string :(int32_t)x :(int32_t)y :(int32_t)anchor {
        int32_t size = ((int32_t) strlen(string));
        uint16_t aChar = 0;
        for (int32_t index = size - 1; index >= 0; index--) {
            aChar = ((uint16_t) string[index]);
            [graphics drawChar:aChar :x + self->offsetXArray[index] :y + (self->charHeight * index) + self->offsetY :anchor];
        }
}


- (void) drawCenterString:(Graphics*)graphics :(const char*)string :(int32_t)offset :(int32_t)length :(int32_t)x :(int32_t)y {
        int32_t width = ([[graphics getFont] substringWidth:string :offset :length] >> 1);
        JAVA_TRY {
            [graphics drawSubstring:string :offset :length :x - width :y :self->anchor];
        } JAVA_CATCH(Exception, e) {
            [PreLogUtil put:[[[[[[[[((StringMaker*) [StringMaker alloc]) init] append:"Exception: stringLength: "] appendint:((int32_t) strlen(string))] append:" offset: "] appendint:offset] append:" currentLength: "] appendint:length] toString] :self :"drawCenterString"];
        } JAVA_END_TRY;
}


- (void) drawCenterStrings:(Graphics*)graphics :(const char**)stringArray :(int32_t)maxWidth :(int32_t)x :(int32_t)y {
        int32_t extraLines = 0;
        for (int32_t index = 0; index < java_array_length(stringArray); index++) {
            const char* string = stringArray[index];
            if (string != self->EMPTY_STRING) {
                int32_t width = [[graphics getFont] stringWidth:string];
                int32_t minTotalLines = 1;
                if (width > maxWidth) {
                    minTotalLines = (width / maxWidth) + 1;
                }
                int32_t linePortion = ((int32_t) strlen(string)) / minTotalLines;
                int32_t offset = 0;
                int32_t currentLength = linePortion;
                int32_t size = ((int32_t) strlen(string));
                while (offset < size) {
                    if (offset + currentLength > size) {
                        currentLength = size - offset;
                    }
                    if (offset + currentLength != size) {
                        while (currentLength > 0 && [stringArray[index] charAt:offset + currentLength] != u' ') {
                            currentLength--;
                        }
                        if (currentLength <= 4) {
                            currentLength = linePortion;
                        }
                    }
                    [self drawCenterString:graphics :string :offset :currentLength :x :y + ((index + extraLines++) * self->charHeight)];
                    offset = offset + currentLength;
                    currentLength = linePortion;
                }
                extraLines--;
            }
        }
}

@end

