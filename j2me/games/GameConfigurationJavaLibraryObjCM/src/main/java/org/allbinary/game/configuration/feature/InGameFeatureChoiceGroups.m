// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/feature/InGameFeatureChoiceGroups.h"
#include "org/allbinary/logic/StdUtil.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/util/BasicArrayList.h"
#if __has_include("org/allbinary/logic/StdUtil.h")
#include "org/allbinary/logic/StdUtil.h"
#endif


static InGameFeatureChoiceGroups* InGameFeatureChoiceGroups_gameFeatureChoiceGroupsExclusive;
static InGameFeatureChoiceGroups* InGameFeatureChoiceGroups_gameFeatureChoiceGroupsMultiple;

void InGameFeatureChoiceGroups_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    InGameFeatureChoiceGroups_gameFeatureChoiceGroupsExclusive = ((InGameFeatureChoiceGroups*) [((InGameFeatureChoiceGroups*) [InGameFeatureChoiceGroups alloc]) init]);
    InGameFeatureChoiceGroups_gameFeatureChoiceGroupsMultiple = ((InGameFeatureChoiceGroups*) [((InGameFeatureChoiceGroups*) [InGameFeatureChoiceGroups alloc]) init]);
}

@implementation InGameFeatureChoiceGroups

- (void) initFields {
    self->hashtable = [[StdUtil getInstance] createHashtable];
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (InGameFeatureChoiceGroups*) getExclusiveInstance {
        return (InGameFeatureChoiceGroups_staticInit(), InGameFeatureChoiceGroups_gameFeatureChoiceGroupsExclusive);
}


+ (InGameFeatureChoiceGroups*) getMultipleInstance {
        return (InGameFeatureChoiceGroups_staticInit(), InGameFeatureChoiceGroups_gameFeatureChoiceGroupsMultiple);
}


- (ABHashtable*) get {
        return self->hashtable;
}


- (void) add:(const char*)name :(BasicArrayList*)list {
        [self->hashtable put:JAVA_BOX(name) :JAVA_BOX(list)];
}

@end

