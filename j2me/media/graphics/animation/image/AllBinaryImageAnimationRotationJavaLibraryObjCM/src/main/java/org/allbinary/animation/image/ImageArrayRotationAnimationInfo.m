// Generated Code Do Not Modify
#include "org/allbinary/animation/image/ImageArrayRotationAnimationInfo.h"
#include "javax/microedition/lcdui/Image.h"
#include "org/allbinary/math/AngleInfo.h"



void ImageArrayRotationAnimationInfo_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ImageArrayRotationAnimationInfo

- (void) initFields {
    
    
    
    
    
}


- (instancetype) init:(Image**)imageArray :(int32_t)angleIncrement :(int32_t)totalAngle :(int32_t)dx :(int32_t)dy {
    self = [super init];
    [self initFields];
        self->imageArray = imageArray;
        self->angleIncrement = angleIncrement;
        self->totalAngle = totalAngle;
        self->dx = dx;
        self->dy = dy;
    return self;
}


- (void) setImageArray:(Image**)imageArray {
        self->imageArray = imageArray;
}


- (Image**) getImageArray {
        return self->imageArray;
}


- (AngleInfo*) getAngleInfoP {
        return [AngleInfo getInstance:((int16_t) self->angleIncrement)];
}


- (void) setTotalAngle:(int32_t)totalAngle {
        self->totalAngle = totalAngle;
}


- (int32_t) getTotalAngle {
        return self->totalAngle;
}


- (void) setDx:(int32_t)dx {
        self->dx = dx;
}


- (int32_t) getDx {
        return self->dx;
}


- (void) setDy:(int32_t)dy {
        self->dy = dy;
}


- (int32_t) getDy {
        return self->dy;
}

@end

