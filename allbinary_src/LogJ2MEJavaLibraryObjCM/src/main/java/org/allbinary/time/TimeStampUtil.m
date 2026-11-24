// Generated Code Do Not Modify
#include "org/allbinary/time/TimeStampUtil.h"


static TimeStampUtil* TimeStampUtil_instance;

void TimeStampUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    TimeStampUtil_instance = ((TimeStampUtil*) [((TimeStampUtil*) [TimeStampUtil alloc]) init]);
}

@implementation TimeStampUtil


+ (TimeStampUtil*) getInstance {
        return (TimeStampUtil_staticInit(), TimeStampUtil_instance);
}


- (instancetype) init {
    self = [super init];
    return self;
}


- (const char*) getAsString {
        Calendar* calendar = [Calendar getInstance];
        Date* date = [calendar getTime];
        return [date toString];
}

@end

