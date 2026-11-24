// Generated Code Do Not Modify
#include "org/allbinary/logic/math/PrimitiveLongSingleton.h"
#include "org/allbinary/logic/string/StringMaker.h"
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif


static PrimitiveLongSingleton* PrimitiveLongSingleton_instance;

void PrimitiveLongSingleton_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    PrimitiveLongSingleton_instance = ((PrimitiveLongSingleton*) [((PrimitiveLongSingleton*) [PrimitiveLongSingleton alloc]) init]);
}

@implementation PrimitiveLongSingleton

- (void) initFields {
    self->UNK = ((uint16_t*) java_array_from(sizeof(uint16_t), sizeof((uint16_t[]){ u'U', u'n', u'k' }) / sizeof(uint16_t), (uint16_t[]){ u'U', u'n', u'k' }));
    self->NUMBER_ARRAY = ((int8_t*) java_array_from(sizeof(int8_t), sizeof((int8_t[]){ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 }) / sizeof(int8_t), (int8_t[]){ 0, 1, 2, 3, 4, 5, 6, 7, 8, 9 }));
    self->NUMBER_CHAR_ARRAY = ((uint16_t*) java_array_from(sizeof(uint16_t), sizeof((uint16_t[]){ u'0', u'1', u'2', u'3', u'4', u'5', u'6', u'7', u'8', u'9' }) / sizeof(uint16_t), (uint16_t[]){ u'0', u'1', u'2', u'3', u'4', u'5', u'6', u'7', u'8', u'9' }));
    self->NUMBER_CHAR_ARRAYS = ((uint16_t**) java_array_from(sizeof(uint16_t*), sizeof((uint16_t*[]){ ((uint16_t*) java_array_from(sizeof(uint16_t), sizeof((uint16_t[]){ u'0' }) / sizeof(uint16_t), (uint16_t[]){ u'0' })), ((uint16_t*) java_array_from(sizeof(uint16_t), sizeof((uint16_t[]){ u'1' }) / sizeof(uint16_t), (uint16_t[]){ u'1' })), ((uint16_t*) java_array_from(sizeof(uint16_t), sizeof((uint16_t[]){ u'2' }) / sizeof(uint16_t), (uint16_t[]){ u'2' })), ((uint16_t*) java_array_from(sizeof(uint16_t), sizeof((uint16_t[]){ u'3' }) / sizeof(uint16_t), (uint16_t[]){ u'3' })), ((uint16_t*) java_array_from(sizeof(uint16_t), sizeof((uint16_t[]){ u'4' }) / sizeof(uint16_t), (uint16_t[]){ u'4' })), ((uint16_t*) java_array_from(sizeof(uint16_t), sizeof((uint16_t[]){ u'5' }) / sizeof(uint16_t), (uint16_t[]){ u'5' })), ((uint16_t*) java_array_from(sizeof(uint16_t), sizeof((uint16_t[]){ u'6' }) / sizeof(uint16_t), (uint16_t[]){ u'6' })), ((uint16_t*) java_array_from(sizeof(uint16_t), sizeof((uint16_t[]){ u'7' }) / sizeof(uint16_t), (uint16_t[]){ u'7' })), ((uint16_t*) java_array_from(sizeof(uint16_t), sizeof((uint16_t[]){ u'8' }) / sizeof(uint16_t), (uint16_t[]){ u'8' })), ((uint16_t*) java_array_from(sizeof(uint16_t), sizeof((uint16_t[]){ u'9' }) / sizeof(uint16_t), (uint16_t[]){ u'9' })) }) / sizeof(uint16_t*), (uint16_t*[]){ ((uint16_t*) java_array_from(sizeof(uint16_t), sizeof((uint16_t[]){ u'0' }) / sizeof(uint16_t), (uint16_t[]){ u'0' })), ((uint16_t*) java_array_from(sizeof(uint16_t), sizeof((uint16_t[]){ u'1' }) / sizeof(uint16_t), (uint16_t[]){ u'1' })), ((uint16_t*) java_array_from(sizeof(uint16_t), sizeof((uint16_t[]){ u'2' }) / sizeof(uint16_t), (uint16_t[]){ u'2' })), ((uint16_t*) java_array_from(sizeof(uint16_t), sizeof((uint16_t[]){ u'3' }) / sizeof(uint16_t), (uint16_t[]){ u'3' })), ((uint16_t*) java_array_from(sizeof(uint16_t), sizeof((uint16_t[]){ u'4' }) / sizeof(uint16_t), (uint16_t[]){ u'4' })), ((uint16_t*) java_array_from(sizeof(uint16_t), sizeof((uint16_t[]){ u'5' }) / sizeof(uint16_t), (uint16_t[]){ u'5' })), ((uint16_t*) java_array_from(sizeof(uint16_t), sizeof((uint16_t[]){ u'6' }) / sizeof(uint16_t), (uint16_t[]){ u'6' })), ((uint16_t*) java_array_from(sizeof(uint16_t), sizeof((uint16_t[]){ u'7' }) / sizeof(uint16_t), (uint16_t[]){ u'7' })), ((uint16_t*) java_array_from(sizeof(uint16_t), sizeof((uint16_t[]){ u'8' }) / sizeof(uint16_t), (uint16_t[]){ u'8' })), ((uint16_t*) java_array_from(sizeof(uint16_t), sizeof((uint16_t[]){ u'9' }) / sizeof(uint16_t), (uint16_t[]){ u'9' })) }));
    self->ZERO = ((uint16_t*) java_array_from(sizeof(uint16_t), sizeof((uint16_t[]){ self->NUMBER_CHAR_ARRAY[0] }) / sizeof(uint16_t), (uint16_t[]){ self->NUMBER_CHAR_ARRAY[0] }));
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (PrimitiveLongSingleton*) getInstance {
        return (PrimitiveLongSingleton_staticInit(), PrimitiveLongSingleton_instance);
}


// throws Exception
- (int8_t) getNumberFromChar:(uint16_t)numberAsChar {
        int32_t size = java_array_length(self->NUMBER_CHAR_ARRAY);
        for (int32_t index = 0; index < size; index++) {
            if (self->NUMBER_CHAR_ARRAY[index] == numberAsChar) {
                return self->NUMBER_ARRAY[index];
            }
        }
        java_throw(java_exception_new("Exception", [[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:"numberAsChar was not in array: "] appendchar:numberAsChar] toString]));
}

@end

