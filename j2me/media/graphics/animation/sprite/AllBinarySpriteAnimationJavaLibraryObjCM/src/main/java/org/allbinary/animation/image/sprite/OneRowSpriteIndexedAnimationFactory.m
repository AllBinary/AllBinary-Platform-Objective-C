// Generated Code Do Not Modify
#include "org/allbinary/animation/image/sprite/OneRowSpriteIndexedAnimationFactory.h"
#include "javax/microedition/lcdui/Image.h"
#include "javax/microedition/lcdui/game/Sprite.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/AnimationBehaviorFactory.h"
#include "org/allbinary/graphics/color/BasicColorUtil.h"
#include "org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil.h"
#include "org/allbinary/logic/math/PrimitiveIntUtil.h"
#include "org/allbinary/animation/image/sprite/SpriteIndexedAnimation.h"
#include "org/allbinary/animation/image/sprite/AdjustedSpriteIndexedAnimation.h"
#if __has_include("org/allbinary/graphics/color/BasicColorUtil.h")
#include "org/allbinary/graphics/color/BasicColorUtil.h"
#endif
#if __has_include("org/allbinary/graphics/color/BasicColorUtil.h")
#include "org/allbinary/graphics/color/BasicColorUtil.h"
#endif



void OneRowSpriteIndexedAnimationFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation OneRowSpriteIndexedAnimationFactory

- (void) initFields {
    self->animationFactorySpriteScaleUtil = [AnimationFactorySpriteScaleUtil getInstance];
}


// throws Exception
+ (OneRowSpriteIndexedAnimationFactory*) createFactoryDX:(Image*)image :(int32_t)dx :(AnimationBehaviorFactory*)animationBehaviorFactory {
        OneRowSpriteIndexedAnimationFactory* oneRowSpriteIndexedAnimationFactory = ((OneRowSpriteIndexedAnimationFactory*) [((OneRowSpriteIndexedAnimationFactory*) [OneRowSpriteIndexedAnimationFactory alloc]) init:image :[PrimitiveIntUtil getArrayInstance] :[image getHeight] :[image getHeight] :0 :0 :animationBehaviorFactory]);
        [oneRowSpriteIndexedAnimationFactory initW:dx];
        return oneRowSpriteIndexedAnimationFactory;
}


// throws Exception
+ (OneRowSpriteIndexedAnimationFactory*) createFactoryDXY:(Image*)image :(int32_t)dx :(int32_t)dy :(AnimationBehaviorFactory*)animationBehaviorFactory {
        OneRowSpriteIndexedAnimationFactory* oneRowSpriteIndexedAnimationFactory = ((OneRowSpriteIndexedAnimationFactory*) [((OneRowSpriteIndexedAnimationFactory*) [OneRowSpriteIndexedAnimationFactory alloc]) init:image :[PrimitiveIntUtil getArrayInstance] :[image getHeight] :[image getHeight] :0 :0 :animationBehaviorFactory]);
        [oneRowSpriteIndexedAnimationFactory initMethod:dx :dy];
        return oneRowSpriteIndexedAnimationFactory;
}


// throws Exception
+ (OneRowSpriteIndexedAnimationFactory*) createFactoryWH:(Image*)image :(int32_t)width :(int32_t)height :(AnimationBehaviorFactory*)animationBehaviorFactory {
        return ((OneRowSpriteIndexedAnimationFactory*) [((OneRowSpriteIndexedAnimationFactory*) [OneRowSpriteIndexedAnimationFactory alloc]) init:image :[PrimitiveIntUtil getArrayInstance] :width :height :0 :0 :animationBehaviorFactory]);
}


// throws Exception
+ (OneRowSpriteIndexedAnimationFactory*) createFactory:(Image*)image :(AnimationBehaviorFactory*)animationBehaviorFactory {
        return ((OneRowSpriteIndexedAnimationFactory*) [((OneRowSpriteIndexedAnimationFactory*) [OneRowSpriteIndexedAnimationFactory alloc]) init:image :[PrimitiveIntUtil getArrayInstance] :[image getHeight] :[image getHeight] :0 :0 :animationBehaviorFactory]);
}


- (instancetype) init:(Image*)image :(int32_t*)sequenceArray :(int32_t)width :(int32_t)height :(int32_t)dx :(int32_t)dy :(AnimationBehaviorFactory*)animationBehaviorFactory {
        self = [super init:image :sequenceArray :width :height :dx :dy :animationBehaviorFactory];
        [self initFields];
    return self;
}


- (void) initMethod:(int32_t)dx :(int32_t)dy {
        self->animationFactoryInitializationVisitor->dx = dx;
        self->animationFactoryInitializationVisitor->dy = dy;
}


- (void) initW:(int32_t)dx {
        [self initMethod:dx :0];
        self->animationFactoryInitializationVisitor->dx += -(self->animationFactoryInitializationVisitor->width >> 2);
}


// throws Exception
- (Animation*) getInstance:(int32_t)instanceId {
        Sprite* sprite = [self->animationFactorySpriteScaleUtil createImage:[self getImage] :self->animationFactoryInitializationVisitor->width :self->animationFactoryInitializationVisitor->height :self->scaleProperties->scaleWidth :self->scaleProperties->scaleHeight];
        if (self->animationFactoryInitializationVisitor->dx != 0 || self->animationFactoryInitializationVisitor->dy != 0) {
            return ((AdjustedSpriteIndexedAnimation*) [((AdjustedSpriteIndexedAnimation*) [AdjustedSpriteIndexedAnimation alloc]) init:sprite :[self getImage] :[BasicColorUtil getInstance]->ZERO_ARRAY :self->animationFactoryInitializationVisitor->dx :self->animationFactoryInitializationVisitor->dy :[self->animationBehaviorFactory getOrCreateInstance]]);
        } else {
            return ((SpriteIndexedAnimation*) [((SpriteIndexedAnimation*) [SpriteIndexedAnimation alloc]) init:sprite :[self getImage] :[BasicColorUtil getInstance]->ZERO_ARRAY :[self->animationBehaviorFactory getOrCreateInstance]]);
        }
}

@end

