// Generated Code Do Not Modify
#include "org/allbinary/game/PlayerType.h"
#include "org/allbinary/logic/string/StringUtil.h"
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif



void PlayerType_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation PlayerType

- (void) initFields {
    
    self->name = [StringUtil getInstance]->EMPTY_STRING;
}


- (instancetype) init:(const char*)name :(int32_t)value {
    self = [super init];
    [self initFields];
        self->name = name;
        self->id_ = value;
    return self;
}


- (int32_t) getId {
        return self->id_;
}


- (const char*) getName {
        return self->name;
}


- (const char*) toString {
        return [self getName];
}

@end

