// Generated Code Do Not Modify
#include "org/allbinary/time/TimeDelayHelper.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonLabels.h"
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif



void TimeDelayHelper_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation TimeDelayHelper

- (void) initFields {
    self->startTime = ((int64_t) (-1));
    self->elapsedTimeAtPause = (Long_staticInit(), Long_MIN_VALUE);
    
}


- (instancetype) init:(int32_t)delay {
    self = [super init];
    [self initFields];
        self->delay = delay;
        [self setStartTimeTNT];
    return self;
}


- (bool) isTimeTNT {
        int64_t currentTime = java_current_time_millis();
        if (currentTime - self->startTime > ((int64_t) self->delay)) {
            self->startTime = currentTime;
            return true;
        }
        return false;
}


- (bool) isTimeSinceTNT:(int32_t)delay {
        int64_t currentTime = java_current_time_millis();
        if (currentTime - self->startTime > ((int64_t) delay)) {
            self->startTime = currentTime;
            return true;
        }
        return false;
}


- (bool) isTime:(int64_t)currentTime {
        if (currentTime - self->startTime > ((int64_t) self->delay)) {
            self->startTime = currentTime;
            return true;
        }
        return false;
}


- (bool) isTimeWithoutReset:(int64_t)currentTime {
        if (currentTime - self->startTime > ((int64_t) self->delay)) {
            return true;
        }
        return false;
}


- (bool) isTimeSince:(int32_t)delay :(int64_t)currentTime {
        if (currentTime - self->startTime > ((int64_t) self->delay)) {
            self->startTime = currentTime;
            return true;
        }
        return false;
}


- (int64_t) getElapsedTNT {
        return java_current_time_millis() - self->startTime;
}


- (int64_t) getElapsed:(int64_t)currentTime {
        return currentTime - self->startTime;
}


- (bool) isElapsed:(int64_t)currentTime :(int64_t)time {
        if ([self getElapsed:currentTime] > time) {
            return true;
        } else {
            return false;
        }
}


- (bool) isElapsedTNT:(int64_t)time {
        if ([self getElapsedTNT] > time) {
            return true;
        } else {
            return false;
        }
}


- (void) setStartTime:(int64_t)startTime {
        self->startTime = startTime;
}


- (int64_t) getStartTime {
        return self->startTime;
}


- (void) setStartTimeTNT {
        self->startTime = java_current_time_millis();
}


- (void) pause {
        self->elapsedTimeAtPause = [self getElapsedTNT];
        self->startTime = (Long_staticInit(), Long_MAX_VALUE);
}


- (bool) resume {
        if (self->elapsedTimeAtPause != (Long_staticInit(), Long_MIN_VALUE)) {
            self->startTime = java_current_time_millis() + self->elapsedTimeAtPause;
            self->elapsedTimeAtPause = (Long_staticInit(), Long_MIN_VALUE);
            [self setStartTimeTNT];
            return true;
        }
        return false;
}


- (const char*) toStringAt:(int64_t)currentTime {
        int64_t elapsed = [self getElapsed:currentTime];
        if (elapsed > 0LL) {
            CommonLabels* commonLabels = [CommonLabels getInstance];
            const char* elapsedAsString = java_string_of(elapsed);
            return [[[[[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:commonLabels->START] appendlong:self->startTime] append:commonLabels->CURRENT] appendlong:currentTime] append:commonLabels->ELAPSED] append:elapsedAsString] toString];
        } else {
            return [StringUtil getInstance]->EMPTY_STRING;
        }
}


- (const char*) toString {
        int64_t currentTime = java_current_time_millis();
        int64_t elapsed = [self getElapsed:currentTime];
        if (elapsed > 0LL) {
            CommonLabels* commonLabels = [CommonLabels getInstance];
            const char* elapsedAsString = java_string_of(elapsed);
            return [[[[[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:commonLabels->START] appendlong:self->startTime] append:commonLabels->CURRENT] appendlong:currentTime] append:commonLabels->ELAPSED] append:elapsedAsString] toString];
        } else {
            return [StringUtil getInstance]->EMPTY_STRING;
        }
}

@end

