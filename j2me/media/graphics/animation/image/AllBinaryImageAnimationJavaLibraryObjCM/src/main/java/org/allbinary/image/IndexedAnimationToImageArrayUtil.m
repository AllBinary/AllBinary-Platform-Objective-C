// Generated Code Do Not Modify
#include "org/allbinary/image/IndexedAnimationToImageArrayUtil.h"
#include "javax/microedition/lcdui/Image.h"
#include "org/allbinary/animation/IndexedAnimation.h"
#include "org/allbinary/image/AnimationFrameToImageUtil.h"



void IndexedAnimationToImageArrayUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation IndexedAnimationToImageArrayUtil

- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
+ (Image**) getInstance:(int32_t)width :(int32_t)height :(IndexedAnimation*)sequentialAnimationInterface {
        int32_t size = [sequentialAnimationInterface getAnimationSize];
        Image** imageArray = ((Image**) java_array_new(sizeof(Image*), size));
        for (int32_t index = 0; index < size; index++) {
            [sequentialAnimationInterface setFrame:index];
            imageArray[index] = [[AnimationFrameToImageUtil getInstance] getInstanceWH:width :height :sequentialAnimationInterface];
        }
        return imageArray;
}

@end

