// Generated Code Do Not Modify
#include "org/allbinary/logic/math/permutations/OrderedObjectArrayPermutationUtil.h"
#include "org/allbinary/TsUtil.h"
#include "org/allbinary/logic/util/visitor/Visitor.h"
#include "org/allbinary/logic/math/permutations/ComparableObject.h"
#include "org/allbinary/logic/math/permutations/ObjectPermutationVisitor.h"


static OrderedObjectArrayPermutationUtil* OrderedObjectArrayPermutationUtil_instance;

void OrderedObjectArrayPermutationUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    OrderedObjectArrayPermutationUtil_instance = ((OrderedObjectArrayPermutationUtil*) [((OrderedObjectArrayPermutationUtil*) [OrderedObjectArrayPermutationUtil alloc]) init]);
}

@implementation OrderedObjectArrayPermutationUtil

- (void) initFields {
    self->TOTAL_ITERATIONS_TABLE = "Total Iterations: ";
    self->FINISHED = "\nFINISHED";
}


+ (OrderedObjectArrayPermutationUtil*) getInstance {
        return (OrderedObjectArrayPermutationUtil_staticInit(), OrderedObjectArrayPermutationUtil_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) getNext:(id*)data {
        int32_t length = java_array_length(data);
        int32_t i = length - 1;
        TsUtil* tsUtil = [TsUtil getInstance];
        while ([tsUtil hashCode:data[i - 1]] >= [tsUtil hashCode:data[i]]) {
            i = i - 1;
        }
        int32_t j = length;
        while ([tsUtil hashCode:data[j - 1]] <= [tsUtil hashCode:data[i - 1]]) {
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


- (void) swap:(id*)data :(int32_t)a :(int32_t)b {
        id temp = data[a];
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


- (void) generate:(id*)data :(Visitor*)visitor {
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
        int32_t TOTAL = 7;
        id* data = ((id*) java_array_new(sizeof(id), TOTAL));
        for (int32_t i = 0; i < TOTAL; i++) {
            data[i] = ((ComparableObject*) [((ComparableObject*) [ComparableObject alloc]) init]);
        }
        [Arrays sort:data];
        ObjectPermutationVisitor* permutationVisitor = ((ObjectPermutationVisitor*) [((ObjectPermutationVisitor*) [ObjectPermutationVisitor alloc]) init:data]);
        const char* ORIGINAL_DATA_LABEL = "Original Data: ";
        fputs(java_string_of(ORIGINAL_DATA_LABEL), stdout);
        [permutationVisitor visit:data];
        [[OrderedObjectArrayPermutationUtil getInstance] generate:data :permutationVisitor];
}

@end

