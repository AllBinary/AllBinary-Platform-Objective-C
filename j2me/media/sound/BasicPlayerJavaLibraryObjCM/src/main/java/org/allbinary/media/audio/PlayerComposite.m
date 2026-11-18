// Generated Code Do Not Modify
#include "org/allbinary/media/audio/PlayerComposite.h"
#include "javax/microedition/media/Control.h"
#include "javax/microedition/media/PlayerListener.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/time/GameTickTimeDelayHelper.h"
#include "org/allbinary/time/GameTickTimeDelayHelperFactory.h"
#include "org/allbinary/time/TimeDelayHelper.h"
#include "org/allbinary/media/audio/Controllable2.h"



void PlayerComposite_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation PlayerComposite

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    
    self->timeElapsedHelper = [((TimeDelayHelper*) [TimeDelayHelper alloc]) init:0];
    self->gameTickTimeDelayHelper = [GameTickTimeDelayHelperFactory getInstance];
}


- (instancetype) init:(Player*)player :(int32_t)repeatTime {
    self = [super init];
    [self initFields];
        self->player = player;
        self->timeElapsedHelper->delay = repeatTime;
    return self;
}


// synchronized
- (void) addPlayerListener:(PlayerListener*)playerListener {
        [self->player addPlayerListener:playerListener];
}


- (void) removePlayerListener:(PlayerListener*)playerListener {
        [self->player removePlayerListener:playerListener];
}


- (void) close {
        [self->player close];
}


- (void) deallocate {
        [self->player deallocate];
}


- (const char*) getContentType {
        return [self->player getContentType];
}


- (int64_t) getDuration {
        return [self->player getDuration];
}


- (int64_t) getMediaTime {
        return [self->player getMediaTime];
}


- (void) prefetch {
        JAVA_TRY {
            [self->player prefetch];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :"prefetch" :e];
        } JAVA_END_TRY;
}


- (void) realize {
        JAVA_TRY {
            [self->player realize];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :"realize" :e];
        } JAVA_END_TRY;
}


- (int32_t) getState {
        return [self->player getState];
}


- (void) setLoopCount:(int32_t)count {
        [self->player setLoopCount:count];
}


- (int64_t) setMediaTime:(int64_t)now {
        JAVA_TRY {
            return [self->player setMediaTime:now];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :"setMediaTime" :e];
            return ((int64_t) (-1));
        } JAVA_END_TRY;
}


- (void) start {
        JAVA_TRY {
            if ([self->timeElapsedHelper isTime:self->gameTickTimeDelayHelper->startTime]) {
                [self->player start];
            }
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->START_METHOD_NAME :e];
        } JAVA_END_TRY;
}


- (void) stop {
        JAVA_TRY {
            [self->player stop];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :"stop" :e];
        } JAVA_END_TRY;
}


- (Control*) getControl:(const char*)controlType {
        return [self->player getControl:controlType];
}


- (Control**) getControls {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (void) setVolume:(int32_t)leftVolume :(int32_t)rightVolume {
        Controllable2* controllable2 = (((Controllable2*) self->player));
        [controllable2 setVolume:leftVolume :rightVolume];
}


- (Player*) getPlayerP {
        return self->player;
}

@end

