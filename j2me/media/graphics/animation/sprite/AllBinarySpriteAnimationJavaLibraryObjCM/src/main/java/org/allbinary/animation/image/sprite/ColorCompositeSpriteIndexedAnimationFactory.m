// Generated Code Do Not Modify
#include "org/allbinary/animation/image/sprite/ColorCompositeSpriteIndexedAnimationFactory.h"
#include "javax/microedition/lcdui/Image.h"
#include "javax/microedition/lcdui/game/Sprite.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/AnimationBehaviorFactory.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil.h"
#include "org/allbinary/logic/math/PrimitiveIntUtil.h"
#include "org/allbinary/animation/image/sprite/SpriteIndexedAnimation.h"



void ColorCompositeSpriteIndexedAnimationFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ColorCompositeSpriteIndexedAnimationFactory

- (void) initFields {
    self->animationFactorySpriteScaleUtil = [AnimationFactorySpriteScaleUtil getInstance];
    
}


- (instancetype) init:(Image*)image :(BasicColor**)basicColorArray :(int32_t)width :(int32_t)height :(AnimationBehaviorFactory*)animationBehaviorFactory {
        self = [super init:image :[PrimitiveIntUtil getArrayInstance] :width :height :0 :0 :animationBehaviorFactory];
        [self initFields];
        self->basicColorArray = basicColorArray;
    return self;
}


// throws Exception
- (Animation*) getInstance:(int32_t)instanceId {
        Sprite* sprite = [self->animationFactorySpriteScaleUtil createImage:[self getImage] :self->animationFactoryInitializationVisitor->width :self->animationFactoryInitializationVisitor->height :self->scaleProperties->scaleWidth :self->scaleProperties->scaleHeight];
        return [((SpriteIndexedAnimation*) [SpriteIndexedAnimation alloc]) init:sprite :[self getImage] :self->basicColorArray :[self->animationBehaviorFactory getOrCreateInstance]];
}


// throws Exception
- (Animation*) getInstanceAnimation:(Animation*)animationInterface {
        return [self getInstance:0];
}

@end

