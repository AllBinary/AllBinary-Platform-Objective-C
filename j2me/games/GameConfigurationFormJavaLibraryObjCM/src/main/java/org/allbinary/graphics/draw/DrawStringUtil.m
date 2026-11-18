// Generated Code Do Not Modify
#include "org/allbinary/graphics/draw/DrawStringUtil.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/Anchor.h"
#include "org/allbinary/logic/communication/log/PreLogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"


static DrawStringUtil* DrawStringUtil_instance;

void DrawStringUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    DrawStringUtil_instance = [((DrawStringUtil*) [DrawStringUtil alloc]) init];
}

@implementation DrawStringUtil

- (void) initFields {
    self->EMPTY_STRING = [StringUtil getInstance]->EMPTY_STRING;
    self->anchor = (Anchor_staticInit(), Anchor_TOP_LEFT);
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (DrawStringUtil*) getInstance {
        return (DrawStringUtil_staticInit(), DrawStringUtil_instance);
}


- (void) drawCenterString:(Graphics*)graphics :(const char*)string :(int32_t)offset :(int32_t)length :(int32_t)x :(int32_t)y {
        int32_t width = ([[graphics getFont] substringWidth:string :offset :length] >> 1);
        JAVA_TRY {
            [graphics drawSubstring:string :offset :length :x - width :y :self->anchor];
        } JAVA_CATCH(Exception, e) {
            [PreLogUtil put:[[[[[[[[((StringMaker*) [StringMaker alloc]) init] append:"Exception: stringLength: "] appendint:((int32_t) strlen(string))] append:" offset: "] appendint:offset] append:" currentLength: "] appendint:length] toString] :self :"drawCenterString"];
        } JAVA_END_TRY;
}


- (void) drawCenterStrings:(Graphics*)graphics :(const char**)stringArray :(int32_t)maxWidth :(int32_t)charHeight :(int32_t)x :(int32_t)y {
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
                    [self drawCenterString:graphics :string :offset :currentLength :x :y + ((index + extraLines++) * charHeight)];
                    offset = offset + currentLength;
                    currentLength = linePortion;
                }
                extraLines--;
            }
        }
}

@end

