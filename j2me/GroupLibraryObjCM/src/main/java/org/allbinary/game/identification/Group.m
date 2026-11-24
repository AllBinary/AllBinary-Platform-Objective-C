// Generated Code Do Not Modify
#include "org/allbinary/game/identification/Group.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/game/identification/GroupInterface.h"
#include "org/allbinary/game/identification/GroupCommonFactory.h"
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif



void Group_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation Group

- (void) initFields {
    self->name = [StringUtil getInstance]->EMPTY_STRING;
    
    self->string = [StringUtil getInstance]->EMPTY_STRING;
}


- (instancetype) init:(const char*)teamName :(int16_t)teamId {
    self = [super init];
    [self initFields];
        self->teamId = teamId;
        [self setName:teamName];
    return self;
}


- (const char*) getGroupName {
        return self->name;
}


- (void) setName:(const char*)name {
        self->name = name;
        GroupCommonFactory* groupCommonFactory = [GroupCommonFactory getInstance];
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        [stringBuffer append:groupCommonFactory->GROUP_NAME_LABEL];
        [stringBuffer append:self->name];
        [stringBuffer append:groupCommonFactory->ID_LABEL];
        [stringBuffer appendshort:self->teamId];
        self->string = [stringBuffer toString];
}


- (int16_t) getGroupId {
        return self->teamId;
}


- (const char*) toString {
        return self->string;
}

@end

