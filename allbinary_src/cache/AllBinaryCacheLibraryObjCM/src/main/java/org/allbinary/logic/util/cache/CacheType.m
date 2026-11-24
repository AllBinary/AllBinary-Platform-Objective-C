// Generated Code Do Not Modify
#include "org/allbinary/logic/util/cache/CacheType.h"
#include "org/allbinary/logic/string/StringMaker.h"



void CacheType_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CacheType

- (void) initFields {
    
    
}


- (instancetype) init:(const char*)vendor :(const char*)type {
    self = [super init];
    [self initFields];
        self->vendor = vendor;
        self->type = type;
    return self;
}


- (const char*) getVendor {
        return self->vendor;
}


- (const char*) getType {
        return self->type;
}


- (const char*) toString {
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        [stringBuffer append:"CacheType: Vendor: "];
        [stringBuffer append:[self getVendor]];
        [stringBuffer append:" Type: "];
        [stringBuffer append:[self getType]];
        return [stringBuffer toString];
}

@end

