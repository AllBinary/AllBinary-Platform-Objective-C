// Generated Code Do Not Modify
#include "org/allbinary/animation/caption/CaptionAnimation.h"
#include "javax/microedition/lcdui/Graphics.h"



void CaptionAnimation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CaptionAnimation

- (void) initFields {
    
    
    
    
    
    
}


- (instancetype) init:(Animation*)animationInterface :(Animation*)overlayAnimationInterface :(int32_t)captionDx :(int32_t)captionDy :(int32_t)dx :(int32_t)dy {
    self = [super init];
    [self initFields];
        self->animationInterface = animationInterface;
        self->overlayAnimationInterface = overlayAnimationInterface;
        self->captionDx = captionDx;
        self->captionDy = captionDy;
        self->dx = dx;
        self->dy = dy;
    return self;
}


// throws Exception
- (void) nextFrame {
}


- (void) paintXY:(Graphics*)graphics :(int32_t)x :(int32_t)y {
        [self->animationInterface paintXY:graphics :x + self->captionDx :y + self->captionDy];
        [self->overlayAnimationInterface paintXY:graphics :x + self->captionDx + self->dx :y + self->captionDy + self->dy];
}


- (void) paintThreedXYZ:(Graphics*)graphics :(int32_t)x :(int32_t)y :(int32_t)z {
        [self->animationInterface paintThreedXYZ:graphics :x + self->captionDx :y + self->captionDy :z];
        [self->overlayAnimationInterface paintThreedXYZ:graphics :x + self->captionDx + self->dx :y + self->captionDy + self->dy :z];
}

@end

