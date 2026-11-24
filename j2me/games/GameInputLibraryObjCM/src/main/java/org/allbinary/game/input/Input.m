// Generated Code Do Not Modify
#include "org/allbinary/game/input/Input.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif



void Input_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation Input

- (void) initFields {
    self->id_ = 0;
    self->name = [StringUtil getInstance]->EMPTY_STRING;
}


- (instancetype) init:(int32_t)id_ :(const char*)name {
    self = [super init];
    [self initFields];
        [self setId:id_];
        [self setName:name];
    return self;
}


- (int32_t) getId {
        return self->id_;
}


- (void) setId:(int32_t)key {
        self->id_ = key;
}


- (const char*) getName {
        return self->name;
}


- (void) setName:(const char*)keyName {
        self->name = keyName;
}


- (const char*) toString {
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        [stringBuffer append:"Name: "];
        [stringBuffer append:[self getName]];
        [stringBuffer append:" Id: "];
        [stringBuffer appendint:[self getId]];
        return [stringBuffer toString];
}

@end

