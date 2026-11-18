// Generated Code Do Not Modify
#include "org/allbinary/time/TimeUtil.h"


static TimeUtil* TimeUtil_instance;
static Calendar* TimeUtil_calendar;

void TimeUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    TimeUtil_instance = [((TimeUtil*) [TimeUtil alloc]) init];
    TimeUtil_calendar = [Calendar getInstance];
}

@implementation TimeUtil

- (instancetype) init {
    self = [super init];
    return self;
}


+ (TimeUtil*) getInstance {
        return (TimeUtil_staticInit(), TimeUtil_instance);
}


- (void) setCalendar:(Calendar*)calendar :(const char*)yearString :(const char*)monthString :(const char*)dayString :(const char*)hourString {
        int32_t year = ((int32_t) (yearString));
        int32_t month = ((int32_t) (monthString));
        int32_t day = ((int32_t) (dayString));
        int32_t hour = ((int32_t) (hourString));
        [calendar set:year :month :day :hour :0];
}


- (void) setCalendarWithTime:(Calendar*)calendar :(const char*)yearString :(const char*)monthString :(const char*)dayString :(const char*)hourString :(const char*)minuteString :(const char*)secondString {
        int32_t year = ((int32_t) (yearString));
        int32_t month = ((int32_t) (monthString));
        int32_t day = ((int32_t) (dayString));
        int32_t hour = ((int32_t) (hourString));
        int32_t minute = ((int32_t) (minuteString));
        int32_t second = ((int32_t) (secondString));
        [calendar set:year :month :day :hour :minute :second];
}


- (void) setExpirationCalendar:(Calendar*)calendar :(const char*)yearsString :(const char*)monthsString :(const char*)daysString :(const char*)hoursString :(const char*)minutesString :(const char*)secondsString {
        int32_t year = [calendar get:(Calendar_staticInit(), Calendar_YEAR)] + ((int32_t) (yearsString));
        int32_t month = [calendar get:(Calendar_staticInit(), Calendar_MONTH)] + ((int32_t) (monthsString));
        int32_t day = [calendar get:(Calendar_staticInit(), Calendar_DAY_OF_MONTH)] + ((int32_t) (daysString));
        int32_t hour = [calendar get:(Calendar_staticInit(), Calendar_HOUR)] + ((int32_t) (hoursString));
        int32_t minute = [calendar get:(Calendar_staticInit(), Calendar_MINUTE)] + ((int32_t) (minutesString));
        int32_t second = [calendar get:(Calendar_staticInit(), Calendar_SECOND)] + ((int32_t) (secondsString));
        [calendar set:year :month :day :hour :minute :second];
}


- (int64_t) getTotalTime:(const char*)yearString :(const char*)monthString :(const char*)dayString :(const char*)hourString :(const char*)minuteString :(const char*)secondString {
        int64_t time = [(TimeUtil_staticInit(), TimeUtil_calendar) getTimeInMillis];
        [self setExpirationCalendar:(TimeUtil_staticInit(), TimeUtil_calendar) :yearString :monthString :dayString :hourString :minuteString :secondString];
        int64_t timeDelta = [(TimeUtil_staticInit(), TimeUtil_calendar) getTimeInMillis];
        return timeDelta - time;
}

@end

