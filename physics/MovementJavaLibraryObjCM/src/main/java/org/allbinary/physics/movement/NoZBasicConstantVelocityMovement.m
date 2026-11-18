// Generated Code Do Not Modify
#include "org/allbinary/physics/movement/NoZBasicConstantVelocityMovement.h"
#include "org/allbinary/game/layer/AllBinaryGameLayer.h"
#include "org/allbinary/game/physics/velocity/BasicVelocityProperties.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/logic/math/BasicDecimal.h"
#include "org/allbinary/logic/math/vector/AxisMathVectorUtil.h"
#include "org/allbinary/math/AngleFactory.h"
#include "org/allbinary/physics/movement/Movement.h"



void NoZBasicConstantVelocityMovement_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation NoZBasicConstantVelocityMovement

- (void) initFields {
    
    self->speedBasicDecimal = (BasicDecimal_staticInit(), BasicDecimal_ZERO_BIGDECIMAL);
    self->axisMathVectorUtil = [AxisMathVectorUtil getInstance];
}


- (instancetype) init:(BasicDecimal*)basicDecimal :(BasicVelocityProperties*)velocityProperties {
    self = [super init];
    [self initFields];
        [self setSpeedBasicDecimal:basicDecimal];
        self->velocityProperties = velocityProperties;
    return self;
}


- (void) init_:(BasicDecimal*)speedBasicDecimal :(int32_t)angle :(int32_t)otherAngle {
        self->speedBasicDecimal = speedBasicDecimal;
        AngleFactory* angleFactory = [AngleFactory getInstance];
        [self->velocityProperties setVelocityWithBigDecimal:speedBasicDecimal :[angleFactory getAt:angle] :[angleFactory getAt:otherAngle]];
}


- (void) moveOutsideRadius:(AllBinaryLayer*)layer :(int64_t)radius :(int32_t)angle :(int32_t)otherAngle {
        int32_t scaleFactorValue = [self->speedBasicDecimal getScaledFactorValue];
        int32_t xVector = ((int32_t) ([self->axisMathVectorUtil calculateX:radius :angle] / ((int64_t) scaleFactorValue)));
        int32_t yVector = ((int32_t) ([self->axisMathVectorUtil calculateY:radius :angle] / ((int64_t) scaleFactorValue)));
        [layer moveDXYZ:xVector :yVector :0];
}


// throws Exception
- (void) process:(AllBinaryGameLayer*)layer {
        [layer moveDXYZ:[[self->velocityProperties getVelocityXBasicDecimalP] getScaled] :[[self->velocityProperties getVelocityYBasicDecimalP] getScaled] :0];
}


- (const char*) toString {
        return [self->velocityProperties toString];
}


- (void) stop {
        [self->velocityProperties zero];
}


- (BasicVelocityProperties*) getVelocityProperties {
        return self->velocityProperties;
}


- (void) setVelocityProperties:(BasicVelocityProperties*)velocityProperties {
        self->velocityProperties = velocityProperties;
}


- (void) setSpeedBasicDecimal:(BasicDecimal*)speedBasicDecimal {
        self->speedBasicDecimal = speedBasicDecimal;
}


- (BasicDecimal*) getSpeedBasicDecimal {
        return self->speedBasicDecimal;
}

@end

