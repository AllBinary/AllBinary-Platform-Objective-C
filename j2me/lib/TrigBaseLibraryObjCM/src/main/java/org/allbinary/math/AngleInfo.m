// Generated Code Do Not Modify
#include "org/allbinary/math/AngleInfo.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/math/AngleIncrementInfo.h"
#include "org/allbinary/math/AngleIncrementInfoFactory.h"
#include "org/allbinary/math/FrameUtil.h"


static const char* AngleInfo_ANGLE = "Angle: ";

void AngleInfo_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AngleInfo

- (void) initFields {
    
    self->angle = 0;
    self->frameUtil = [FrameUtil getInstance];
}


+ (AngleInfo*) getInstance:(int16_t)angleIncrement {
        return [((AngleInfo*) [AngleInfo alloc]) init:[[AngleIncrementInfoFactory getInstance] getAt:angleIncrement]];
}


- (instancetype) init:(AngleIncrementInfo*)angleIncrementInfo {
    self = [super init];
    [self initFields];
        self->angleIncrementInfo = angleIncrementInfo;
    return self;
}


- (void) adjustAngle:(int32_t)frame {
        int32_t newAngle = ((int32_t) [self->angleIncrementInfo getAngleIncrement]) * frame - 90;
        [self setAngle:((int16_t) [self->frameUtil adjustAngleToFrameAngle:newAngle])];
}


- (int16_t) getAngle {
        return self->angle;
}


- (void) setAngle:(int16_t)angle {
        self->angle = angle;
}


- (AngleIncrementInfo*) getAngleIncrementInfo {
        return self->angleIncrementInfo;
}


- (const char*) toString {
        StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
        [stringBuffer append:AngleInfo_ANGLE];
        [stringBuffer appendshort:self->angle];
        [stringBuffer append:[CommonSeps getInstance]->SPACE];
        [stringBuffer append:[[StringUtil getInstance] toString:[self getAngleIncrementInfo]]];
        return [stringBuffer toString];
}

@end

