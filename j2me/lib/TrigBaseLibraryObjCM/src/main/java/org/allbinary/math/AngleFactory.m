// Generated Code Do Not Modify
#include "org/allbinary/math/AngleFactory.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonPhoneStrings.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/math/Angle.h"
#include "org/allbinary/math/NamedAngle.h"
#include "org/allbinary/math/FrameUtil.h"


static AngleFactory* AngleFactory_instance;

void AngleFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    AngleFactory_instance = [((AngleFactory*) [AngleFactory alloc]) init];
}

@implementation AngleFactory

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->TOTAL_ANGLE = 360;
    self->QUARTER_TOTAL_ANGLE = 90;
    self->angleArray = ((Angle**) java_array_new(sizeof(Angle*), ((int32_t) self->TOTAL_ANGLE)));
    self->NEGATIVE_ONE = ((int16_t) (-1));
    self->NOT_ANGLE = [((NamedAngle*) [NamedAngle alloc]) init:self->NEGATIVE_ONE :[CommonStrings getInstance]->EMPTY];
    
    
    
    
    self->frameUtil = [FrameUtil getInstance];
}


+ (AngleFactory*) getInstance {
        return (AngleFactory_staticInit(), AngleFactory_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        CommonPhoneStrings* commonPhoneStrings = [CommonPhoneStrings getInstance];
        int16_t total = ((int16_t) java_array_length(self->angleArray));
        self->UP = [((NamedAngle*) [NamedAngle alloc]) init:((int16_t) 0) :commonPhoneStrings->UP];
        self->angleArray[0] = self->UP;
        for (int32_t index = 1; index < 90; index++) {
            self->angleArray[index] = [((Angle*) [Angle alloc]) init:((int16_t) index)];
        }
        self->RIGHT = [((NamedAngle*) [NamedAngle alloc]) init:((int16_t) 90) :commonPhoneStrings->RIGHT];
        self->angleArray[90] = self->RIGHT;
        for (int32_t index = 91; index < 180; index++) {
            self->angleArray[index] = [((Angle*) [Angle alloc]) init:((int16_t) index)];
        }
        self->DOWN = [((NamedAngle*) [NamedAngle alloc]) init:((int16_t) 180) :commonPhoneStrings->DOWN];
        self->angleArray[180] = self->DOWN;
        for (int32_t index = 181; index < 270; index++) {
            self->angleArray[index] = [((Angle*) [Angle alloc]) init:((int16_t) index)];
        }
        self->LEFT = [((NamedAngle*) [NamedAngle alloc]) init:((int16_t) 270) :commonPhoneStrings->LEFT];
        self->angleArray[270] = self->LEFT;
        for (int32_t index = 271; index < ((int32_t) total); index++) {
            self->angleArray[index] = [((Angle*) [Angle alloc]) init:((int16_t) index)];
        }
    return self;
}


- (Angle*) getAt:(int32_t)index {
        int32_t adjustedIndex = [self->frameUtil adjustAngleToFrameAngle:index];
        return self->angleArray[adjustedIndex];
}


- (Angle*) getClosestDirection:(int32_t)angle {
        if ((angle >= 315 && angle < 360) || (angle >= 0 && angle < 45)) {
            return self->UP;
        } else if (angle >= 45 && angle < 135) {
            return self->RIGHT;
        } else if (angle >= 135 && angle < 225) {
            return self->DOWN;
        } else if (angle >= 225 && angle < 315) {
            return self->LEFT;
        }
        java_throw(java_exception_new("RuntimeException", ""));
}


- (Angle*) getGeneralDirection {
        return self->NOT_ANGLE;
}


+ (void) main:(const char**)args {
        StringMaker* stringMaker = [((StringMaker*) [StringMaker alloc]) init];
        AngleFactory* angleFactory = [AngleFactory getInstance];
        for (int32_t index = 0; index < 360; index++) {
            [[[[stringMaker appendint:index] append:[CommonSeps getInstance]->FORWARD_SLASH] appendshort:[[angleFactory getClosestDirection:index] getValue]] append:[CommonSeps getInstance]->NEW_LINE];
        }
        [[LogUtil getInstance] putF:[stringMaker toString] :"main" :"main"];
}

@end

