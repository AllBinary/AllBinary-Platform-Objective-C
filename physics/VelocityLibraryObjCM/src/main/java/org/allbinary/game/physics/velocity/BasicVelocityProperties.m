// Generated Code Do Not Modify
#include "org/allbinary/game/physics/velocity/BasicVelocityProperties.h"
#include "org/allbinary/direction/Direction.h"
#include "org/allbinary/direction/DirectionUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/math/BasicDecimal.h"
#include "org/allbinary/logic/math/vector/AxisMathVectorUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/math/Angle.h"
#include "org/allbinary/math/PositionStrings.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/game/physics/velocity/BasicVelocityInterface.h"



void BasicVelocityProperties_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BasicVelocityProperties

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    
    
    
    self->axisMathVectorUtil = [AxisMathVectorUtil getInstance];
    self->directionUtil = [DirectionUtil getInstance];
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        self->velocityXBasicDecimal = [((BasicDecimal*) [BasicDecimal alloc]) init:0];
        self->velocityYBasicDecimal = [((BasicDecimal*) [BasicDecimal alloc]) init:0];
        self->velocityZBasicDecimal = [((BasicDecimal*) [BasicDecimal alloc]) init:0];
    return self;
}


- (void) zero {
        [self->velocityXBasicDecimal setint:0];
        [self->velocityYBasicDecimal setint:0];
        [self->velocityZBasicDecimal setint:0];
}


- (BasicDecimal*) getVelocityXBasicDecimalP {
        return self->velocityXBasicDecimal;
}


- (BasicDecimal*) getVelocityYBasicDecimalP {
        return self->velocityYBasicDecimal;
}


- (BasicDecimal*) getVelocityZBasicDecimalP {
        return self->velocityZBasicDecimal;
}


- (void) setVelocityWithBigDecimalAndDirection:(BasicDecimal*)magnitudeBasicDecimal :(Direction*)direction :(Direction*)otherDirection {
        Angle* angle = [self->directionUtil getAngle:direction];
        Angle* otherAngle = [self->directionUtil getAngle:otherDirection];
        [self setVelocityWithBigDecimal:magnitudeBasicDecimal :angle :otherAngle];
}


- (void) setVelocityWithDirection:(int64_t)magnitude :(Direction*)direction :(Direction*)otherDirection {
        Angle* angle = [self->directionUtil getAngle:direction];
        Angle* otherAngle = [self->directionUtil getAngle:otherDirection];
        [self setVelocity:magnitude :angle :otherAngle];
}


- (void) addVelocityWithBigDecimalAndDirection:(BasicDecimal*)magnitudeBasicDecimal :(Direction*)direction :(Direction*)otherDirection {
        Angle* angle = [self->directionUtil getAngle:direction];
        Angle* otherAngle = [self->directionUtil getAngle:otherDirection];
        [self addVelocityWithBigDecimal:magnitudeBasicDecimal :angle :otherAngle];
}


- (void) addVelocityWithDirection:(int64_t)magnitude :(Direction*)direction :(Direction*)otherDirection {
        Angle* angle = [self->directionUtil getAngle:direction];
        Angle* otherAngle = [self->directionUtil getAngle:otherDirection];
        [self addVelocity:magnitude :angle :otherAngle];
}


- (void) setVelocityWithBigDecimal:(BasicDecimal*)magnitudeBasicDecimal :(Angle*)angle :(Angle*)otherAngle {
        int64_t magnitude = [magnitudeBasicDecimal getUnscaled];
        [self setVelocity:magnitude :angle :otherAngle];
}


- (void) addVelocityWithBigDecimal:(BasicDecimal*)magnitudeBasicDecimal :(Angle*)angle :(Angle*)otherAngle {
        int64_t magnitude = [magnitudeBasicDecimal getUnscaled];
        [self addVelocity:magnitude :angle :otherAngle];
}


- (void) setVelocity:(int64_t)magnitude :(Angle*)angle :(Angle*)otherAngle {
        [self setVelocityi:magnitude :((int32_t) [angle getValue]) :((int32_t) [otherAngle getValue])];
}


- (void) addVelocity:(int64_t)magnitude :(Angle*)angle :(Angle*)otherAngle {
        [self addVelocityi:magnitude :((int32_t) [angle getValue]) :((int32_t) [otherAngle getValue])];
}


- (void) setVelocityi:(int64_t)magnitude :(int32_t)angle :(int32_t)otherAngle {
        int64_t xVector = ([self->axisMathVectorUtil calculateX:magnitude :angle] / ((int64_t) [self->velocityXBasicDecimal getScaledFactorValue]));
        int64_t yVector = ([self->axisMathVectorUtil calculateY:magnitude :angle] / ((int64_t) [self->velocityYBasicDecimal getScaledFactorValue]));
        int64_t zVector = ([self->axisMathVectorUtil calculateZ:magnitude :otherAngle] / ((int64_t) [self->velocityZBasicDecimal getScaledFactorValue]));
        [self->velocityXBasicDecimal setlong:xVector];
        [self->velocityYBasicDecimal setlong:yVector];
        [self->velocityZBasicDecimal setlong:zVector];
}


- (void) addVelocityi:(int64_t)magnitude :(int32_t)angle :(int32_t)otherAngle {
        int64_t xVector = ([self->axisMathVectorUtil calculateX:magnitude :angle] / ((int64_t) [self->velocityXBasicDecimal getScaledFactorValue]));
        int64_t yVector = ([self->axisMathVectorUtil calculateY:magnitude :angle] / ((int64_t) [self->velocityYBasicDecimal getScaledFactorValue]));
        int64_t zVector = ([self->axisMathVectorUtil calculateZ:magnitude :otherAngle] / ((int64_t) [self->velocityZBasicDecimal getScaledFactorValue]));
        [self->velocityXBasicDecimal addlong:xVector];
        [self->velocityYBasicDecimal addlong:yVector];
        [self->velocityZBasicDecimal addlong:zVector];
}


- (const char*) toString {
        CommonSeps* commonSeps = [CommonSeps getInstance];
        PositionStrings* positionStrings = [PositionStrings getInstance];
        StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
        StringUtil* stringUtil = [StringUtil getInstance];
        [stringBuffer append:"Velocity "];
        [stringBuffer append:positionStrings->X_LABEL];
        [stringBuffer append:[stringUtil toString:self->velocityXBasicDecimal]];
        [stringBuffer append:commonSeps->SPACE];
        [stringBuffer append:positionStrings->Y_LABEL];
        [stringBuffer append:[stringUtil toString:self->velocityYBasicDecimal]];
        [stringBuffer append:commonSeps->SPACE];
        [stringBuffer append:positionStrings->Z_LABEL];
        [stringBuffer append:[stringUtil toString:self->velocityZBasicDecimal]];
        return [stringBuffer toString];
}

@end

