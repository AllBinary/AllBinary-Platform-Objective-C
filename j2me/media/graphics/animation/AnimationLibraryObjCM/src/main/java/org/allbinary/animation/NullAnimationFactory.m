// Generated Code Do Not Modify
#include "org/allbinary/animation/NullAnimationFactory.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/media/ScaleProperties.h"
#include "org/allbinary/animation/AnimationInterfaceFactoryInterface.h"
#include "org/allbinary/animation/ProceduralAnimationInterfaceFactoryInterface.h"
#include "org/allbinary/animation/Animation.h"


NullAnimationFactory* NullAnimationFactory_NULL_NOT_FOR_USE_ANIMATION_FACTORY;
static NullAnimationFactory* NullAnimationFactory_NULL_ANIMATION_FACTORY;

void NullAnimationFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    NullAnimationFactory_NULL_NOT_FOR_USE_ANIMATION_FACTORY = [((NullAnimationFactory*) [NullAnimationFactory alloc]) init];
    NullAnimationFactory_NULL_ANIMATION_FACTORY = [((NullAnimationFactory*) [NullAnimationFactory alloc]) init];
}

@implementation NullAnimationFactory

- (void) initFields {
    self->NULL_ANIMATION = [((Animation*) [Animation alloc]) init]
#if 0 /* Java anonymous class body: implement it as a named subclass */
        

    - (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
    }
#endif
;
    self->EMPTY_ARRAY = ((Animation**) java_array_new(sizeof(Animation*), 0));
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (NullAnimationFactory*) getFactoryInstance {
        return (NullAnimationFactory_staticInit(), NullAnimationFactory_NULL_ANIMATION_FACTORY);
}


- (Animation*) getInstance:(int32_t)instanceId {
        return self->NULL_ANIMATION;
}


// throws Exception
- (Animation*) getInstanceAnimation:(Animation*)animationInterface {
        return self->NULL_ANIMATION;
}


- (void) setInitialScale:(ScaleProperties*)scaleProperties {
}

@end

