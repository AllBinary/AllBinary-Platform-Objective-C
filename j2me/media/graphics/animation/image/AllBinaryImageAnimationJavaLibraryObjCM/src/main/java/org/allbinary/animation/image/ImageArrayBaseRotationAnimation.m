// Generated Code Do Not Modify
#include "org/allbinary/animation/image/ImageArrayBaseRotationAnimation.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "javax/microedition/lcdui/Image.h"
#include "javax/microedition/lcdui/NullImage.h"
#include "org/allbinary/DisposalUtil.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#include "org/allbinary/graphics/Anchor.h"
#include "org/allbinary/logic/math/PrimitiveIntUtil.h"
#include "org/allbinary/math/AngleInfo.h"
#include "org/allbinary/media/image/ImageModifierUtil.h"
#include "org/allbinary/util/CircularIndexUtil.h"
#if __has_include("org/allbinary/animation/image/AngleIncrementInfo.h")
#include "org/allbinary/animation/image/AngleIncrementInfo.h"
#endif
#if __has_include("javax/microedition/lcdui/AngleIncrementInfo.h")
#include "javax/microedition/lcdui/AngleIncrementInfo.h"
#endif
#if __has_include("javax/microedition/lcdui/AngleIncrementInfo.h")
#include "javax/microedition/lcdui/AngleIncrementInfo.h"
#endif
#if __has_include("javax/microedition/lcdui/AngleIncrementInfo.h")
#include "javax/microedition/lcdui/AngleIncrementInfo.h"
#endif
#if __has_include("org/allbinary/AngleIncrementInfo.h")
#include "org/allbinary/AngleIncrementInfo.h"
#endif
#if __has_include("org/allbinary/animation/AngleIncrementInfo.h")
#include "org/allbinary/animation/AngleIncrementInfo.h"
#endif
#if __has_include("org/allbinary/animation/AngleIncrementInfo.h")
#include "org/allbinary/animation/AngleIncrementInfo.h"
#endif
#if __has_include("org/allbinary/graphics/AngleIncrementInfo.h")
#include "org/allbinary/graphics/AngleIncrementInfo.h"
#endif
#if __has_include("org/allbinary/logic/math/AngleIncrementInfo.h")
#include "org/allbinary/logic/math/AngleIncrementInfo.h"
#endif
#if __has_include("org/allbinary/math/AngleIncrementInfo.h")
#include "org/allbinary/math/AngleIncrementInfo.h"
#endif
#if __has_include("org/allbinary/media/image/AngleIncrementInfo.h")
#include "org/allbinary/media/image/AngleIncrementInfo.h"
#endif
#if __has_include("org/allbinary/util/AngleIncrementInfo.h")
#include "org/allbinary/util/AngleIncrementInfo.h"
#endif



void ImageArrayBaseRotationAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ImageArrayBaseRotationAnimation

- (void) initFields {
    self->imageModifierUtil = [ImageModifierUtil getInstanceOrCreate];
    
    self->imageArray = (NullImage_staticInit(), NullImage_NULL_IMAGE_ARRAY);
    
    self->totalFrames = 0;
    self->anchor = (Anchor_staticInit(), Anchor_TOP_LEFT);
}


- (instancetype) init:(Image**)originalImageArray :(AngleInfo*)angleInfo :(AnimationBehavior*)animationBehavior {
        self = [super init:angleInfo :[CircularIndexUtil createInstance:360 / ((int32_t) [[angleInfo getAngleIncrementInfo] getAngleIncrement])] :animationBehavior];
        [self initFields];
        self->originalImageArray = originalImageArray;
        [self setImageArray:[self->imageModifierUtil getImageArray:originalImageArray]];
        self->currentImage = self->imageArray[[self->circularIndexUtil getIndex]];
    return self;
}


// throws Exception
- (int32_t) getAnimationSize {
        return [self getSize];
}


- (void) setAlpha:(int32_t)alpha {
        if (self->alphaP != alpha) {
            [super setAlpha:alpha];
            [self->imageModifierUtil reset];
            int32_t index = [self->circularIndexUtil getIndex];
            [self->imageModifierUtil setAlpha:self->originalImageArray[index] :self->imageArray[index] :index :self->alphaP];
        }
}


- (void) nextRotation {
        [super nextRotation];
        int32_t index = [self->circularIndexUtil getIndex];
        [self->imageModifierUtil setAlpha:self->originalImageArray[index] :self->imageArray[index] :index :self->alphaP];
        self->currentImage = self->imageArray[index];
}


- (void) previousRotation {
        [super previousRotation];
        int32_t index = [self->circularIndexUtil getIndex];
        [self->imageModifierUtil setAlpha:self->originalImageArray[index] :self->imageArray[index] :index :self->alphaP];
        self->currentImage = self->imageArray[index];
}


- (void) setFrame:(int32_t)index2 {
        [super setFrame:index2];
        int32_t index = [self->circularIndexUtil getIndex];
        [self->imageModifierUtil setAlpha:self->originalImageArray[index] :self->imageArray[index] :index :self->alphaP];
        self->currentImage = self->imageArray[index];
}


- (void) setSequence:(int32_t*)sequence {
}


- (int32_t*) getSequence {
        return [PrimitiveIntUtil getArrayInstance];
}


- (void) setImageArray:(Image**)imageArray {
        self->imageArray = imageArray;
        self->totalFrames = java_array_length(imageArray);
        self->circularIndexUtil = [CircularIndexUtil createInstance:self->totalFrames];
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
        [graphics drawImage:self->currentImage :x :y :self->anchor];
}


// throws Exception
- (void) close {
        DisposalUtil* disposalUtil = [DisposalUtil getInstance];
        int32_t size2 = java_array_length(self->imageArray);
        for (int32_t index = 0; index < size2; index++) {
            [disposalUtil disposeImage:self->imageArray[index]];
        }
        int32_t size = java_array_length(self->originalImageArray);
        for (int32_t index = 0; index < size; index++) {
            [disposalUtil disposeImage:self->originalImageArray[index]];
        }
        [disposalUtil disposeImage:self->currentImage];
}


// throws Throwable
- (void) finalize {
        DisposalUtil* disposalUtil = [DisposalUtil getInstance];
        int32_t size2 = java_array_length(self->imageArray);
        for (int32_t index = 0; index < size2; index++) {
            [disposalUtil disposeImage:self->imageArray[index]];
        }
        int32_t size = java_array_length(self->originalImageArray);
        for (int32_t index = 0; index < size; index++) {
            [disposalUtil disposeImage:self->originalImageArray[index]];
        }
        [disposalUtil disposeImage:self->currentImage];
}

@end

