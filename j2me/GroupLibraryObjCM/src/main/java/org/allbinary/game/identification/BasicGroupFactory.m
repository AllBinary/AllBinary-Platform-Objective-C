// Generated Code Do Not Modify
#include "org/allbinary/game/identification/BasicGroupFactory.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/game/identification/Group.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif


static id BasicGroupFactory_instance;

void BasicGroupFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    BasicGroupFactory_instance = [NullUtil getInstance]->NULL_OBJECT;
}

@implementation BasicGroupFactory

- (void) initFields {
    self->NAME = "GROUP_NAME";
    self->NO_SUCH_GROUP = "No Such Group: ";
    self->GOOD = ((Group*) [((Group*) [Group alloc]) init:"Good Guys" :((int16_t) 0)]);
    self->ENEMY = ((Group*) [((Group*) [Group alloc]) init:"Bad Guys" :((int16_t) 1)]);
    self->ENEMY_ON_LEVEL = ((Group*) [((Group*) [Group alloc]) init:"Bad Guys on Level" :((int16_t) 2)]);
    self->NONE = ((Group*) [((Group*) [Group alloc]) init:"Not On A Team" :((int16_t) 3)]);
    self->GOOD_ARRAY = ((Group**) java_array_from(sizeof(Group*), sizeof((Group*[]){ self->GOOD }) / sizeof(Group*), (Group*[]){ self->GOOD }));
    self->ENEMY_ARRAY = ((Group**) java_array_from(sizeof(Group*), sizeof((Group*[]){ self->ENEMY }) / sizeof(Group*), (Group*[]){ self->ENEMY }));
    self->ENEMY_ON_LEVEL_ARRAY = ((Group**) java_array_from(sizeof(Group*), sizeof((Group*[]){ self->ENEMY, self->ENEMY_ON_LEVEL }) / sizeof(Group*), (Group*[]){ self->ENEMY, self->ENEMY_ON_LEVEL }));
    self->NONE_ARRAY = ((Group**) java_array_from(sizeof(Group*), sizeof((Group*[]){ self->NONE }) / sizeof(Group*), (Group*[]){ self->NONE }));
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (BasicGroupFactory*) getInstance {
        if ((BasicGroupFactory_staticInit(), BasicGroupFactory_instance) == [NullUtil getInstance]->NULL_OBJECT) {
            BasicGroupFactory_instance = ((BasicGroupFactory*) [((BasicGroupFactory*) [BasicGroupFactory alloc]) init]);
        }
        return ((BasicGroupFactory*) (BasicGroupFactory_staticInit(), BasicGroupFactory_instance));
}

@end

