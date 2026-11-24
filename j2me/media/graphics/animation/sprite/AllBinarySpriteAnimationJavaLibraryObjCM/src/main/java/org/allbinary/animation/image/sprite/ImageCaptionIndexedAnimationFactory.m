// Generated Code Do Not Modify
#include "org/allbinary/animation/image/sprite/ImageCaptionIndexedAnimationFactory.h"
#include "javax/microedition/lcdui/Image.h"
#include "javax/microedition/lcdui/game/Sprite.h"
#include "javax/microedition/media/Player.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/AnimationBehaviorFactory.h"
#include "org/allbinary/animation/IndexedAnimation.h"
#include "org/allbinary/animation/caption/CaptionIndexedAnimation.h"
#include "org/allbinary/animation/image/ImageAnimation.h"
#include "org/allbinary/graphics/color/BasicColorUtil.h"
#include "org/allbinary/image/AnimationFactoryImageScaleUtil.h"
#include "org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil.h"
#include "org/allbinary/logic/communication/log/ForcedLogUtil.h"
#include "org/allbinary/media/ScaleProperties.h"
#include "org/allbinary/media/audio/Sound.h"
#include "org/allbinary/animation/image/sprite/SpriteIndexedAnimation.h"
#if __has_include("org/allbinary/graphics/color/BasicColorUtil.h")
#include "org/allbinary/graphics/color/BasicColorUtil.h"
#endif



void ImageCaptionIndexedAnimationFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ImageCaptionIndexedAnimationFactory

- (void) initFields {
    self->animationFactoryImageScaleUtil = [AnimationFactoryImageScaleUtil getInstance];
    self->animationFactorySpriteScaleUtil = [AnimationFactorySpriteScaleUtil getInstance];
    
    
    
    
    
    
    
    
    
    
    self->scaleProperties = (ScaleProperties_staticInit(), ScaleProperties_instance);
    
}


- (instancetype) init:(Image*)captionImage :(Image*)spriteMovieImage :(Sound*)soundInterface :(int32_t)frameWidth :(int32_t)frameHeight :(int32_t)captionDx :(int32_t)captionDy :(int32_t)dx :(int32_t)dy :(int32_t)time :(AnimationBehaviorFactory*)animationBehaviorFactory {
    self = [super init];
    [self initFields];
        if (animationBehaviorFactory == [AnimationBehaviorFactory getInstance]) {
            [ForcedLogUtil log:"Using default AnimationBehaviorFactory with IndexedAnimationFactory" :self];
        }
        self->captionImage = captionImage;
        self->spriteMovieImage = spriteMovieImage;
        self->frameWidth = frameWidth;
        self->frameHeight = frameHeight;
        self->captionDx = captionDx;
        self->captionDy = captionDy;
        self->dx = dx;
        self->dy = dy;
        self->time = time;
        self->soundInterface = soundInterface;
        self->animationBehaviorFactory = animationBehaviorFactory;
    return self;
}


// throws Exception
- (Animation*) getInstance:(int32_t)instanceId {
        Image* scaledImage = [self->animationFactoryImageScaleUtil createImage:self->captionImage :[self->captionImage getWidth] :[self->captionImage getHeight] :self->scaleProperties->scaleWidth :self->scaleProperties->scaleHeight];
        Animation* animationInterface = ((ImageAnimation*) [((ImageAnimation*) [ImageAnimation alloc]) init:scaledImage :[self->animationBehaviorFactory getOrCreateInstance]]);
        Sprite* sprite = [self->animationFactorySpriteScaleUtil createImage:self->spriteMovieImage :self->frameWidth :self->frameHeight :self->scaleProperties->scaleWidth :self->scaleProperties->scaleHeight];
        IndexedAnimation* movieIndexedAnimationInterface = ((SpriteIndexedAnimation*) [((SpriteIndexedAnimation*) [SpriteIndexedAnimation alloc]) init:sprite :self->spriteMovieImage :[BasicColorUtil getInstance]->ZERO_ARRAY :[self->animationBehaviorFactory getOrCreateInstance]]);
        Player* player = [self->soundInterface getPlayerP];
        if (player == nil) {
            java_throw(java_exception_new("Exception", "Sound Was not Initialized"));
        }
        return ((CaptionIndexedAnimation*) [((CaptionIndexedAnimation*) [CaptionIndexedAnimation alloc]) init:animationInterface :movieIndexedAnimationInterface :player :self->captionDx :self->captionDy :self->dx :self->dy :self->time :[self->animationBehaviorFactory getOrCreateInstance]]);
}


- (void) setInitialScale:(ScaleProperties*)scaleProperties {
        self->scaleProperties = scaleProperties;
}

@end

