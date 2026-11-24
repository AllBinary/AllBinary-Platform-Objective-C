// Generated Code Do Not Modify
#include "org/allbinary/util/ArrayUtil.h"
#include "org/allbinary/logic/math/MathUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonSeps.h"
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif


static ArrayUtil* ArrayUtil_instance;

void ArrayUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ArrayUtil_instance = ((ArrayUtil*) [((ArrayUtil*) [ArrayUtil alloc]) init]);
}

@implementation ArrayUtil

- (void) initFields {
    self->mathUtil = [MathUtil getInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (ArrayUtil*) getInstance {
        return (ArrayUtil_staticInit(), ArrayUtil_instance);
}


- (id*) copyOf:(id*)original :(int32_t)newLength {
        return [self copyOfType:original :newLength :java_objc_class_name(original)];
}


- (id*) copyOfType:(id*)original :(int32_t)newLength :(const char*)newType {
        id* copy = ((id*) java_array_new(sizeof(id), newLength));
        java_array_copy(original, 0, copy, 0, [self->mathUtil min:java_array_length(original) :newLength]);
        return copy;
}


- (int8_t*) copyOfbyte:(int8_t*)original :(int32_t)newLength {
        int8_t* copy = ((int8_t*) java_array_new(sizeof(int8_t), newLength));
        java_array_copy(original, 0, copy, 0, [self->mathUtil min:java_array_length(original) :newLength]);
        return copy;
}


- (int16_t*) copyOfshort:(int16_t*)original :(int32_t)newLength {
        int16_t* copy = ((int16_t*) java_array_new(sizeof(int16_t), newLength));
        java_array_copy(original, 0, copy, 0, [self->mathUtil min:java_array_length(original) :newLength]);
        return copy;
}


- (int32_t*) copyOfint:(int32_t*)original :(int32_t)newLength {
        int32_t* copy = ((int32_t*) java_array_new(sizeof(int32_t), newLength));
        java_array_copy(original, 0, copy, 0, [self->mathUtil min:java_array_length(original) :newLength]);
        return copy;
}


- (int64_t*) copyOflong:(int64_t*)original :(int32_t)newLength {
        int64_t* copy = ((int64_t*) java_array_new(sizeof(int64_t), newLength));
        java_array_copy(original, 0, copy, 0, [self->mathUtil min:java_array_length(original) :newLength]);
        return copy;
}


- (uint16_t*) copyOfchar:(uint16_t*)original :(int32_t)newLength {
        uint16_t* copy = ((uint16_t*) java_array_new(sizeof(uint16_t), newLength));
        java_array_copy(original, 0, copy, 0, [self->mathUtil min:java_array_length(original) :newLength]);
        return copy;
}


- (float*) copyOffloat:(float*)original :(int32_t)newLength {
        float* copy = ((float*) java_array_new(sizeof(float), newLength));
        java_array_copy(original, 0, copy, 0, [self->mathUtil min:java_array_length(original) :newLength]);
        return copy;
}


- (double*) copyOfdouble:(double*)original :(int32_t)newLength {
        double* copy = ((double*) java_array_new(sizeof(double), newLength));
        java_array_copy(original, 0, copy, 0, [self->mathUtil min:java_array_length(original) :newLength]);
        return copy;
}


- (bool*) copyOfboolean:(bool*)original :(int32_t)newLength {
        bool* copy = ((bool*) java_array_new(sizeof(bool), newLength));
        java_array_copy(original, 0, copy, 0, [self->mathUtil min:java_array_length(original) :newLength]);
        return copy;
}


- (void) reverse:(int32_t*)intArray {
        int32_t length = java_array_length(intArray) - 1;
        int32_t temp = 0;
        int32_t size = length / 2;
        for (int32_t index = 0; index <= size; index++) {
            temp = intArray[index];
            intArray[index] = intArray[length - index];
            intArray[length - index] = temp;
        }
}


- (void) flip:(int32_t*)intArray :(int32_t)width :(int32_t)height {
        int32_t length = height - 1;
        int32_t temp = 0;
        int32_t index = 0;
        int32_t rowIndex = 0;
        for (int32_t y = 0; y <= length / 2; y++) {
            for (int32_t x = 0; x < width; x++) {
                rowIndex = ((length - y) * width);
                index = x + (y * width);
                temp = intArray[index];
                intArray[index] = intArray[rowIndex + x];
                intArray[rowIndex + x] = temp;
            }
        }
}


- (const char*) toStringFromTwoDimensionaArray:(int32_t**)twoDimensionalIntArray {
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        CommonSeps* commonSeps = [CommonSeps getInstance];
        int32_t endIndex = java_array_length(twoDimensionalIntArray);
        int32_t endIndex2 = java_array_length(twoDimensionalIntArray[0]);
        for (int32_t index = 0; index < endIndex; index++) {
            [stringBuffer append:commonSeps->BRACE_OPEN];
            for (int32_t index2 = 0; index2 < endIndex2; index2++) {
                [stringBuffer appendint:((int32_t) twoDimensionalIntArray[index][index2])];
                [stringBuffer append:commonSeps->COMMA_SEP];
            }
            [stringBuffer append:commonSeps->BRACE_CLOSE];
            [stringBuffer append:commonSeps->NEW_LINE];
        }
        return [stringBuffer toString];
}


- (const char*) toStringFromObjectArray:(id*)objectArray {
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        CommonSeps* commonSeps = [CommonSeps getInstance];
        for (int32_t index = 0; index < java_array_length(objectArray); index++) {
            [stringBuffer append:[[StringUtil getInstance] toString:objectArray[index]]];
            [stringBuffer append:commonSeps->COMMA_SEP];
        }
        return [stringBuffer toString];
}


- (const char*) toStringFromByteArray:(int8_t*)byteArray {
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        CommonSeps* commonSeps = [CommonSeps getInstance];
        for (int32_t index = 0; index < java_array_length(byteArray); index++) {
            [stringBuffer appendbyte:byteArray[index]];
            [stringBuffer append:commonSeps->COMMA_SEP];
        }
        return [stringBuffer toString];
}

@end

