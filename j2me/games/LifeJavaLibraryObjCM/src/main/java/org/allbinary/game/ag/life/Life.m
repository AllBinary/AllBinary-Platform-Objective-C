// Generated Code Do Not Modify
#include "org/allbinary/game/ag/life/Life.h"
#include "org/allbinary/game/ag/life/LifeInterface.h"


Life* Life_NO_LIFE;

void Life_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    Life_NO_LIFE = [Life createLife];
}

@implementation Life

- (void) initFields {
    
    
    
}


+ (Life*) createLife {
        JAVA_TRY {
            return ((Life*) [((Life*) [Life alloc]) init:((int16_t) 0) :((int16_t) 0)]);
        } JAVA_CATCH(Exception, e) {
            java_throw(java_exception_new("RuntimeException", ""));
        } JAVA_END_TRY;
}


- (instancetype) init:(int16_t)lives :(int16_t)maxlives {
    self = [super init];
    [self initFields];
        self->maxlives = maxlives;
        if (lives > self->maxlives) {
            java_throw(java_exception_new("Exception", "To Many Lives"));
        }
        self->lives = lives;
        self->startLives = lives;
    return self;
}


- (int16_t) get {
        return self->lives;
}


- (void) set:(int16_t)lives {
        self->lives = lives;
}


- (void) reset {
        self->lives = self->startLives;
}


- (void) add:(int16_t)lives {
        if (![self reachedLimit]) {
            if (self->lives + lives <= ((int32_t) [self getMaxlives])) {
                self->lives = ((int16_t) (self->lives + lives));
            } else {
                self->lives = [self getMaxlives];
            }
        }
}


- (bool) isAlive {
        if (((int32_t) self->lives) <= 0) {
            return false;
        } else {
            return true;
        }
}


- (int16_t) getMaxlives {
        return self->maxlives;
}


- (bool) reachedLimit {
        if (self->lives > self->maxlives || ((int32_t) self->lives) < 0) {
            return true;
        } else {
            return false;
        }
}


- (void) deaths:(int16_t)lives {
        if (![self reachedLimit]) {
            if (self->lives - lives >= 0) {
                self->lives = ((int16_t) (self->lives - lives));
            } else {
                self->lives = 0;
            }
        }
}


- (int16_t) getStartLives {
        return self->startLives;
}


- (void) setStartLives:(int16_t)startLives {
        self->startLives = startLives;
}

@end

