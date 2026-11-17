// Generated Code Do Not Modify
#include "org/allbinary/util/ImmutableBasicArrayList.h"
#include "org/allbinary/logic/communication/log/ForcedLogUtil.h"
#include "org/allbinary/util/BasicArrayListS.h"



void ImmutableBasicArrayList_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ImmutableBasicArrayList

- (void) initFields {
    
}


- (instancetype) init:(const char*)name :(int32_t)size {
        self = [super init:size];
        [self initFields];
        self->name = name;
    return self;
}


- (bool) add:(id)e {
        [ForcedLogUtil log:self->name :self];
        return true;
}


- (void) addAt:(int32_t)index :(id)element {
        [ForcedLogUtil log:self->name :self];
}


- (const char*) toString {
        return self->name;
}

@end

