// Generated Code Do Not Modify
#include "org/allbinary/game/physics/velocity/VelocityProperties.h"
#include "org/allbinary/game/physics/velocity/BasicVelocityProperties.h"
#include "org/allbinary/game/physics/velocity/VelocityInterface.h"


VelocityProperties* VelocityProperties_NULL_VELOCITY_PROPERTIES;

void VelocityProperties_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    VelocityProperties_NULL_VELOCITY_PROPERTIES = ((VelocityProperties*) [((VelocityProperties*) [VelocityProperties alloc]) init:0 :0]);
}

@implementation VelocityProperties

- (void) initFields {
    self->maxForwardVelocity = 0;
    self->maxReverseVelocity = 0;
}


- (instancetype) init:(int32_t)maxForwardVelocity :(int32_t)maxReverseVelocity {
    self = [super init];
    [self initFields];
        [self setMaxForwardVelocity:maxForwardVelocity];
        [self setMaxReverseVelocity:maxReverseVelocity];
    return self;
}


- (int32_t) getMaxForwardVelocity {
        return self->maxForwardVelocity;
}


- (void) setMaxForwardVelocity:(int32_t)maxForwardVelocity {
        self->maxForwardVelocity = maxForwardVelocity;
}


- (int32_t) getMaxReverseVelocity {
        return self->maxReverseVelocity;
}


- (void) setMaxReverseVelocity:(int32_t)maxReverseVelocity {
        self->maxReverseVelocity = maxReverseVelocity;
}


- (void) limitMaxXYForwardVelocity {
        [self limitMaxXYVelocity:[self getMaxForwardVelocity]];
}


- (void) limitMaxXYReverseVelocity {
        [self limitMaxXYVelocity:[self getMaxReverseVelocity]];
}


- (void) limitMaxYForwardVelocity {
        [self limitMaxYVelocity:[self getMaxForwardVelocity]];
}


- (void) limitMaxYReverseVelocity {
        [self limitMaxYVelocity:[self getMaxReverseVelocity]];
}


- (void) limitMaxXForwardVelocity {
        [self limitMaxXVelocity:[self getMaxForwardVelocity]];
}


- (void) limitMaxXReverseVelocity {
        [self limitMaxXVelocity:[self getMaxReverseVelocity]];
}


- (bool) isOverXYMaxForwardVelocity {
        return [self isOverXYMaxVelocity:[self getMaxForwardVelocity]];
}


- (bool) isOverXYMaxReverseVelocity {
        return [self isOverXYMaxVelocity:[self getMaxReverseVelocity]];
}


- (void) limitXYToForwardAndReverseMaxVelocity {
        [self limitMaxXYForwardVelocity];
        [self limitMaxXYReverseVelocity];
}


- (void) limitMaxXYVelocity:(int32_t)maxVelocity {
        [self limitMaxXVelocity:maxVelocity];
        [self limitMaxYVelocity:maxVelocity];
}


- (void) limitMaxPositiveYVelocity:(int32_t)maxVelocity {
        if ([self->velocityYBasicDecimal getUnscaled] > ((int64_t) maxVelocity)) {
            [self->velocityYBasicDecimal setint:maxVelocity];
        }
}


- (void) limitMaxNegativeYVelocity:(int32_t)maxVelocity {
        if ([self->velocityYBasicDecimal getUnscaled] < ((int64_t) (-maxVelocity))) {
            [self->velocityYBasicDecimal setint:-maxVelocity];
        }
}


- (void) limitMaxYVelocity:(int32_t)maxVelocity {
        [self limitMaxPositiveYVelocity:maxVelocity];
        [self limitMaxNegativeYVelocity:maxVelocity];
}


- (void) limitMaxXVelocity:(int32_t)maxVelocity {
        if ([self->velocityXBasicDecimal getUnscaled] > ((int64_t) maxVelocity)) {
            [self->velocityXBasicDecimal setint:maxVelocity];
        }
        if ([self->velocityXBasicDecimal getUnscaled] < ((int64_t) (-maxVelocity))) {
            [self->velocityXBasicDecimal setint:-maxVelocity];
        }
}


- (bool) isOverXYMaxVelocity:(int32_t)maxVelocity {
        if ([self->velocityXBasicDecimal getUnscaled] > ((int64_t) maxVelocity)) {
            return true;
        }
        if ([self->velocityXBasicDecimal getUnscaled] < ((int64_t) (-maxVelocity))) {
            return true;
        }
        if ([self->velocityYBasicDecimal getUnscaled] > ((int64_t) maxVelocity)) {
            return true;
        }
        if ([self->velocityYBasicDecimal getUnscaled] < ((int64_t) (-maxVelocity))) {
            return true;
        }
        return false;
}


- (void) setVelocityi:(int64_t)magnitude :(int32_t)angle :(int32_t)otherAngle {
        [super setVelocityi:magnitude :angle :otherAngle];
        [self limitXYToForwardAndReverseMaxVelocity];
}


- (void) addVelocityi:(int64_t)magnitude :(int32_t)angle :(int32_t)otherAngle {
        [super addVelocityi:magnitude :angle :otherAngle];
        [self limitXYToForwardAndReverseMaxVelocity];
}

@end

