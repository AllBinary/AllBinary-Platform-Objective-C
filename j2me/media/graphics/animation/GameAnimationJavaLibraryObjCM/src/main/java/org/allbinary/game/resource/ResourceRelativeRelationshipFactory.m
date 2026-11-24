// Generated Code Do Not Modify
#include "org/allbinary/game/resource/ResourceRelativeRelationshipFactory.h"
#include "org/allbinary/graphics/RelativeRelationship.h"
#include "org/allbinary/logic/StdUtil.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/util/BasicArrayListUtil.h"
#include "org/allbinary/game/resource/ResourceRelativeRelationshipFactoryInterface.h"
#if __has_include("org/allbinary/logic/StdUtil.h")
#include "org/allbinary/logic/StdUtil.h"
#endif



void ResourceRelativeRelationshipFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ResourceRelativeRelationshipFactory

- (void) initFields {
    self->basicArrayListUtil = [BasicArrayListUtil getInstance];
    self->hashtable = [[StdUtil getInstance] createHashtable];
    self->initialized = false;
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


// throws Exception
- (void) initMethod:(int32_t)level {
        [self setInitialized:true];
}


// throws Exception
- (BasicArrayList*) getResourceRelativeRelationshipList:(const char*)resource {
        id listCanBeNull = [self->hashtable get:JAVA_BOX(resource)];
        if (listCanBeNull == nil) {
            return [self->basicArrayListUtil getImmutableInstance];
        }
        return ((BasicArrayList*) listCanBeNull);
}


// throws Exception
- (void) addResourceRelativeRelationship:(const char*)resource :(RelativeRelationship*)hardPoint {
        BasicArrayList* list = [self getResourceRelativeRelationshipList:resource];
        if (list == [self->basicArrayListUtil getImmutableInstance]) {
            list = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
        }
        [list add:hardPoint];
        [self->hashtable put:JAVA_BOX(resource) :JAVA_BOX(list)];
}


- (bool) isLoadingLevel:(int32_t)level {
        return false;
}


- (bool) isFeature {
        return false;
}


- (void) setInitialized:(bool)initialized {
        self->initialized = initialized;
}


- (bool) isInitialized {
        return self->initialized;
}

@end

