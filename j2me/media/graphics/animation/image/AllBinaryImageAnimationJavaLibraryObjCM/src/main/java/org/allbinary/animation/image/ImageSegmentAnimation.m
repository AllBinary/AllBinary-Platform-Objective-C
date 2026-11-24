// Generated Code Do Not Modify
#include "org/allbinary/animation/image/ImageSegmentAnimation.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "javax/microedition/lcdui/Image.h"
#include "org/allbinary/animation/AnimationBehavior.h"
#include "org/allbinary/util/CircularIndexUtil.h"
#include "org/allbinary/animation/image/ImageAnimation.h"
#if __has_include("javax/microedition/lcdui/Image.h")
#include "javax/microedition/lcdui/Image.h"
#endif
#if __has_include("javax/microedition/lcdui/Image.h")
#include "javax/microedition/lcdui/Image.h"
#endif



void ImageSegmentAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ImageSegmentAnimation

- (void) initFields {
    
    
    
    
    
    
}


- (instancetype) init:(Image*)image :(int32_t*)sequenceArray :(AnimationBehavior*)animationBehavior {
        self = [super init:image :animationBehavior];
        [self initFields];
        self->startX = 0;
        self->startY = 0;
        self->drawWidth = [[self getImage] getWidth];
        self->drawHeight = [[self getImage] getHeight];
        self->circularIndexUtil = [CircularIndexUtil createInstance:self->drawHeight];
        self->sequenceArray = sequenceArray;
    return self;
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
        return [self->circularIndexUtil getSize];
}


- (void) setSequence:(int32_t*)sequenceArray {
        self->sequenceArray = sequenceArray;
}


- (int32_t*) getSequence {
        return self->sequenceArray;
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
}


- (int32_t) getStartX {
        return self->startX;
}


- (void) setStartX:(int32_t)startX {
        self->startX = startX;
}


- (int32_t) getStartY {
        return self->startY;
}


- (void) setStartY:(int32_t)startY {
        self->startY = startY;
}


- (int32_t) getDrawWidth {
        return self->drawWidth;
}


- (void) setDrawWidth:(int32_t)drawWidth {
        self->drawWidth = drawWidth;
}


- (int32_t) getDrawHeight {
        return self->drawHeight;
}


- (void) setDrawHeight:(int32_t)drawHeight {
        self->drawHeight = drawHeight;
}

@end

