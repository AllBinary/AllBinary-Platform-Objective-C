// Generated Code Do Not Modify
#include "org/allbinary/animation/text/CustomTextAnimationFactory.h"
#include "javax/microedition/lcdui/Font.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/AnimationBehaviorFactory.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/media/ScaleProperties.h"
#include "org/allbinary/animation/text/CustomTextAnimation.h"
#include "org/allbinary/animation/text/AdjustCustomTextAnimation.h"
#if __has_include("org/allbinary/graphics/color/BasicColorFactory.h")
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#endif



void CustomTextAnimationFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CustomTextAnimationFactory

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    
    self->basicColor = [BasicColorFactory getInstance]->BLACK;
    
    
    self->dx = 0;
    self->dy = 0;
    
    
}


+ (CustomTextAnimationFactory*) createDXY:(const char*)text :(int32_t)fontSize :(int32_t)dx :(int32_t)dy :(AnimationBehaviorFactory*)animationBehaviorFactory {
        CustomTextAnimationFactory* customTextAnimationFactory = ((CustomTextAnimationFactory*) [((CustomTextAnimationFactory*) [CustomTextAnimationFactory alloc]) init:text :fontSize :animationBehaviorFactory]);
        customTextAnimationFactory->dx = dx;
        customTextAnimationFactory->dy = dy;
        return customTextAnimationFactory;
}


- (instancetype) init:(const char*)text :(int32_t)fontSize :(AnimationBehaviorFactory*)animationBehaviorFactory {
    self = [super init];
    [self initFields];
        self->scaleProperties = ((ScaleProperties*) [((ScaleProperties*) [ScaleProperties alloc]) init]);
        self->text = text;
        self->scaleProperties->scaleHeight = fontSize - (fontSize / 4);
        self->initScaleHeight = self->scaleProperties->scaleHeight;
        self->animationBehaviorFactory = animationBehaviorFactory;
        self->font = [Font getFont:(Font_staticInit(), Font_FACE_SYSTEM) :(Font_staticInit(), Font_STYLE_PLAIN) :self->initScaleHeight];
    return self;
}


// throws Exception
- (Animation*) getInstance:(int32_t)instanceId {
        CustomTextAnimation* customTextAnimation = nullptr;
        if (self->dx != 0 || self->dy != 0) {
            customTextAnimation = ((AdjustCustomTextAnimation*) [((AdjustCustomTextAnimation*) [AdjustCustomTextAnimation alloc]) init:self->text :self->scaleProperties->scaleHeight :self->dx :self->dy :[self->animationBehaviorFactory getOrCreateInstance]]);
        } else {
            customTextAnimation = ((CustomTextAnimation*) [((CustomTextAnimation*) [CustomTextAnimation alloc]) init:self->text :self->scaleProperties->scaleHeight :[self->animationBehaviorFactory getOrCreateInstance]]);
        }
        [customTextAnimation setBasicColorP:self->basicColor];
        return customTextAnimation;
}


- (void) setInitialScale:(ScaleProperties*)scaleProperties {
}


- (int32_t) getWidth {
        return [self->font stringWidth:self->text];
}


- (int32_t) getHeight {
        return [self->font getHeight];
}

@end

