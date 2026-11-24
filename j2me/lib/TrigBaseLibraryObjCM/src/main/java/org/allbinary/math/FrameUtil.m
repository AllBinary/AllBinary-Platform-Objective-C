// Generated Code Do Not Modify
#include "org/allbinary/math/FrameUtil.h"
#include "org/allbinary/math/AngleFactory.h"


static FrameUtil* FrameUtil_instance;

void FrameUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    FrameUtil_instance = ((FrameUtil*) [((FrameUtil*) [FrameUtil alloc]) init]);
}

@implementation FrameUtil


+ (FrameUtil*) getInstance {
        return (FrameUtil_staticInit(), FrameUtil_instance);
}


- (instancetype) init {
    self = [super init];
    return self;
}


- (int32_t) getFrameForAngle:(int16_t)angle :(int32_t)angleIncrement {
        return [self adjustAngleToFrameAngle:((int32_t) angle)] / angleIncrement;
}


- (int32_t) getFrameAngle:(int32_t)frame :(int32_t)angleIncrement {
        int32_t frameAngle = angleIncrement * frame - 90;
        return [self adjustAngleToFrameAngle:frameAngle];
}


- (int32_t) adjustAngleToFrameAngle:(int32_t)currentAngle {
        AngleFactory* angleFactory = [AngleFactory getInstance];
        if (currentAngle > 359) {
            currentAngle = (currentAngle - ((int32_t) angleFactory->TOTAL_ANGLE));
            while (currentAngle > 359) {
                currentAngle = (currentAngle - ((int32_t) angleFactory->TOTAL_ANGLE));
            }
        }
        if (currentAngle < 0) {
            currentAngle = (currentAngle + ((int32_t) angleFactory->TOTAL_ANGLE));
            while (currentAngle < 0) {
                currentAngle = (currentAngle + ((int32_t) angleFactory->TOTAL_ANGLE));
            }
        }
        return currentAngle;
}

@end

