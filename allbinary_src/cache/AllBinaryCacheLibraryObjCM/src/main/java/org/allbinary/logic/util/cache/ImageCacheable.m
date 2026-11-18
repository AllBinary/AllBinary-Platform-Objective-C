// Generated Code Do Not Modify
#include "org/allbinary/logic/util/cache/ImageCacheable.h"
#include "org/allbinary/logic/string/StringUtil.h"



void ImageCacheable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ImageCacheable

- (void) initFields {
    self->name = [StringUtil getInstance]->EMPTY_STRING;
}


- (instancetype) init:(const char*)name :(id)anyType {
    self = [super init];
    [self initFields];
    return self;
}


- (id) getKey {
        return self->name;
}


- (const char*) toString {
        return self->name;
}

@end

