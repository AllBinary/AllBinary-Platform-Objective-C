// Generated Code Do Not Modify
#include "org/allbinary/util/BasicArrayListS.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/util/BasicArrayList.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif



void BasicArrayListS_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BasicArrayListS


- (instancetype) init:(int32_t)size {
        self = [super init:[NullUtil getInstance]->NULL_OBJECT_ARRAY];
        if (size < 0) {
            java_throw(java_exception_new("IllegalArgumentException", [[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:"Init Size Exception: "] appendint:size] toString]));
        }
        self->objectArray = ((id*) java_array_new(sizeof(id), size));
    return self;
}

@end

