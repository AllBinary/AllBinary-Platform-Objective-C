// Generated Code Do Not Modify
#include "org/allbinary/game/identification/GroupFactory.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/game/identification/Group.h"
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif


static GroupFactory* GroupFactory_instance;

void GroupFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GroupFactory_instance = ((GroupFactory*) [((GroupFactory*) [GroupFactory alloc]) init]);
}

@implementation GroupFactory

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->NULL_GROUP_ARRAY = ((Group**) java_array_new(sizeof(Group*), 0));
    self->list = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
    self->index = 0;
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (GroupFactory*) getInstance {
        return (GroupFactory_staticInit(), GroupFactory_instance);
}


- (Group*) getNextGroup {
        Group* group = ((Group*) self->list->objectArray[self->index]);
        self->index++;
        return group;
}


- (Group*) getNextGroupByName:(const char*)name {
        Group* group = [self getNextGroup];
        [group setName:name];
        return group;
}


- (void) initMethod:(int16_t)groups :(const char**)nameArray {
        StringMaker* stringMaker = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        StringUtil* stringUtil = [StringUtil getInstance];
        const char* TEAM = "Team ";
        [self->list clear];
        self->index = 0;
        int32_t size = [self->list size];
        const char* name = nullptr;
        while (size < ((int32_t) groups)) {
            name = stringUtil->EMPTY_STRING;
            if (size < java_array_length(nameArray)) {
                name = nameArray[size];
            } else {
                [stringMaker delete:0 :[stringMaker length]];
                name = [[[stringMaker append:TEAM] appendint:size] toString];
            }
            [self->list add:((Group*) [((Group*) [Group alloc]) init:name :((int16_t) (size + 3))])];
            size++;
        }
}

@end

