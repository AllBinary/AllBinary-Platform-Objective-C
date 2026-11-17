// Generated Code Do Not Modify
#include "org/allbinary/canvas/BaseGameStatistics.h"
#include "org/allbinary/logic/math/PrimitiveLongSingleton.h"
#include "org/allbinary/logic/math/ScaleFactorFactory.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/time/GameTickTimeDelayHelper.h"
#include "org/allbinary/time/GameTickTimeDelayHelperFactory.h"
#include "org/allbinary/time/TimeDelayHelper.h"



void BaseGameStatistics_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BaseGameStatistics

- (void) initFields {
    self->timeDelayHelper = [((TimeDelayHelper*) [TimeDelayHelper alloc]) init:(Integer_staticInit(), Integer_MAX_VALUE)];
    self->updateDelayHelper = [((TimeDelayHelper*) [TimeDelayHelper alloc]) init:2000];
    self->totalRefreshes = 0;
    self->totalFrames = 0;
    self->gameTickTimeDelayHelper = [GameTickTimeDelayHelperFactory getInstance];
    self->DEFAULT_SCALE_FACTOR = [ScaleFactorFactory getInstance]->DEFAULT_SCALE_FACTOR;
    self->NOT = "Not enough Time to Calculate";
    self->EMPTY_STRING = [StringUtil getInstance]->EMPTY_STRING;
    self->STRING_ARRAY = ((const char**) java_array_from(sizeof(const char*), sizeof((const char*[]){ " Total Time: ", self->EMPTY_STRING, " Total Frames: ", self->EMPTY_STRING, " Frames/10 Sec: ", self->EMPTY_STRING, " Total Paints: ", self->EMPTY_STRING, " Paints/10 Sec: ", self->EMPTY_STRING }) / sizeof(const char*), (const char*[]){ " Total Time: ", self->EMPTY_STRING, " Total Frames: ", self->EMPTY_STRING, " Frames/10 Sec: ", self->EMPTY_STRING, " Total Paints: ", self->EMPTY_STRING, " Paints/10 Sec: ", self->EMPTY_STRING }));
    self->SPACE_CHAR = u' ';
    self->PLUS_CHAR = u'+';
    self->X_CHAR = u'X';
    self->CHAR_ARRAY = ((uint16_t**) java_array_from(sizeof(uint16_t*), sizeof((uint16_t*[]){ ((uint16_t*) java_array_from(sizeof(uint16_t), sizeof((uint16_t[]){ u'F', u'r', u'a', u'm', u'e', u's', u'/', u'1', u'0', u' ', u'S', u'e', u'c', u':' }) / sizeof(uint16_t), (uint16_t[]){ u'F', u'r', u'a', u'm', u'e', u's', u'/', u'1', u'0', u' ', u'S', u'e', u'c', u':' })), ((uint16_t*) java_array_from(sizeof(uint16_t), sizeof((uint16_t[]){ u'X', u'X' }) / sizeof(uint16_t), (uint16_t[]){ u'X', u'X' })), ((uint16_t*) java_array_from(sizeof(uint16_t), sizeof((uint16_t[]){ u'P', u'a', u'i', u'n', u't', u's', u'/', u'1', u'0', u' ', u'S', u'e', u'c', u':' }) / sizeof(uint16_t), (uint16_t[]){ u'P', u'a', u'i', u'n', u't', u's', u'/', u'1', u'0', u' ', u'S', u'e', u'c', u':' })), ((uint16_t*) java_array_from(sizeof(uint16_t), sizeof((uint16_t[]){ u'X', u'X' }) / sizeof(uint16_t), (uint16_t[]){ u'X', u'X' })) }) / sizeof(uint16_t*), (uint16_t*[]){ ((uint16_t*) java_array_from(sizeof(uint16_t), sizeof((uint16_t[]){ u'F', u'r', u'a', u'm', u'e', u's', u'/', u'1', u'0', u' ', u'S', u'e', u'c', u':' }) / sizeof(uint16_t), (uint16_t[]){ u'F', u'r', u'a', u'm', u'e', u's', u'/', u'1', u'0', u' ', u'S', u'e', u'c', u':' })), ((uint16_t*) java_array_from(sizeof(uint16_t), sizeof((uint16_t[]){ u'X', u'X' }) / sizeof(uint16_t), (uint16_t[]){ u'X', u'X' })), ((uint16_t*) java_array_from(sizeof(uint16_t), sizeof((uint16_t[]){ u'P', u'a', u'i', u'n', u't', u's', u'/', u'1', u'0', u' ', u'S', u'e', u'c', u':' }) / sizeof(uint16_t), (uint16_t[]){ u'P', u'a', u'i', u'n', u't', u's', u'/', u'1', u'0', u' ', u'S', u'e', u'c', u':' })), ((uint16_t*) java_array_from(sizeof(uint16_t), sizeof((uint16_t[]){ u'X', u'X' }) / sizeof(uint16_t), (uint16_t[]){ u'X', u'X' })) }));
    self->primitiveLongSingleton = [PrimitiveLongSingleton getInstance];
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) init_ {
        [self->timeDelayHelper setStartTimeTNT];
        self->totalRefreshes = 0LL;
        self->totalFrames = 0LL;
}


- (void) add:(const char*)string {
}


- (void) process {
}


- (void) nextFrame {
        self->totalFrames++;
}


- (void) nextRefresh {
        self->totalRefreshes++;
}


- (int16_t) getRefreshRate {
        int64_t elapsed = [self->timeDelayHelper getElapsed:self->gameTickTimeDelayHelper->startTime];
        if (elapsed > 1LL) {
            int16_t time = ((int16_t) (self->totalRefreshes / (elapsed >> self->DEFAULT_SCALE_FACTOR)));
            return time;
        } else {
            return 0;
        }
}


- (TimeDelayHelper*) getTimeDelayHelper {
        return self->timeDelayHelper;
}


- (uint16_t**) to2DCharArray {
        int64_t totalTime = [self->timeDelayHelper getElapsed:self->gameTickTimeDelayHelper->startTime];
        totalTime = (totalTime >> self->DEFAULT_SCALE_FACTOR);
        if (totalTime > 0LL && [self->updateDelayHelper isTime:self->gameTickTimeDelayHelper->startTime]) {
            int32_t framesPerSec = ((int32_t) (self->totalFrames / totalTime));
            if (framesPerSec < 10) {
                self->CHAR_ARRAY[1][0] = self->SPACE_CHAR;
                self->CHAR_ARRAY[1][1] = self->primitiveLongSingleton->NUMBER_CHAR_ARRAY[framesPerSec];
            } else if (framesPerSec < 100) {
                int32_t tens = framesPerSec / 10;
                int32_t removeTens = tens * 10;
                self->CHAR_ARRAY[1][0] = self->primitiveLongSingleton->NUMBER_CHAR_ARRAY[tens];
                self->CHAR_ARRAY[1][1] = self->primitiveLongSingleton->NUMBER_CHAR_ARRAY[framesPerSec - removeTens];
            } else {
                self->CHAR_ARRAY[1][0] = self->PLUS_CHAR;
                self->CHAR_ARRAY[1][1] = self->PLUS_CHAR;
            }
            int32_t refreshesPerSec = ((int32_t) (self->totalRefreshes / totalTime));
            if (refreshesPerSec < 10) {
                self->CHAR_ARRAY[3][0] = self->X_CHAR;
                self->CHAR_ARRAY[3][1] = self->primitiveLongSingleton->NUMBER_CHAR_ARRAY[refreshesPerSec];
            } else if (refreshesPerSec < 100) {
                int32_t tens = refreshesPerSec / 10;
                int32_t removeTens = tens * 10;
                self->CHAR_ARRAY[3][0] = self->primitiveLongSingleton->NUMBER_CHAR_ARRAY[refreshesPerSec / 10];
                self->CHAR_ARRAY[3][1] = self->primitiveLongSingleton->NUMBER_CHAR_ARRAY[refreshesPerSec - removeTens];
            } else {
                self->CHAR_ARRAY[3][0] = self->PLUS_CHAR;
                self->CHAR_ARRAY[3][1] = self->PLUS_CHAR;
            }
        }
        return self->CHAR_ARRAY;
}


- (const char**) toStringArray {
        int64_t totalTime = [self->timeDelayHelper getElapsed:self->gameTickTimeDelayHelper->startTime];
        totalTime = (totalTime / 10000LL);
        if (totalTime > 0LL) {
            self->STRING_ARRAY[1] = java_string_of(totalTime);
            self->STRING_ARRAY[3] = java_string_of(self->totalFrames);
            self->STRING_ARRAY[5] = java_string_of(self->totalFrames / totalTime);
            self->STRING_ARRAY[7] = java_string_of(self->totalRefreshes);
            self->STRING_ARRAY[9] = java_string_of(self->totalRefreshes / totalTime);
        } else {
            const char* string = self->EMPTY_STRING;
            self->STRING_ARRAY[1] = string;
            self->STRING_ARRAY[3] = string;
            self->STRING_ARRAY[5] = string;
            self->STRING_ARRAY[7] = string;
            self->STRING_ARRAY[9] = string;
        }
        return self->STRING_ARRAY;
}


- (const char*) toStringAt:(int64_t)totalTime {
        StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
        [stringBuffer append:self->STRING_ARRAY[0]];
        [stringBuffer appendlong:totalTime];
        [stringBuffer append:self->STRING_ARRAY[2]];
        [stringBuffer appendlong:self->totalFrames];
        [stringBuffer append:self->STRING_ARRAY[4]];
        [stringBuffer appendlong:self->totalFrames / totalTime];
        if (self->totalRefreshes > 0LL) {
            [stringBuffer append:self->STRING_ARRAY[6]];
            [stringBuffer appendlong:self->totalRefreshes];
            [stringBuffer append:self->STRING_ARRAY[8]];
            [stringBuffer appendlong:self->totalRefreshes / totalTime];
            [stringBuffer append:[CommonSeps getInstance]->NEW_LINE];
        }
        return [stringBuffer toString];
}


- (const char*) toString {
        int64_t totalTime = [self->timeDelayHelper getElapsed:self->gameTickTimeDelayHelper->startTime];
        totalTime = (totalTime / 1000LL);
        if (totalTime > 0LL) {
            return [self toStringAt:totalTime];
        } else {
            return self->NOT;
        }
}

@end

