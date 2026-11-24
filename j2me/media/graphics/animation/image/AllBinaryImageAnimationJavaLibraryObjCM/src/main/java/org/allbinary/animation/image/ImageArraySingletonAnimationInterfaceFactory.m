// Generated Code Do Not Modify
#include "org/allbinary/animation/image/ImageArraySingletonAnimationInterfaceFactory.h"
#include "javax/microedition/lcdui/Image.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#include "org/allbinary/animation/image/ImageArrayAnimation.h"



void ImageArraySingletonAnimationInterfaceFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ImageArraySingletonAnimationInterfaceFactory


- (instancetype) init:(Image**)imageArray {
        self = [super init:((ImageArrayAnimation*) [((ImageArrayAnimation*) [ImageArrayAnimation alloc]) init:imageArray :[AnimationBehavior getInstance]])];
    return self;
}

@end

