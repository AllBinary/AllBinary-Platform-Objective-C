// Generated Code Do Not Modify
#include "org/allbinary/physics/movement/ConstantVelocityNotifyViewChangeMovement.h"
#include "org/allbinary/game/layer/AllBinaryGameLayer.h"
#include "org/allbinary/game/physics/velocity/BasicVelocityProperties.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/logic/math/BasicDecimal.h"
#include "org/allbinary/logic/math/vector/AxisMathVectorUtil.h"
#include "org/allbinary/math/AngleFactory.h"
#include "org/allbinary/physics/movement/Movement.h"
#if __has_include("org/allbinary/logic/math/BasicDecimal.h")
#include "org/allbinary/logic/math/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/logic/math/BasicDecimal.h")
#include "org/allbinary/logic/math/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/logic/math/BasicDecimal.h")
#include "org/allbinary/logic/math/BasicDecimal.h"
#endif



void ConstantVelocityNotifyViewChangeMovement_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ConstantVelocityNotifyViewChangeMovement

- (void) initFields {
    
    
    self->axisMathVectorUtil = [AxisMathVectorUtil getInstance];
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        self->speedBasicDecimal = (BasicDecimal_staticInit(), BasicDecimal_ZERO_BIGDECIMAL);
        self->basicVelocityProperties = ((BasicVelocityProperties*) [((BasicVelocityProperties*) [BasicVelocityProperties alloc]) init]);
    return self;
}


- (void) initMethod:(BasicDecimal*)speedBasicDecimal :(int32_t)angle :(int32_t)otherAngle {
        self->speedBasicDecimal = speedBasicDecimal;
        AngleFactory* angleFactory = [AngleFactory getInstance];
        [self->basicVelocityProperties setVelocityWithBigDecimal:speedBasicDecimal :[angleFactory getAt:angle] :[angleFactory getAt:otherAngle]];
}


- (void) moveOutsideRadius:(AllBinaryLayer*)layer :(int64_t)radius :(int32_t)angle :(int32_t)otherAngle {
        int32_t scaleFactorValue = [self->speedBasicDecimal getScaledFactorValue];
        int32_t xVector = ((int32_t) ([self->axisMathVectorUtil calculateX:radius :angle] / ((int64_t) scaleFactorValue)));
        int32_t yVector = ((int32_t) ([self->axisMathVectorUtil calculateY:radius :angle] / ((int64_t) scaleFactorValue)));
        int32_t zVector = ((int32_t) ([self->axisMathVectorUtil calculateZ:radius :otherAngle] / ((int64_t) scaleFactorValue)));
        [layer moveDXYZ:xVector :yVector :zVector];
}


// throws Exception
- (void) process:(AllBinaryGameLayer*)layer {
        int32_t x = [[self->basicVelocityProperties getVelocityXBasicDecimalP] getScaled];
        int32_t y = [[self->basicVelocityProperties getVelocityYBasicDecimalP] getScaled];
        int32_t z = [[self->basicVelocityProperties getVelocityZBasicDecimalP] getScaled];
        [layer moveDXYZ:x :y :z];
        if (x != 0 || y != 0 || z != 0) {
            [layer onViewPositionChangeEvent];
        }
}


- (void) stop {
        [self->basicVelocityProperties zero];
}

@end

