// Generated Code Do Not Modify
#include "org/allbinary/image/AnimationFrameToImageUtil.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "javax/microedition/lcdui/Image.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/image/GameFeatureImageCacheFactory.h"
#if __has_include("org/allbinary/image/ImageCache.h")
#include "org/allbinary/image/ImageCache.h"
#endif
#if __has_include("javax/microedition/lcdui/ImageCache.h")
#include "javax/microedition/lcdui/ImageCache.h"
#endif
#if __has_include("javax/microedition/lcdui/ImageCache.h")
#include "javax/microedition/lcdui/ImageCache.h"
#endif
#if __has_include("org/allbinary/animation/ImageCache.h")
#include "org/allbinary/animation/ImageCache.h"
#endif
#if __has_include("org/allbinary/image/ImageCache.h")
#include "org/allbinary/image/ImageCache.h"
#endif
#if __has_include("javax/microedition/lcdui/ImageCache.h")
#include "javax/microedition/lcdui/ImageCache.h"
#endif
#if __has_include("javax/microedition/lcdui/ImageCache.h")
#include "javax/microedition/lcdui/ImageCache.h"
#endif
#if __has_include("org/allbinary/animation/ImageCache.h")
#include "org/allbinary/animation/ImageCache.h"
#endif


static AnimationFrameToImageUtil* AnimationFrameToImageUtil_instance;

void AnimationFrameToImageUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    AnimationFrameToImageUtil_instance = [((AnimationFrameToImageUtil*) [AnimationFrameToImageUtil alloc]) init];
}

@implementation AnimationFrameToImageUtil

- (instancetype) init {
    self = [super init];
    return self;
}


+ (AnimationFrameToImageUtil*) getInstance {
        return (AnimationFrameToImageUtil_staticInit(), AnimationFrameToImageUtil_instance);
}


// throws Exception
- (Image*) getInstanceTranslate:(int32_t)width :(int32_t)height :(Animation*)animationInterface {
        Image* image = [[GameFeatureImageCacheFactory getInstance] get:java_objc_class_name((AnimationFrameToImageUtil_staticInit(), AnimationFrameToImageUtil_instance)) :((width * 3) >> 1) :((height * 3) >> 1)];
        Graphics* graphics = [image getGraphics];
        int32_t tranlateX = (width >> 2);
        int32_t tranlateY = (height >> 2);
        [graphics translate:tranlateX :tranlateY];
        [animationInterface paintXY:graphics :0 :0];
        [graphics translate:-tranlateX :-tranlateY];
        return image;
}


// throws Exception
- (Image*) getInstanceWH:(int32_t)width :(int32_t)height :(Animation*)animationInterface {
        Image* image = [[GameFeatureImageCacheFactory getInstance] get:java_objc_class_name((AnimationFrameToImageUtil_staticInit(), AnimationFrameToImageUtil_instance)) :width :height];
        Graphics* graphics = [image getGraphics];
        [animationInterface paintXY:graphics :0 :0];
        return image;
}

@end

