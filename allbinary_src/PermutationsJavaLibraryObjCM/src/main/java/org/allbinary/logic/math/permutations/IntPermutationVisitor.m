// Generated Code Do Not Modify
#include "org/allbinary/logic/math/permutations/IntPermutationVisitor.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonSeps.h"



void IntPermutationVisitor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation IntPermutationVisitor

- (void) initFields {
    
    self->stringBuilder = [((StringMaker*) [StringMaker alloc]) init];
}


- (instancetype) init:(int32_t*)data {
    self = [super init];
    [self initFields];
        self->data = data;
    return self;
}


- (id) visit:(id)anyType {
        [self->stringBuilder delete:0 :[self->stringBuilder length]];
        [self print:self->data :self->stringBuilder];
        return [NullUtil getInstance]->NULL_OBJECT;
}


- (void) print:(int32_t*)data {
        StringMaker* stringBuilder = [((StringMaker*) [StringMaker alloc]) init];
        [self print:data :stringBuilder];
}


- (void) print:(int32_t*)data :(StringMaker*)stringBuilder {
        CommonSeps* commonSeps = [CommonSeps getInstance];
        int32_t size = java_array_length(data);
        for (int32_t i = 0; i < size; i++) {
            [stringBuilder appendint:data[i]];
            [stringBuilder append:commonSeps->SPACE];
        }
        puts(java_string_of([stringBuilder toString]));
}

@end

