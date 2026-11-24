// Generated Code Do Not Modify
#include "org/allbinary/game/resource/FeatureResourceInitializationUtil.h"
#include "org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/game/resource/FeaturedResourceFactory.h"
#include "org/allbinary/game/resource/FeaturedResourceRelativeRelationshipFactory.h"


static FeatureResourceInitializationUtil* FeatureResourceInitializationUtil_instance;

void FeatureResourceInitializationUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    FeatureResourceInitializationUtil_instance = ((FeatureResourceInitializationUtil*) [((FeatureResourceInitializationUtil*) [FeatureResourceInitializationUtil alloc]) init]);
}

@implementation FeatureResourceInitializationUtil

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (FeatureResourceInitializationUtil*) getInstance {
        return (FeatureResourceInitializationUtil_staticInit(), FeatureResourceInitializationUtil_instance);
}


// throws Exception
- (void) initMethod:(int32_t)level {
        CommonStrings* commonStrings = [CommonStrings getInstance];
        [self->logUtil putF:commonStrings->START :self :commonStrings->INIT];
        FeaturedResourceFactory* featuredResourceFactory = [FeaturedAnimationInterfaceFactoryInterfaceFactory getInstance];
        [featuredResourceFactory initMethod:level];
        [[FeaturedResourceRelativeRelationshipFactory getInstance] initMethod:level];
}

@end

