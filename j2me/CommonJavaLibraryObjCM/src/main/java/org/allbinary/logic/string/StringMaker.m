// Generated Code Do Not Modify
#include "org/allbinary/logic/string/StringMaker.h"



void StringMaker_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation StringMaker

- (void) initFields {
    
    self->currentLength = 0;
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        self->charArray = ((uint16_t*) java_array_new(sizeof(uint16_t), 20));
    return self;
}


- (StringMaker*) append:(const char*)string {
        int32_t stringLength = ((int32_t) strlen(string));
        [self ensureCapacity:self->currentLength + stringLength];
        java_string_getChars(string, 0, stringLength, self->charArray, self->currentLength);
        self->currentLength += stringLength;
        return self;
}


- (StringMaker*) appendchar:(uint16_t)c {
        [self ensureCapacity:self->currentLength + 1];
        self->charArray[self->currentLength++] = c;
        return self;
}


- (StringMaker*) appendCharArray:(uint16_t*)charArray :(int32_t)start :(int32_t)end {
        [self ensureCapacity:self->currentLength + (end - start)];
        for (int32_t index = start; index < end; index++) {
            self->charArray[self->currentLength++] = charArray[index];
        }
        return self;
}


- (StringMaker*) appendbyte:(int8_t)b {
        [self append:java_string_of(b)];
        return self;
}


- (StringMaker*) appendshort:(int16_t)b {
        [self append:java_string_of(b)];
        return self;
}


- (StringMaker*) appendint:(int32_t)i {
        [self append:java_string_of(i)];
        return self;
}


- (StringMaker*) appendlong:(int64_t)l {
        [self append:java_string_of(l)];
        return self;
}


- (StringMaker*) appendfloat:(float)f {
        [self append:java_string_of(f)];
        return self;
}


- (StringMaker*) appendboolean:(bool)bool_ {
        if (bool_) {
            [self ensureCapacity:self->currentLength + 4];
            self->charArray[self->currentLength++] = u't';
            self->charArray[self->currentLength++] = u'r';
            self->charArray[self->currentLength++] = u'u';
            self->charArray[self->currentLength++] = u'e';
        } else {
            [self ensureCapacity:self->currentLength + 5];
            self->charArray[self->currentLength++] = u'f';
            self->charArray[self->currentLength++] = u'a';
            self->charArray[self->currentLength++] = u'l';
            self->charArray[self->currentLength++] = u's';
            self->charArray[self->currentLength++] = u'e';
        }
        return self;
}


- (void) ensureCapacity:(int32_t)minSize {
        int32_t oldCapacity = java_array_length(self->charArray);
        if (minSize > oldCapacity) {
            int32_t newCapacity = oldCapacity * 3;
            if (newCapacity < minSize) {
                newCapacity = minSize;
            }
            uint16_t* copy = ((uint16_t*) java_array_new(sizeof(uint16_t), newCapacity));
            int32_t min = [self min:java_array_length(self->charArray) :newCapacity];
            java_array_copy(self->charArray, 0, copy, 0, min);
            self->charArray = copy;
        }
}


- (int32_t) min:(int32_t)value :(int32_t)value2 {
        return ((value <= value2) ? value : value2);
}


- (StringMaker*) delete:(int32_t)start :(int32_t)end {
        self->currentLength -= (end - start);
        return self;
}


- (int32_t) length {
        return self->currentLength;
}


- (const char*) toString {
        return java_string_new(self->charArray, 0, self->currentLength);
}

@end

