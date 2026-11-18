// Generated Code Do Not Modify
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonLabels.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/util/ArrayUtil.h"
#include "org/allbinary/util/BasicArrayListS.h"
#if __has_include("org/allbinary/util/Any.h")
#include "org/allbinary/util/Any.h"
#endif
#if __has_include("jsinterop/annotations/Any.h")
#include "jsinterop/annotations/Any.h"
#endif
#if __has_include("org/allbinary/logic/string/Any.h")
#include "org/allbinary/logic/string/Any.h"
#endif
#if __has_include("org/allbinary/string/Any.h")
#include "org/allbinary/string/Any.h"
#endif
#if __has_include("org/allbinary/string/Any.h")
#include "org/allbinary/string/Any.h"
#endif
#if __has_include("jsinterop/annotations/Any.h")
#include "jsinterop/annotations/Any.h"
#endif
#if __has_include("jsinterop/annotations/Any.h")
#include "jsinterop/annotations/Any.h"
#endif
#if __has_include("jsinterop/annotations/Any.h")
#include "jsinterop/annotations/Any.h"
#endif


static const char* BasicArrayList_SIZE = ", Size: ";

void BasicArrayList_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BasicArrayList

- (void) initFields {
    self->arrayUtil = [ArrayUtil getInstance];
    
    self->currentIndex = 0;
}


- (instancetype) init:(id*)objectArray {
    self = [super init];
    [self initFields];
        self->objectArray = objectArray;
    return self;
}


- (void) addAt:(int32_t)index :(id)element {
        if (index > self->currentIndex || index < 0) {
            StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
            [stringBuffer append:[CommonLabels getInstance]->INDEX_LABEL];
            [stringBuffer appendint:index];
            [stringBuffer append:BasicArrayList_SIZE];
            [stringBuffer appendint:self->currentIndex];
            java_throw(java_exception_new("IndexOutOfBoundsException", [stringBuffer toString]));
        }
        [self ensureCapacity:self->currentIndex + 1];
        java_array_copy(self->objectArray, index, self->objectArray, index + 1, self->currentIndex - index);
        self->objectArray[index] = element;
        self->currentIndex++;
}


- (bool) add:(id)anyType {
        [self ensureCapacity:self->currentIndex + 1];
        self->objectArray[self->currentIndex++] = anyType;
        return true;
}


- (id) removeAt:(int32_t)index {
        if (index >= self->currentIndex) {
            StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
            [stringBuffer append:[CommonLabels getInstance]->INDEX_LABEL];
            [stringBuffer appendint:index];
            [stringBuffer append:BasicArrayList_SIZE];
            [stringBuffer appendint:self->currentIndex];
            java_throw(java_exception_new("IndexOutOfBoundsException", [stringBuffer toString]));
        }
        id oldValue = self->objectArray[index];
        int32_t numMoved = self->currentIndex - index - 1;
        if (numMoved > 0) {
            java_array_copy(self->objectArray, index + 1, self->objectArray, index, numMoved);
        }
        self->objectArray[--self->currentIndex] = nil;
        return oldValue;
}


- (bool) remove:(id)anyType {
        if (anyType == nil) {
            for (int32_t index = 0; index < self->currentIndex; index++) {
                if (self->objectArray[index] == nil) {
                    int32_t numMoved = self->currentIndex - index - 1;
                    if (numMoved > 0) {
                        java_array_copy(self->objectArray, index + 1, self->objectArray, index, numMoved);
                    }
                    self->objectArray[--self->currentIndex] = nil;
                    return true;
                }
            }
        } else {
            for (int32_t index = 0; index < self->currentIndex; index++) {
                if (anyType == self->objectArray[index] || [anyType equals:self->objectArray[index]]) {
                    int32_t numMoved = self->currentIndex - index - 1;
                    if (numMoved > 0) {
                        java_array_copy(self->objectArray, index + 1, self->objectArray, index, numMoved);
                    }
                    self->objectArray[--self->currentIndex] = nil;
                    return true;
                }
            }
        }
        return false;
}


- (bool) removeAll2:(BasicArrayList*)list {
        bool result = true;
        int32_t size = [list size];
        for (int32_t index = 0; index < size; index++) {
            if ([self remove:[list get:index]]) {
            } else {
                result = false;
            }
        }
        return result;
}


- (bool) addAll2:(BasicArrayList*)list {
        [self ensureCapacity:self->currentIndex + list->currentIndex];
        int32_t listSize = list->currentIndex;
        for (int32_t index = 0; index < listSize; index++) {
            self->objectArray[self->currentIndex++] = list->objectArray[index];
        }
        return true;
}


- (bool) addAllList:(BasicArrayList*)list {
        id* newObjectArray = [list toArray];
        return [self addAll:newObjectArray];
}


- (bool) addAll:(id*)newObjectArray {
        int32_t numSize = java_array_length(newObjectArray);
        [self ensureCapacity:self->currentIndex + numSize];
        java_array_copy(newObjectArray, 0, self->objectArray, self->currentIndex, numSize);
        self->currentIndex += numSize;
        return numSize != 0;
}


- (void) ensureCapacity:(int32_t)minSize {
        int32_t oldCapacity = java_array_length(self->objectArray);
        if (minSize > oldCapacity) {
            int32_t newCapacity = ((oldCapacity * 3) >> 1) + 1;
            if (newCapacity < minSize) {
                newCapacity = minSize;
            }
            self->objectArray = [self->arrayUtil copyOf:self->objectArray :newCapacity];
        }
}


- (void) trimToSize {
        int32_t oldCapacity = java_array_length(self->objectArray);
        if (self->currentIndex < oldCapacity) {
            self->objectArray = [self->arrayUtil copyOf:self->objectArray :self->currentIndex];
        }
}


- (int32_t) indexOf:(id)anyType {
        if (anyType == nil) {
            for (int32_t i = 0; i < self->currentIndex; i++) {
                if (self->objectArray[i] == nil) {
                    return i;
                }
            }
        } else {
            for (int32_t i = 0; i < self->currentIndex; i++) {
                if ([anyType equals:self->objectArray[i]]) {
                    return i;
                }
            }
        }
        return -1;
}


- (int32_t) lastIndexOf:(id)anyType {
        if (anyType == nil) {
            for (int32_t i = self->currentIndex - 1; i >= 0; i--) {
                if (self->objectArray[i] == nil) {
                    return i;
                }
            }
        } else {
            for (int32_t i = self->currentIndex - 1; i >= 0; i--) {
                if ([anyType equals:self->objectArray[i]]) {
                    return i;
                }
            }
        }
        return -1;
}


- (id) get:(int32_t)index {
        if (index >= self->currentIndex) {
            StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
            [stringBuffer append:[CommonLabels getInstance]->INDEX_LABEL];
            [stringBuffer appendint:index];
            [stringBuffer append:BasicArrayList_SIZE];
            [stringBuffer appendint:self->currentIndex];
            java_throw(java_exception_new("IndexOutOfBoundsException", [stringBuffer toString]));
        }
        return self->objectArray[index];
}


- (id) set:(int32_t)index :(id)element {
        if (index >= self->currentIndex) {
            StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
            [stringBuffer append:[CommonLabels getInstance]->INDEX_LABEL];
            [stringBuffer appendint:index];
            [stringBuffer append:BasicArrayList_SIZE];
            [stringBuffer appendint:self->currentIndex];
            java_throw(java_exception_new("IndexOutOfBoundsException", [stringBuffer toString]));
        }
        id oldValue = self->objectArray[index];
        self->objectArray[index] = element;
        return oldValue;
}


- (void) clear {
        for (int32_t i = 0; i < self->currentIndex; i++) {
            self->objectArray[i] = nil;
        }
        self->currentIndex = 0;
}


- (int32_t) size {
        return self->currentIndex;
}


- (bool) isEmpty {
        return self->currentIndex == 0;
}


- (bool) contains:(id)anyType {
        return [self indexOf:anyType] >= 0;
}


- (id*) toArray {
        return [self->arrayUtil copyOf:self->objectArray :self->currentIndex];
}


- (id*) toArrayType:(id*)objectArray {
        if (java_array_length(objectArray) < self->currentIndex) {
            return [self->arrayUtil copyOfType:self->objectArray :self->currentIndex :java_objc_class_name(objectArray)];
        }
        java_array_copy(self->objectArray, 0, objectArray, 0, self->currentIndex);
        if (java_array_length(objectArray) > self->currentIndex) {
            objectArray[self->currentIndex] = nil;
        }
        return objectArray;
}


- (id) clone {
        int32_t size = [self size];
        BasicArrayList* list = [((BasicArrayListS*) [BasicArrayListS alloc]) init:size];
        id anyType = nullptr;
        for (int32_t index = 0; index < size; index++) {
            anyType = self->objectArray[index];
            [list add:anyType];
        }
        return list;
}


- (const char*) toString {
        const char* COMMA_SEP = [CommonSeps getInstance]->COMMA_SEP;
        StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
        for (int32_t index = 0; index < self->currentIndex; index++) {
            [stringBuffer append:[self->objectArray[index] toString]];
            [stringBuffer append:COMMA_SEP];
        }
        return [stringBuffer toString];
}

@end

