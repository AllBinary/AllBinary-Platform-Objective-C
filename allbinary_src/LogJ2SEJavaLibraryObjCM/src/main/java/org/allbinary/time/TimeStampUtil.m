// Generated Code Do Not Modify
#include "org/allbinary/time/TimeStampUtil.h"


static TimeStampUtil* TimeStampUtil_instance;

void TimeStampUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    TimeStampUtil_instance = [((TimeStampUtil*) [TimeStampUtil alloc]) init];
}

@implementation TimeStampUtil

- (void) initFields {
    self->simpleDataFormat = [((SimpleDateFormat*) [SimpleDateFormat alloc]) init:"yyyy-MM-dd HH:mm:ss.SSS"];
}


+ (TimeStampUtil*) getInstance {
        return (TimeStampUtil_staticInit(), TimeStampUtil_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (const char*) getAsString {
        Calendar* calendar = [Calendar getInstance];
        Date* date = [calendar getTime];
        return [self->simpleDataFormat format:date];
}

@end

