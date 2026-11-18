// Generated Code Do Not Modify
#include "org/allbinary/animation/image/ImageArrayAnimation.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "javax/microedition/lcdui/Image.h"
#include "javax/microedition/lcdui/NullImage.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#include "org/allbinary/graphics/Anchor.h"
#include "org/allbinary/logic/math/PrimitiveIntUtil.h"
#include "org/allbinary/util/CircularIndexUtil.h"



void ImageArrayAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ImageArrayAnimation

- (void) initFields {
    self->imageArray = (NullImage_staticInit(), NullImage_NULL_IMAGE_ARRAY);
    self->totalFrames = 0;
    self->circularIndexUtil = (CircularIndexUtil_staticInit(), CircularIndexUtil_NULL_CIRCULAR_INDEX_UTIL);
    self->anchor = (Anchor_staticInit(), Anchor_TOP_LEFT);
}


- (instancetype) init:(Image**)imageArray :(AnimationBehavior*)animationBehavior {
        self = [super init:animationBehavior];
        [self initFields];
        [self setImageArray:imageArray];
    return self;
}


// throws Exception
- (int32_t) getAnimationSize {
        return [self getSize];
}


- (void) nextFrame {
        [self->circularIndexUtil next];
}


- (void) previousFrame {
        [self->circularIndexUtil previous];
}


- (void) setFrame:(int32_t)index {
        [self->circularIndexUtil setIndex:index];
}


- (int32_t) getFrame {
        return [self->circularIndexUtil getIndex];
}


- (int32_t) getSize {
        return self->totalFrames;
}


- (void) setSequence:(int32_t*)sequence {
}


- (int32_t*) getSequence {
        return [PrimitiveIntUtil getArrayInstance];
}


- (Image*) getImage:(int32_t)index {
        return self->imageArray[index];
}


- (Image**) getImageArray {
        return self->imageArray;
}


- (void) setImageArray:(Image**)imageArray {
        self->imageArray = imageArray;
        self->totalFrames = java_array_length(imageArray);
        self->circularIndexUtil = [CircularIndexUtil createInstance:self->totalFrames];
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
        [graphics drawImage:self->imageArray[[self->circularIndexUtil getIndex]] :x :y :self->anchor];
}

@end

