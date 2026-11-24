// Generated Code Do Not Modify
#include "org/allbinary/util/CircularIndexUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonLabels.h"
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/string/CommonLabels.h")
#include "org/allbinary/string/CommonLabels.h"
#endif


CircularIndexUtil* CircularIndexUtil_NULL_CIRCULAR_INDEX_UTIL;

void CircularIndexUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    CircularIndexUtil_NULL_CIRCULAR_INDEX_UTIL = ((CircularIndexUtil*) [((CircularIndexUtil*) [CircularIndexUtil alloc]) init:0 :0]);
}

@implementation CircularIndexUtil

- (void) initFields {
    self->index = 0;
    self->lastIndex = 0;
    self->size = 0;
}


- (instancetype) init:(int32_t)index :(int32_t)size {
    self = [super init];
    [self initFields];
        [self setSize:size];
        [self setIndex:index];
    return self;
}


- (int32_t) next {
        if (self->index >= self->lastIndex) {
            self->index = 0;
        } else {
            self->index++;
        }
        return self->index;
}


- (int32_t) previous {
        if (self->index < 1) {
            self->index = self->lastIndex;
        } else {
            self->index--;
        }
        return self->index;
}


- (void) setIndex:(int32_t)index {
        if (index > self->lastIndex) {
            return;
        }
        self->index = index;
}


- (int32_t) getIndex {
        return self->index;
}


+ (CircularIndexUtil*) createInstance:(int32_t)max {
        return ((CircularIndexUtil*) [((CircularIndexUtil*) [CircularIndexUtil alloc]) init:0 :max]);
}


+ (CircularIndexUtil*) createInstanceAt:(int32_t)index :(int32_t)max {
        return ((CircularIndexUtil*) [((CircularIndexUtil*) [CircularIndexUtil alloc]) init:index :max]);
}


- (void) setSize:(int32_t)size {
        self->size = size;
        self->lastIndex = size - 1;
        self->index = 0;
}


- (int32_t) getSize {
        return self->size;
}


- (const char*) toString {
        return [[[[[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:[CommonLabels getInstance]->INDEX_LABEL] appendint:self->index] append:"lastIndex: "] appendint:self->lastIndex] append:"size: "] appendint:self->size] toString];
}

@end

