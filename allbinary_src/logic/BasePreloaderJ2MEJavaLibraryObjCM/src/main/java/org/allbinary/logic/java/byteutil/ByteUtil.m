// Generated Code Do Not Modify
#include "org/allbinary/logic/java/byteutil/ByteUtil.h"


static ByteUtil* ByteUtil_instance;

void ByteUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ByteUtil_instance = ((ByteUtil*) [((ByteUtil*) [ByteUtil alloc]) init]);
}

@implementation ByteUtil


+ (ByteUtil*) getInstance {
        return (ByteUtil_staticInit(), ByteUtil_instance);
}


- (instancetype) init {
    self = [super init];
    return self;
}


- (int8_t*) xor:(int8_t*)array :(int8_t)mask {
        int8_t* bytes = ((int8_t*) java_array_new(sizeof(int8_t), java_array_length(array)));
        int32_t size = java_array_length(array);
        int32_t index = 0;
        int8_t currentByte = 0;
        while (index < size) {
            currentByte = array[index];
            bytes[index] = ((int8_t) (currentByte ^ mask));
            index++;
        }
        return bytes;
}


- (int8_t*) not:(int8_t*)array {
        int8_t* bytes = ((int8_t*) java_array_new(sizeof(int8_t), java_array_length(array)));
        int32_t size = java_array_length(array);
        int32_t index = 0;
        while (index < size) {
            bytes[index] = ((int8_t) (~array[index]));
            index++;
        }
        return bytes;
}


- (int8_t*) xorByte:(int8_t*)array :(int32_t)index {
        int8_t mask = 0;
        if (index == 0) {
            mask = 1;
        }
        if (index == 1) {
            mask = 2;
        }
        if (index == 2) {
            mask = 4;
        }
        if (index == 3) {
            mask = 8;
        }
        if (index == 4) {
            mask = 16;
        }
        if (index == 5) {
            mask = 32;
        }
        if (index == 6) {
            mask = 64;
        }
        if (index == 7) {
            mask = ((int8_t) (-127));
        }
        return [self xor:array :mask];
}


- (bool) compare:(int8_t*)newByteArray :(int8_t*)oldByteArray {
        if (java_array_length(newByteArray) != java_array_length(oldByteArray)) {
            return false;
        } else {
        }
        int32_t size = java_array_length(newByteArray);
        for (int32_t index = 0; index < size; index++) {
            if (newByteArray[index] != oldByteArray[index]) {
                return false;
            }
        }
        return true;
}


- (bool) compareWithStats:(int8_t*)newByteArray :(int32_t)newSize :(int8_t*)oldByteArray :(int32_t*)stats {
        if (newSize != java_array_length(oldByteArray)) {
            stats[0] = -1;
            stats[2] = newSize;
            stats[3] = java_array_length(oldByteArray);
            return false;
        } else {
            stats[0] = newSize;
        }
        stats[1] = 0;
        int32_t size = newSize;
        for (int32_t index = 0; index < size; index++) {
            if (newByteArray[index] != oldByteArray[index]) {
                return false;
            }
            stats[1]++;
        }
        return true;
}

@end

