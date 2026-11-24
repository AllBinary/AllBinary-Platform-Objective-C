// Generated Code Do Not Modify
#include "org/allbinary/game/layer/LevelLayersFinder.h"
#include "org/allbinary/layer/Layer.h"
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/util/EnumerationUtil.h"


static LevelLayersFinder* LevelLayersFinder_instance;

void LevelLayersFinder_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    LevelLayersFinder_instance = ((LevelLayersFinder*) [((LevelLayersFinder*) [LevelLayersFinder alloc]) init]);
}

@implementation LevelLayersFinder

- (void) initFields {
    self->enumerationUtil = [EnumerationUtil getInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (LevelLayersFinder*) getInstance {
        return (LevelLayersFinder_staticInit(), LevelLayersFinder_instance);
}


- (BasicArrayList*) get:(ABHashtable*)hashtable {
        SmallIntegerSingletonFactory* smallIntegerSingletonFactory = [SmallIntegerSingletonFactory getInstance];
        BasicArrayList* list = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
        Enumeration* enumeration = [hashtable keys];
        ABHashtable* layerHashtableCanBeNull = nullptr;
        int32_t integerCanBeNull = 0;
        int32_t cachedIntegerCanBeNull = 0;
        while ([self->enumerationUtil hasMoreElements:enumeration]) {
            layerHashtableCanBeNull = ((ABHashtable*) [hashtable get:JAVA_BOX(((id) [self->enumerationUtil nextElement:enumeration]))]);
            integerCanBeNull = ((int32_t) [layerHashtableCanBeNull get:JAVA_BOX(((id) (Layer_staticInit(), Layer_ID)))]);
            cachedIntegerCanBeNull = [smallIntegerSingletonFactory getAt:((int32_t) (integerCanBeNull))];
            if (![list contains:JAVA_BOX(cachedIntegerCanBeNull)]) {
                [list add:JAVA_BOX(cachedIntegerCanBeNull)];
            }
        }
        return list;
}

@end

