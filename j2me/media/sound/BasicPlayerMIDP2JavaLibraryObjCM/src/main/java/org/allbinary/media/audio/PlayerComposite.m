// Generated Code Do Not Modify
#include "org/allbinary/media/audio/PlayerComposite.h"
#include "javax/microedition/media/Control.h"
#include "javax/microedition/media/MediaException.h"
#include "javax/microedition/media/PlayerListener.h"
#include "javax/microedition/media/TimeBase.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/time/GameTickTimeDelayHelper.h"
#include "org/allbinary/time/GameTickTimeDelayHelperFactory.h"
#include "org/allbinary/time/TimeDelayHelper.h"
#include "org/allbinary/media/audio/TimeBaseInterface.h"
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
    
    self->timeElapsedHelper = ((TimeDelayHelper*) [((TimeDelayHelper*) [TimeDelayHelper alloc]) init:0]);
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
        [((id<Player>) self->player) addPlayerListener:playerListener];
}


- (void) removePlayerListener:(PlayerListener*)playerListener {
        [((id<Player>) self->player) removePlayerListener:playerListener];
}


- (void) close {
        [((id<Player>) self->player) close];
}


- (void) deallocate {
        [((id<Player>) self->player) deallocate];
}


- (const char*) getContentType {
        return [((id<Player>) self->player) getContentType];
}


- (int64_t) getDuration {
        return [((id<Player>) self->player) getDuration];
}


- (int64_t) getMediaTime {
        return [((id<Player>) self->player) getMediaTime];
}


- (TimeBase*) getTimeBase {
        return [((id<TimeBaseInterface>) (((TimeBaseInterface*) self->player))) getTimeBase];
}


// throws MediaException
// synchronized
- (void) setTimeBase:(TimeBase*)timeBase {
        [((id<TimeBaseInterface>) (((TimeBaseInterface*) self->player))) setTimeBase:timeBase];
}


- (void) prefetch {
        JAVA_TRY {
            [((id<Player>) self->player) prefetch];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :"prefetch" :e];
        } JAVA_END_TRY;
}


- (void) realize {
        JAVA_TRY {
            [((id<Player>) self->player) realize];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :"realize" :e];
        } JAVA_END_TRY;
}


- (int32_t) getState {
        return [((id<Player>) self->player) getState];
}


- (void) setLoopCount:(int32_t)count {
        [((id<Player>) self->player) setLoopCount:count];
}


- (int64_t) setMediaTime:(int64_t)now {
        JAVA_TRY {
            return [((id<Player>) self->player) setMediaTime:now];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :"setMediaTime" :e];
            return ((int64_t) (-1));
        } JAVA_END_TRY;
}


- (void) start {
        JAVA_TRY {
            if ([self->timeElapsedHelper isTime:self->gameTickTimeDelayHelper->startTime]) {
                [((id<Player>) self->player) start];
            }
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->START_METHOD_NAME :e];
        } JAVA_END_TRY;
}


- (void) stop {
        JAVA_TRY {
            [((id<Player>) self->player) stop];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :"stop" :e];
        } JAVA_END_TRY;
}


- (Control*) getControl:(const char*)controlType {
        return [((id<Player>) self->player) getControl:controlType];
}


- (Control**) getControls {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (void) setVolume:(int32_t)leftVolume :(int32_t)rightVolume {
        Controllable2* controllable2 = (((Controllable2*) self->player));
        [((id<Controllable2>) controllable2) setVolume:leftVolume :rightVolume];
}


- (Player*) getPlayerP {
        return self->player;
}

@end

