// Generated Code Do Not Modify
#include "org/allbinary/animation/image/sprite/AllBinarySpriteRotationAnimationFactory.h"
#include "javax/microedition/lcdui/Image.h"
#include "javax/microedition/lcdui/game/Sprite.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/AnimationBehaviorFactory.h"
#include "org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil.h"
#include "org/allbinary/logic/communication/log/ForcedLogUtil.h"
#include "org/allbinary/logic/math/PrimitiveIntUtil.h"
#include "org/allbinary/animation/image/sprite/AllBinarySpriteRotationAnimation.h"
#include "org/allbinary/animation/image/sprite/AllBinaryAdjustedSpriteRotationAnimation.h"



void AllBinarySpriteRotationAnimationFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AllBinarySpriteRotationAnimationFactory

- (void) initFields {
    self->animationFactorySpriteScaleUtil = [AnimationFactorySpriteScaleUtil getInstance];
}


// throws Exception
+ (AllBinarySpriteRotationAnimationFactory*) createWHDY:(Image*)image :(int32_t)dx :(int32_t)dy :(AnimationBehaviorFactory*)animationBehaviorFactory {
        AllBinarySpriteRotationAnimationFactory* spriteRotationAnimationFactory = ((AllBinarySpriteRotationAnimationFactory*) [((AllBinarySpriteRotationAnimationFactory*) [AllBinarySpriteRotationAnimationFactory alloc]) init:image :[PrimitiveIntUtil getArrayInstance] :([image getHeight] >> 2) :([image getHeight] >> 2) :0 :0 :animationBehaviorFactory]);
        [spriteRotationAnimationFactory initWH:dx :dy];
        return spriteRotationAnimationFactory;
}


// throws Exception
+ (AllBinarySpriteRotationAnimationFactory*) createWH:(Image*)image :(AnimationBehaviorFactory*)animationBehaviorFactory {
        return [AllBinarySpriteRotationAnimationFactory createWHDY:image :0 :0 :animationBehaviorFactory];
}


// throws Exception
+ (AllBinarySpriteRotationAnimationFactory*) createDXY:(Image*)image :(int32_t)dx :(int32_t)dy :(AnimationBehaviorFactory*)animationBehaviorFactory {
        AllBinarySpriteRotationAnimationFactory* spriteRotationAnimationFactory = ((AllBinarySpriteRotationAnimationFactory*) [((AllBinarySpriteRotationAnimationFactory*) [AllBinarySpriteRotationAnimationFactory alloc]) init:image :[PrimitiveIntUtil getArrayInstance] :[image getHeight] :[image getHeight] :0 :0 :animationBehaviorFactory]);
        [spriteRotationAnimationFactory initMethod:dx :dy];
        return spriteRotationAnimationFactory;
}


// throws Exception
+ (AllBinarySpriteRotationAnimationFactory*) createDXYQ:(Image*)image :(int32_t)dx :(int32_t)dy :(AnimationBehaviorFactory*)animationBehaviorFactory {
        AllBinarySpriteRotationAnimationFactory* spriteRotationAnimationFactory = ((AllBinarySpriteRotationAnimationFactory*) [((AllBinarySpriteRotationAnimationFactory*) [AllBinarySpriteRotationAnimationFactory alloc]) init:image :[PrimitiveIntUtil getArrayInstance] :([image getHeight] >> 2) :([image getHeight] >> 2) :0 :0 :animationBehaviorFactory]);
        [spriteRotationAnimationFactory initMethod:dx :dy];
        return spriteRotationAnimationFactory;
}


// throws Exception
+ (AllBinarySpriteRotationAnimationFactory*) createQ:(Image*)image :(AnimationBehaviorFactory*)animationBehaviorFactory {
        return ((AllBinarySpriteRotationAnimationFactory*) [((AllBinarySpriteRotationAnimationFactory*) [AllBinarySpriteRotationAnimationFactory alloc]) init:image :[PrimitiveIntUtil getArrayInstance] :([image getHeight] >> 2) :([image getHeight] >> 2) :0 :0 :animationBehaviorFactory]);
}


// throws Exception
+ (AllBinarySpriteRotationAnimationFactory*) createWHF:(Image*)image :(AnimationBehaviorFactory*)animationBehaviorFactory {
        return ((AllBinarySpriteRotationAnimationFactory*) [((AllBinarySpriteRotationAnimationFactory*) [AllBinarySpriteRotationAnimationFactory alloc]) init:image :[PrimitiveIntUtil getArrayInstance] :[image getHeight] :[image getHeight] :0 :0 :animationBehaviorFactory]);
}


- (instancetype) init:(Image*)image :(int32_t*)sequenceArray :(int32_t)width :(int32_t)height :(int32_t)dx :(int32_t)dy :(AnimationBehaviorFactory*)animationBehaviorFactory {
        self = [super init:image :sequenceArray :width :height :dx :dy :animationBehaviorFactory];
        [self initFields];
        if (animationBehaviorFactory == [AnimationBehaviorFactory getInstance]) {
            [ForcedLogUtil log:"Using default AnimationBehaviorFactory with IndexedAnimationFactory" :self];
        }
    return self;
}


- (void) initMethod:(int32_t)dx :(int32_t)dy {
        self->animationFactoryInitializationVisitor->dx = dx;
        self->animationFactoryInitializationVisitor->dy = dy;
}


- (void) initWH:(int32_t)dx :(int32_t)dy {
        [self initMethod:dx :dy];
        self->animationFactoryInitializationVisitor->dx += -self->animationFactoryInitializationVisitor->width / 5;
        self->animationFactoryInitializationVisitor->dy += -self->animationFactoryInitializationVisitor->height / 5;
}


// throws Exception
- (Animation*) getInstance:(int32_t)instanceId {
        Sprite* sprite = [self->animationFactorySpriteScaleUtil createImage:[self getImage] :self->animationFactoryInitializationVisitor->width :self->animationFactoryInitializationVisitor->height :self->scaleProperties->scaleWidth :self->scaleProperties->scaleHeight];
        if (self->animationFactoryInitializationVisitor->dx != 0 || self->animationFactoryInitializationVisitor->dy != 0) {
            return ((AllBinaryAdjustedSpriteRotationAnimation*) [((AllBinaryAdjustedSpriteRotationAnimation*) [AllBinaryAdjustedSpriteRotationAnimation alloc]) init:sprite :[self getImage] :self->animationFactoryInitializationVisitor->dx :self->animationFactoryInitializationVisitor->dy :[self->animationBehaviorFactory getOrCreateInstance]]);
        } else {
            return ((AllBinarySpriteRotationAnimation*) [((AllBinarySpriteRotationAnimation*) [AllBinarySpriteRotationAnimation alloc]) init:sprite :[self getImage] :[self->animationBehaviorFactory getOrCreateInstance]]);
        }
}


// throws Exception
- (Animation*) getInstanceAnimation:(Animation*)animationInterface {
        return [self getInstance:0];
}

@end

