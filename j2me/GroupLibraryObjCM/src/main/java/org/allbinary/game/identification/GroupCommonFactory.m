// Generated Code Do Not Modify
#include "org/allbinary/game/identification/GroupCommonFactory.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/math/SmallIntegerSingletonFactory.h")
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#endif


static id GroupCommonFactory_instance;

void GroupCommonFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GroupCommonFactory_instance = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation GroupCommonFactory

- (void) initFields {
    self->ID = [[SmallIntegerSingletonFactory getInstance] getAt:10];
    self->GROUP_NAME_LABEL = "Group Name: ";
    self->ID_LABEL = " Id: ";
    self->ADDING_LABEL = "Adding: ";
    self->TO_LABEL = " to: ";
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (GroupCommonFactory*) getInstance {
        if ((GroupCommonFactory_staticInit(), GroupCommonFactory_instance) == [NullUtil getInstance]->NULL_OBJECT) {
            GroupCommonFactory_instance = ((GroupCommonFactory*) [((GroupCommonFactory*) [GroupCommonFactory alloc]) init]);
        }
        return ((GroupCommonFactory*) (GroupCommonFactory_staticInit(), GroupCommonFactory_instance));
}

@end

