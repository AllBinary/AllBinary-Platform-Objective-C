// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/feature/GameFeatureChoiceGroups.h"
#include "org/allbinary/logic/StdUtil.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/util/BasicArrayList.h"
#if __has_include("org/allbinary/logic/StdUtil.h")
#include "org/allbinary/logic/StdUtil.h"
#endif


static GameFeatureChoiceGroups* GameFeatureChoiceGroups_gameFeatureChoiceGroupsExclusive;
static GameFeatureChoiceGroups* GameFeatureChoiceGroups_gameFeatureChoiceGroupsMultiple;

void GameFeatureChoiceGroups_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    GameFeatureChoiceGroups_gameFeatureChoiceGroupsExclusive = ((GameFeatureChoiceGroups*) [((GameFeatureChoiceGroups*) [GameFeatureChoiceGroups alloc]) init]);
    GameFeatureChoiceGroups_gameFeatureChoiceGroupsMultiple = ((GameFeatureChoiceGroups*) [((GameFeatureChoiceGroups*) [GameFeatureChoiceGroups alloc]) init]);
}

@implementation GameFeatureChoiceGroups

- (void) initFields {
    self->hashtable = [[StdUtil getInstance] createHashtable];
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (GameFeatureChoiceGroups*) getExclusiveInstance {
        return (GameFeatureChoiceGroups_staticInit(), GameFeatureChoiceGroups_gameFeatureChoiceGroupsExclusive);
}


+ (GameFeatureChoiceGroups*) getMultipleInstance {
        return (GameFeatureChoiceGroups_staticInit(), GameFeatureChoiceGroups_gameFeatureChoiceGroupsMultiple);
}


- (ABHashtable*) get {
        return self->hashtable;
}


- (void) add:(const char*)name :(BasicArrayList*)list {
        [self->hashtable put:JAVA_BOX(name) :JAVA_BOX(list)];
}

@end

