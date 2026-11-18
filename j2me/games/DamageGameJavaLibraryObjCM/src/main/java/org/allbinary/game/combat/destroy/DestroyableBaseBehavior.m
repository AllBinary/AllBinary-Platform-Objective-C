// Generated Code Do Not Modify
#include "org/allbinary/game/combat/destroy/DestroyableBaseBehavior.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/game/combat/destroy/DestroyableInterface.h"


static DestroyableBaseBehavior* DestroyableBaseBehavior_instance;

void DestroyableBaseBehavior_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    DestroyableBaseBehavior_instance = [((DestroyableBaseBehavior*) [DestroyableBaseBehavior alloc]) init];
}

@implementation DestroyableBaseBehavior

- (instancetype) init {
    self = [super init];
    return self;
}


+ (DestroyableBaseBehavior*) getInstance {
        return (DestroyableBaseBehavior_staticInit(), DestroyableBaseBehavior_instance);
}


- (const char*) getName {
        return java_objc_class_name(self);
}


// throws Exception
- (bool) isDestroyed {
        java_throw(java_exception_new("Exception", [CommonStrings getInstance]->NOT_IMPLEMENTED));
}


- (void) setDestroyed:(bool)destroyed {
}

@end

