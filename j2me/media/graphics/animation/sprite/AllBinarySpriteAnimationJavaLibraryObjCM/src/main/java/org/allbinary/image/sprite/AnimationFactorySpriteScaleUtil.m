// Generated Code Do Not Modify
#include "org/allbinary/image/sprite/AnimationFactorySpriteScaleUtil.h"
#include "javax/microedition/lcdui/Image.h"
#include "javax/microedition/lcdui/game/Sprite.h"
#include "org/allbinary/game/layer/SpriteFactory.h"
#include "org/allbinary/graphics/opengles/OpenGLUtil.h"
#include "org/allbinary/image/ImageCache.h"
#include "org/allbinary/image/ImageCacheFactory.h"
#include "org/allbinary/image/opengles/OpenGLESImageExclusionUtil.h"
#include "org/allbinary/logic/math/J2SEMath.h"
#include "org/allbinary/media/image/ImageScaleUtil.h"


static AnimationFactorySpriteScaleUtil* AnimationFactorySpriteScaleUtil_instance;

void AnimationFactorySpriteScaleUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    AnimationFactorySpriteScaleUtil_instance = ((AnimationFactorySpriteScaleUtil*) [((AnimationFactorySpriteScaleUtil*) [AnimationFactorySpriteScaleUtil alloc]) init]);
}

@implementation AnimationFactorySpriteScaleUtil

- (void) initFields {
    self->imageCache = [ImageCacheFactory getInstance];
    self->imageScaleUtil = [ImageScaleUtil getInstance];
    self->openGLUtil = [OpenGLUtil getInstance];
    self->j2seMath = [J2SEMath getInstance];
    self->openGLESImageExclusionUtil = [OpenGLESImageExclusionUtil getInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (AnimationFactorySpriteScaleUtil*) getInstance {
        return (AnimationFactorySpriteScaleUtil_staticInit(), AnimationFactorySpriteScaleUtil_instance);
}


// throws Exception
- (Sprite*) createImage:(Image*)image :(int32_t)width :(int32_t)height :(int32_t)scaleWidth :(int32_t)scaleHeight {
        SpriteFactory* spriteFactory = [SpriteFactory getInstance];
        Sprite* sprite = nullptr;
        Image* scaledImage = nullptr;
        if (scaleWidth != 0 && scaleHeight != 0) {
            float scaleX = (((float) scaleWidth)) / (((float) width));
            float scaleY = (((float) scaleHeight)) / (((float) height));
            if ((scaleX == 1.0f && scaleY == 1.0f) || (scaleX == 0.0f || scaleY == 0.0f)) {
                scaledImage = [self->openGLUtil addImage:image];
                sprite = [spriteFactory createSprite:scaledImage :width :height];
            } else {
                if ([self->openGLESImageExclusionUtil isCustomScaling:image]) {
                    int32_t width2 = [self->j2seMath round:((float) (scaleWidth)) - 0.5f];
                    int32_t height2 = [self->j2seMath round:((float) (scaleHeight)) - 0.5f];
                    int32_t multiplesOf16Width = width2 / 16;
                    int32_t by16Width = multiplesOf16Width * 16;
                    scaleX = (((float) by16Width)) / ((float) width);
                    int32_t multiplesOf16Height = height2 / 16;
                    int32_t by16Height = multiplesOf16Height * 16;
                    scaleY = (((float) by16Height)) / ((float) height);
                    if (scaleWidth < width) {
                        scaleX = scaleX * 2.35f;
                    }
                    if (scaleHeight < height) {
                        scaleY = scaleY * 2.35f;
                    }
                }
                scaledImage = [self->imageScaleUtil createImage2:self->imageCache :image :scaleX :1.0f :scaleY :1.0f :true];
                sprite = [spriteFactory createSprite:scaledImage :((int32_t) (((float) width) * scaleX)) :((int32_t) (((float) height) * scaleY))];
            }
        } else {
            scaledImage = [self->openGLUtil addImage:image];
            sprite = [spriteFactory createSprite:scaledImage :width :height];
        }
        return sprite;
}

@end

