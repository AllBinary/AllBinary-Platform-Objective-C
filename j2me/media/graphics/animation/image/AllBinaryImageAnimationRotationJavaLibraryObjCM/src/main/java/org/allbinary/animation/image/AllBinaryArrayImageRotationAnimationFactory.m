// Generated Code Do Not Modify
#include "org/allbinary/animation/image/AllBinaryArrayImageRotationAnimationFactory.h"
#include "javax/microedition/lcdui/Image.h"
#include "javax/microedition/lcdui/NullImage.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/AnimationBehaviorFactory.h"
#include "org/allbinary/game/configuration/GameConfigurationCentral.h"
#include "org/allbinary/logic/math/PrimitiveIntUtil.h"
#include "org/allbinary/math/AngleFactory.h"
#include "org/allbinary/math/AngleInfo.h"
#include "org/allbinary/media/image/ImageToRotationImageArrayUtil.h"
#include "org/allbinary/animation/image/BaseImageAnimationFactory.h"
#include "org/allbinary/animation/image/ImageArrayRotationAnimation.h"
#include "org/allbinary/animation/image/AdjustedImageArrayRotationAnimation.h"



void AllBinaryArrayImageRotationAnimationFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AllBinaryArrayImageRotationAnimationFactory

- (void) initFields {
    self->imageArray = (NullImage_staticInit(), NullImage_NULL_IMAGE_ARRAY);
    
}


// throws Exception
+ (AllBinaryArrayImageRotationAnimationFactory*) createFactory:(Image*)image :(int32_t)dx :(int32_t)dy {
        AllBinaryArrayImageRotationAnimationFactory* arrayImageRotationAnimationFactory = [((AllBinaryArrayImageRotationAnimationFactory*) [AllBinaryArrayImageRotationAnimationFactory alloc]) init:image :[image getWidth] :[image getHeight] :((int32_t) [AngleFactory getInstance]->TOTAL_ANGLE) / [[GameConfigurationCentral getInstance] getGameControlFidelity] :[AnimationBehaviorFactory getInstance]];
        [arrayImageRotationAnimationFactory initDXY:dx :dy];
        return arrayImageRotationAnimationFactory;
}


// throws Exception
+ (AllBinaryArrayImageRotationAnimationFactory*) createFactoryA:(Image*)image :(int32_t)dx :(int32_t)dy :(int32_t)angleIncrement {
        AllBinaryArrayImageRotationAnimationFactory* arrayImageRotationAnimationFactory = [((AllBinaryArrayImageRotationAnimationFactory*) [AllBinaryArrayImageRotationAnimationFactory alloc]) init:image :[image getWidth] :[image getHeight] :angleIncrement :[AnimationBehaviorFactory getInstance]];
        [arrayImageRotationAnimationFactory initDXY:dx :dy];
        return arrayImageRotationAnimationFactory;
}


- (instancetype) init:(Image*)image :(int32_t)width :(int32_t)height :(int32_t)angleIncrement :(AnimationBehaviorFactory*)animationBehaviorFactory {
        self = [super init:image :[PrimitiveIntUtil getArrayInstance] :width :height :0 :0 :animationBehaviorFactory];
        [self initFields];
        self->angleIncrement = angleIncrement;
        [self init_];
    return self;
}


// throws Exception
- (void) init_ {
        [self setImageArray:[[ImageToRotationImageArrayUtil getInstance] generate:[self getImage] :[self getAngleIncrement] :((int32_t) [AngleFactory getInstance]->TOTAL_ANGLE)]];
}


- (void) initDXY:(int32_t)dx :(int32_t)dy {
        self->animationFactoryInitializationVisitor->dx = dx;
        self->animationFactoryInitializationVisitor->dy = dy;
        self->animationFactoryInitializationVisitor->originalDx = dx;
        self->animationFactoryInitializationVisitor->originalDy = dy;
}


// throws Exception
- (Animation*) getInstance:(int32_t)instanceId {
        Image** scaledImageArray = ((Image**) java_array_new(sizeof(Image*), java_array_length(self->imageArray)));
        int32_t size = java_array_length(scaledImageArray);
        Image* image = [self getImage];
        for (int32_t index = 0; index < size; index++) {
            scaledImageArray[index] = [self->animationFactoryImageScaleUtil createImage:image :[image getWidth] :[image getHeight] :self->scaleProperties->scaleWidth :self->scaleProperties->scaleHeight];
        }
        if (self->animationFactoryInitializationVisitor->dx != 0 || self->animationFactoryInitializationVisitor->dy != 0) {
            [self->animationFactoryImageScaleUtil processAdjust:self];
            return [((AdjustedImageArrayRotationAnimation*) [AdjustedImageArrayRotationAnimation alloc]) init:scaledImageArray :[AngleInfo getInstance:((int16_t) [self getAngleIncrement])] :((int32_t) [AngleFactory getInstance]->TOTAL_ANGLE) :self->animationFactoryInitializationVisitor->dx :self->animationFactoryInitializationVisitor->dy :[self->animationBehaviorFactory getOrCreateInstance]];
        } else {
            return [((ImageArrayRotationAnimation*) [ImageArrayRotationAnimation alloc]) init:scaledImageArray :[AngleInfo getInstance:((int16_t) [self getAngleIncrement])] :((int32_t) [AngleFactory getInstance]->TOTAL_ANGLE) :[self->animationBehaviorFactory getOrCreateInstance]];
        }
}


- (void) setImageArray:(Image**)imageArray {
        self->imageArray = imageArray;
}


- (int32_t) getAngleIncrement {
        return self->angleIncrement;
}

@end

