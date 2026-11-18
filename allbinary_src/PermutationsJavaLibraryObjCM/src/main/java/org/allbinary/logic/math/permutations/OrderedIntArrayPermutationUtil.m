// Generated Code Do Not Modify
#include "org/allbinary/logic/math/permutations/OrderedIntArrayPermutationUtil.h"
#include "org/allbinary/logic/util/visitor/Visitor.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/math/permutations/IntPermutationVisitor.h"


static OrderedIntArrayPermutationUtil* OrderedIntArrayPermutationUtil_instance;

void OrderedIntArrayPermutationUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    OrderedIntArrayPermutationUtil_instance = [((OrderedIntArrayPermutationUtil*) [OrderedIntArrayPermutationUtil alloc]) init];
}

@implementation OrderedIntArrayPermutationUtil

- (void) initFields {
    self->TOTAL_ITERATIONS_TABLE = "Total Iterations: ";
    self->FINISHED = "\nFINISHED";
}


+ (OrderedIntArrayPermutationUtil*) getInstance {
        return (OrderedIntArrayPermutationUtil_staticInit(), OrderedIntArrayPermutationUtil_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) getNext:(int32_t*)data {
        int32_t length = java_array_length(data);
        int32_t i = length - 1;
        while (data[i - 1] >= data[i]) {
            i = i - 1;
        }
        int32_t j = length;
        while (data[j - 1] <= data[i - 1]) {
            j = j - 1;
        }
        [self swap:data :i - 1 :j - 1];
        i++;
        j = length;
        while (i < j) {
            [self swap:data :i - 1 :j - 1];
            i++;
            j--;
        }
}


- (void) swap:(int32_t*)data :(int32_t)a :(int32_t)b {
        int32_t temp = data[a];
        data[a] = data[b];
        data[b] = temp;
}


- (int64_t) factorial:(int32_t)dataLength {
        int64_t temp = 1LL;
        if (dataLength > 1) {
            for (int32_t i = 1; i <= dataLength; i++) {
                temp *= ((int64_t) i);
            }
        }
        return temp;
}


- (void) generate:(int32_t*)data :(Visitor*)visitor {
        int64_t iterations = [self factorial:java_array_length(data)];
        fputs(java_string_of(self->TOTAL_ITERATIONS_TABLE), stdout);
        puts(java_string_of(iterations));
        for (int64_t count = 0LL; count < iterations - 1LL; count++) {
            [self getNext:data];
            [visitor visit:self];
        }
        puts(java_string_of(self->FINISHED));
}


+ (void) main:(const char**)args {
        int32_t TOTAL = 3;
        int32_t* data = ((int32_t*) java_array_new(sizeof(int32_t), TOTAL));
        for (int32_t i = 0; i < TOTAL; i++) {
            data[i] = i;
        }
        IntPermutationVisitor* permutationVisitor = [((IntPermutationVisitor*) [IntPermutationVisitor alloc]) init:data];
        const char* ORIGINAL_DATA_LABEL = "Original Data: ";
        fputs(java_string_of(ORIGINAL_DATA_LABEL), stdout);
        [permutationVisitor print:data :[((StringMaker*) [StringMaker alloc]) init]];
        [[OrderedIntArrayPermutationUtil getInstance] generate:data :permutationVisitor];
}

@end

