// Generated Code Do Not Modify
#include "org/allbinary/vector/VectorInfo.h"



void VectorInfo_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation VectorInfo

- (void) initFields {
    
    
    
    
}


- (instancetype) init:(int32_t)width :(int32_t)height :(int32_t**)points :(int32_t)totalFrames {
    self = [super init];
    [self initFields];
        self->width = width;
        self->height = height;
        self->points = points;
        self->totalFrames = totalFrames;
    return self;
}


- (int32_t) getWidth {
        return self->width;
}


- (void) setWidth:(int32_t)width {
        self->width = width;
}


- (int32_t) getHeight {
        return self->height;
}


- (void) setHeight:(int32_t)height {
        self->height = height;
}


- (int32_t**) getPoints {
        return self->points;
}


- (void) setPoints:(int32_t**)points {
        self->points = points;
}


- (int32_t) getTotalFrames {
        return self->totalFrames;
}


- (void) setTotalFrames:(int32_t)totalFrames {
        self->totalFrames = totalFrames;
}

@end

