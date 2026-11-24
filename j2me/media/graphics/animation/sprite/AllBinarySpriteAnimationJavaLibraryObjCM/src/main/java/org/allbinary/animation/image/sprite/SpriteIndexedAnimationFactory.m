// Generated Code Do Not Modify
#include "org/allbinary/animation/image/sprite/SpriteIndexedAnimationFactory.h"
#include "javax/microedition/lcdui/Image.h"
#include "javax/microedition/lcdui/game/Sprite.h"
#include "org/allbinary/AndroidUtil.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/AnimationBehaviorFactory.h"
#include "org/allbinary/graphics/color/BasicColor.h"
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



void SpriteIndexedAnimationFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation SpriteIndexedAnimationFactory

- (void) initFields {
    self->animationFactorySpriteScaleUtil = [AnimationFactorySpriteScaleUtil getInstance];
    self->basicColorArray = [BasicColorUtil getInstance]->ZERO_ARRAY;
}


// throws Exception
+ (SpriteIndexedAnimationFactory*) createCWHDXY:(Image*)image :(BasicColor**)basicColorArray :(int32_t)width :(int32_t)height :(int32_t)dx :(int32_t)dy :(AnimationBehaviorFactory*)animationBehaviorFactory {
        return ((SpriteIndexedAnimationFactory*) [((SpriteIndexedAnimationFactory*) [SpriteIndexedAnimationFactory alloc]) init:image :basicColorArray :[PrimitiveIntUtil getArrayInstance] :width :height :dx :dy :animationBehaviorFactory]);
}


// throws Exception
+ (SpriteIndexedAnimationFactory*) createCWH:(Image*)image :(BasicColor**)basicColorArray :(int32_t)width :(int32_t)height :(AnimationBehaviorFactory*)animationBehaviorFactory {
        SpriteIndexedAnimationFactory* spriteIndexedAnimationFactory = ((SpriteIndexedAnimationFactory*) [((SpriteIndexedAnimationFactory*) [SpriteIndexedAnimationFactory alloc]) init:image :basicColorArray :[PrimitiveIntUtil getArrayInstance] :width :height :0 :0 :animationBehaviorFactory]);
        [spriteIndexedAnimationFactory initHWH];
        return spriteIndexedAnimationFactory;
}


// throws Exception
+ (SpriteIndexedAnimationFactory*) createWH:(Image*)image :(int32_t)width :(int32_t)height :(AnimationBehaviorFactory*)animationBehaviorFactory {
        return ((SpriteIndexedAnimationFactory*) [((SpriteIndexedAnimationFactory*) [SpriteIndexedAnimationFactory alloc]) init:image :[BasicColorUtil getInstance]->ZERO_ARRAY :[PrimitiveIntUtil getArrayInstance] :width :height :0 :0 :animationBehaviorFactory]);
}


- (instancetype) init:(Image*)image :(BasicColor**)basicColorArray :(int32_t*)sequenceArray :(int32_t)width :(int32_t)height :(int32_t)dx :(int32_t)dy :(AnimationBehaviorFactory*)animationBehaviorFactory {
        self = [super init:image :sequenceArray :width :height :dx :dy :animationBehaviorFactory];
        [self initFields];
        self->basicColorArray = basicColorArray;
    return self;
}


- (void) initHWH {
        self->animationFactoryInitializationVisitor->dx = -(self->animationFactoryInitializationVisitor->width >> 2);
        self->animationFactoryInitializationVisitor->dy = -(self->animationFactoryInitializationVisitor->height >> 2);
        if ([AndroidUtil isAndroid]) {
            self->animationFactoryInitializationVisitor->dx += 3;
        }
}


// throws Exception
- (Animation*) getInstance:(int32_t)instanceId {
        Sprite* sprite = [self->animationFactorySpriteScaleUtil createImage:[self getImage] :self->animationFactoryInitializationVisitor->width :self->animationFactoryInitializationVisitor->height :self->scaleProperties->scaleWidth :self->scaleProperties->scaleHeight];
        if (self->animationFactoryInitializationVisitor->dx != 0 || self->animationFactoryInitializationVisitor->dy != 0) {
            return ((AdjustedSpriteIndexedAnimation*) [((AdjustedSpriteIndexedAnimation*) [AdjustedSpriteIndexedAnimation alloc]) init:sprite :[self getImage] :self->basicColorArray :self->animationFactoryInitializationVisitor->dx :self->animationFactoryInitializationVisitor->dy :[self->animationBehaviorFactory getOrCreateInstance]]);
        } else {
            return ((SpriteIndexedAnimation*) [((SpriteIndexedAnimation*) [SpriteIndexedAnimation alloc]) init:sprite :[self getImage] :self->basicColorArray :[self->animationBehaviorFactory getOrCreateInstance]]);
        }
}


// throws Exception
- (Animation*) getInstanceAnimation:(Animation*)animationInterface {
        return [self getInstance:0];
}

@end

