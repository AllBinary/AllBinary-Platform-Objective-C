// Generated Code Do Not Modify
#include "org/allbinary/graphics/Line.h"
#include "org/allbinary/graphics/GPoint.h"
#include "org/allbinary/graphics/PointFactory.h"



void Line_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation Line

- (void) initFields {
    
    
    self->deltaX = 0.0;
    self->deltaY = 0.0;
}


- (instancetype) init:(GPoint*)p1 :(GPoint*)p2 {
    self = [super init];
    [self initFields];
        self->p1 = [PointFactory getInstance]->ZERO_ZERO;
        self->p2 = self->p1;
        [self setP1:p1];
        [self setP2:p2];
    return self;
}


- (double) getGradient {
        return [self getDeltaY] / [self getDeltaX];
}


- (void) update {
        self->deltaX = ((double) [[self getP1] getX]) - ((double) [[self getP2] getX]);
        self->deltaY = ((double) [[self getP1] getY]) - ((double) [[self getP2] getY]);
}


- (double) getDeltaX {
        return self->deltaX;
}


- (double) getDeltaY {
        return self->deltaY;
}


- (GPoint*) getP1 {
        return self->p1;
}


- (GPoint*) getP2 {
        return self->p2;
}


- (void) setP1:(GPoint*)p1 {
        self->p1 = p1;
        [self update];
}


- (void) setP2:(GPoint*)p2 {
        self->p2 = p2;
        [self update];
}

@end

