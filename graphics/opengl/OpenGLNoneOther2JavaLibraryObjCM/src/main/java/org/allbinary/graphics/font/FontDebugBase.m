// Generated Code Do Not Modify
#include "org/allbinary/graphics/font/FontDebugBase.h"
#include "javax/microedition/lcdui/Font.h"
#include "org/allbinary/logic/string/StringMaker.h"


static FontDebugBase* FontDebugBase_instanceBase;

void FontDebugBase_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    FontDebugBase_instanceBase = [((FontDebugBase*) [FontDebugBase alloc]) init];
}

@implementation FontDebugBase

- (void) initFields {
    self->SET_FONT = "setFont";
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (FontDebugBase*) getInstance {
        return (FontDebugBase_staticInit(), FontDebugBase_instanceBase);
}


- (void) debugMetrics:(Font*)currentFont :(float)convertedTextSize :(id)displayMetrics :(StringMaker*)stringBuffer {
}


- (void) debugDpi:(int32_t)densityDpi :(StringMaker*)stringBuffer {
}


- (void) debugDimension:(Font*)currentFont :(float)convertedTextSize :(int32_t)longestDimensionTotalPixels :(StringMaker*)stringBuffer {
}

@end

