// Generated Code Do Not Modify
#include "org/allbinary/game/rand/MyRandomFactory.h"
#include "org/allbinary/logic/math/MathUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonSeps.h"
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif


static MyRandomFactory* MyRandomFactory_instance;

void MyRandomFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    MyRandomFactory_instance = ((MyRandomFactory*) [((MyRandomFactory*) [MyRandomFactory alloc]) init]);
}

@implementation MyRandomFactory

- (void) initFields {
    self->mathUtil = [MathUtil getInstance];
    
}


+ (MyRandomFactory*) getInstance {
        return (MyRandomFactory_staticInit(), MyRandomFactory_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        self->rand = ((Random*) [((Random*) [Random alloc]) init:java_current_time_millis()]);
    return self;
}


- (void) setSeed:(int64_t)seed {
        self->rand = ((Random*) [((Random*) [Random alloc]) init:seed]);
}


- (int32_t) getNextInt:(int32_t)range {
        int32_t div = ((Integer_staticInit(), Integer_MAX_VALUE) / range) + 1;
        return ([self->rand nextInt] / div);
}


- (int32_t) getAbsoluteNextInt:(int32_t)range {
        return [self->mathUtil abs:[self getNextInt:range]];
}


- (int32_t) getAbsoluteNextIntAllowZero:(int32_t)range {
        if (range == 0) {
            return 0;
        } else {
            return [self->mathUtil abs:[self getNextInt:range]];
        }
}


- (void) shuffle:(int32_t*)intArray {
        [self shuffleTotal:intArray :java_array_length(intArray) * 7];
}


- (void) shuffleTotal:(int32_t*)intArray :(int32_t)shuffleTotal {
        int32_t size = java_array_length(intArray);
        int32_t randomIndex = 0;
        int32_t randomIndex2 = 0;
        int32_t value = 0;
        for (int32_t index = 0; index < shuffleTotal; index++) {
            randomIndex = [self getAbsoluteNextIntAllowZero:size];
            randomIndex2 = [self getAbsoluteNextIntAllowZero:size];
            value = intArray[randomIndex];
            intArray[randomIndex] = intArray[randomIndex2];
            intArray[randomIndex2] = value;
        }
}


- (void) shuffle2:(int32_t*)intArray :(int32_t*)intArray2 {
        [self shuffle2Total:intArray :intArray2 :java_array_length(intArray) * 7];
}


- (void) shuffle2Total:(int32_t*)intArray :(int32_t*)intArray2 :(int32_t)shuffleTotal {
        int32_t size = java_array_length(intArray);
        int32_t randomIndex = 0;
        int32_t randomIndex2 = 0;
        int32_t value = 0;
        int32_t value2 = 0;
        for (int32_t index = 0; index < shuffleTotal; index++) {
            randomIndex = [self getAbsoluteNextIntAllowZero:size];
            randomIndex2 = [self getAbsoluteNextIntAllowZero:size];
            value = intArray[randomIndex];
            value2 = intArray2[randomIndex];
            intArray[randomIndex] = intArray[randomIndex2];
            intArray[randomIndex2] = value;
            intArray2[randomIndex] = intArray2[randomIndex2];
            intArray2[randomIndex2] = value2;
        }
}


+ (void) main:(const char**)args {
        MyRandomFactory* randomFactory = [MyRandomFactory getInstance];
        StringMaker* stringBuilder = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        CommonSeps* commonSeps = [CommonSeps getInstance];
        int32_t size2 = 100;
        for (int32_t index = 0; index < size2; index++) {
            [[stringBuilder appendint:[randomFactory getAbsoluteNextInt:3]] append:commonSeps->COMMA];
        }
        puts(java_string_of([stringBuilder toString]));
        [stringBuilder delete:0 :[stringBuilder length]];
        int32_t* intArray = ((int32_t*) java_array_new(sizeof(int32_t), 52));
        int32_t* intArray2 = ((int32_t*) java_array_new(sizeof(int32_t), 52));
        int32_t size = java_array_length(intArray);
        for (int32_t index = 0; index < size; index++) {
            intArray[index] = index;
            intArray2[index] = index;
        }
        [randomFactory shuffle2:intArray :intArray2];
        for (int32_t index = 0; index < size; index++) {
            [[stringBuilder appendint:intArray[index]] append:commonSeps->COMMA];
        }
        puts(java_string_of([stringBuilder toString]));
        [stringBuilder delete:0 :[stringBuilder length]];
        for (int32_t index = 0; index < size; index++) {
            [[stringBuilder appendint:intArray2[index]] append:commonSeps->COMMA];
        }
        puts(java_string_of([stringBuilder toString]));
        bool found = false;
        for (int32_t index = 0; index < size; index++) {
            found = false;
            for (int32_t index2 = 0; index2 < size; index2++) {
                if (intArray[index2] == index) {
                    found = true;
                }
            }
            if (!found) {
                java_throw(java_exception_new("RuntimeException", ""));
            }
        }
}

@end

