// Generated Code Do Not Modify
#include "org/allbinary/logic/math/permutations/ObjectPermutationVisitor.h"
#include "org/allbinary/TsUtil.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonSeps.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonSeps.h")
#include "org/allbinary/string/CommonSeps.h"
#endif



void ObjectPermutationVisitor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ObjectPermutationVisitor

- (void) initFields {
    
    self->stringBuilder = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
}


- (instancetype) init:(id*)data {
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


- (void) print:(id*)data {
        StringMaker* stringBuilder = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        [self print:data :stringBuilder];
}


- (void) print:(id*)data :(StringMaker*)stringBuilder {
        TsUtil* tsUtil = [TsUtil getInstance];
        int32_t size = java_array_length(data);
        for (int32_t i = 0; i < size; i++) {
            [stringBuilder appendint:[tsUtil hashCode:data[i]]];
            [stringBuilder append:[CommonSeps getInstance]->SPACE];
        }
        puts(java_string_of([stringBuilder toString]));
}

@end

