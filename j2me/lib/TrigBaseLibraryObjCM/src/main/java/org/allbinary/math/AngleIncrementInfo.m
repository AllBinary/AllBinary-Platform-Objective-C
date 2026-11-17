// Generated Code Do Not Modify
#include "org/allbinary/math/AngleIncrementInfo.h"
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/math/AngleFactory.h"
#include "org/allbinary/math/FrameUtil.h"


static const char* AngleIncrementInfo_INCREMENT = "Inc: ";

void AngleIncrementInfo_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AngleIncrementInfo

- (void) initFields {
    
    
    
    
    
    self->frameUtil = [FrameUtil getInstance];
}


- (instancetype) init:(int16_t)angleIncrement {
    self = [super init];
    [self initFields];
        self->angleIncrement = angleIncrement;
        AngleFactory* angleFactory = [AngleFactory getInstance];
        SmallIntegerSingletonFactory* smallIntegerSingletonFactory = [SmallIntegerSingletonFactory getInstance];
        self->DOWN_FRAME = [smallIntegerSingletonFactory getAt:[angleFactory->DOWN getValue] / self->angleIncrement];
        self->UP_FRAME = [smallIntegerSingletonFactory getAt:((int32_t) [angleFactory->UP getValue])];
        self->LEFT_FRAME = [smallIntegerSingletonFactory getAt:[angleFactory->LEFT getValue] / self->angleIncrement];
        self->RIGHT_FRAME = [smallIntegerSingletonFactory getAt:[angleFactory->RIGHT getValue] / self->angleIncrement];
    return self;
}


- (int32_t) getFrameAngle:(int32_t)frame {
        return [self->frameUtil getFrameAngle:frame :((int32_t) self->angleIncrement)];
}


- (int16_t) getAngleIncrement {
        return self->angleIncrement;
}


- (const char*) toString {
        return [[[[((StringMaker*) [StringMaker alloc]) init] append:AngleIncrementInfo_INCREMENT] appendshort:self->angleIncrement] toString];
}


- (int32_t) getClosestGeneralDirection:(int16_t)angle {
        int32_t closestDirection = [[SmallIntegerSingletonFactory getInstance] getAt:360];
        if (((int32_t) (self->UP_FRAME)) - angle < ((int32_t) (closestDirection)) - angle) {
            closestDirection = self->UP_FRAME;
        }
        if (((int32_t) (self->DOWN_FRAME)) - angle < ((int32_t) (closestDirection)) - angle) {
            closestDirection = self->DOWN_FRAME;
        }
        if (((int32_t) (self->LEFT_FRAME)) - angle < ((int32_t) (closestDirection)) - angle) {
            closestDirection = self->LEFT_FRAME;
        }
        if (((int32_t) (self->RIGHT_FRAME)) - angle < ((int32_t) (closestDirection)) - angle) {
            closestDirection = self->RIGHT_FRAME;
        }
        return ((int32_t) (closestDirection));
}

@end

