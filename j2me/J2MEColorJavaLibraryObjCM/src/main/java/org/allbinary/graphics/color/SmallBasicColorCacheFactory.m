// Generated Code Do Not Modify
#include "org/allbinary/graphics/color/SmallBasicColorCacheFactory.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"


static SmallBasicColorCacheFactory* SmallBasicColorCacheFactory_instance;

void SmallBasicColorCacheFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    SmallBasicColorCacheFactory_instance = [((SmallBasicColorCacheFactory*) [SmallBasicColorCacheFactory alloc]) init];
}

@implementation SmallBasicColorCacheFactory

- (void) initFields {
    self->SIZE = 255;
    self->INDEX_TO_COLOR = ((int32_t*) java_array_new(sizeof(int32_t), self->SIZE));
    self->BASIC_COLOR_ARRAY = ((BasicColor**) java_array_new(sizeof(BasicColor*), self->SIZE));
    self->colorIndex = 0;
}


+ (SmallBasicColorCacheFactory*) getInstance {
        return (SmallBasicColorCacheFactory_staticInit(), SmallBasicColorCacheFactory_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) add:(BasicColor*)basicDefaultColor {
        self->BASIC_COLOR_ARRAY[self->colorIndex] = basicDefaultColor;
        self->INDEX_TO_COLOR[self->colorIndex] = [basicDefaultColor intValue];
        self->colorIndex++;
}


- (BasicColor*) getAndOrCreate:(int32_t)colorAsInt {
        BasicColor* basicColor = nullptr;
        for (int32_t index = 0; index < self->SIZE; index++) {
            if (self->INDEX_TO_COLOR[index] == colorAsInt) {
                return self->BASIC_COLOR_ARRAY[index];
            }
        }
        int32_t ALPHA_MASK = 0xFF000000;
        basicColor = [[BasicColorFactory getInstance] createInstanceAN:colorAsInt & ALPHA_MASK :colorAsInt & 0x00FFFFFF :[StringUtil getInstance]->EMPTY_STRING];
        [self add:basicColor];
        return basicColor;
}

@end

