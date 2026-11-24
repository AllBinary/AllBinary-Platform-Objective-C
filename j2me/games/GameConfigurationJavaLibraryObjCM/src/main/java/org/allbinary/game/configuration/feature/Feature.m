// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/feature/Feature.h"
#include "org/allbinary/game/configuration/event/ChangedGameFeatureListener.h"
#include "org/allbinary/logic/StdUtil.h"
#include "org/allbinary/util/ABHashtable.h"
#if __has_include("org/allbinary/logic/StdUtil.h")
#include "org/allbinary/logic/StdUtil.h"
#endif
#if __has_include("org/allbinary/game/configuration/event/ChangedGameFeatureListener.h")
#include "org/allbinary/game/configuration/event/ChangedGameFeatureListener.h"
#endif


static ABHashtable* Feature_hashtable;

void Feature_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    Feature_hashtable = [[StdUtil getInstance] createHashtable];
}

@implementation Feature

- (void) initFields {
    
}


- (instancetype) init:(const char*)name {
    self = [super init];
    [self initFields];
        self->name = name;
        [Feature add:name :self];
        [[ChangedGameFeatureListener getInstance] add:self];
    return self;
}


+ (Feature*) getInstance:(const char*)name {
        return ((Feature*) [(Feature_staticInit(), Feature_hashtable) get:JAVA_BOX(name)]);
}


+ (void) add:(const char*)name :(Feature*)gameFeature {
        [(Feature_staticInit(), Feature_hashtable) put:JAVA_BOX(name) :JAVA_BOX(gameFeature)];
}


- (const char*) toString {
        return [self getName];
}


- (const char*) getName {
        return self->name;
}

@end

