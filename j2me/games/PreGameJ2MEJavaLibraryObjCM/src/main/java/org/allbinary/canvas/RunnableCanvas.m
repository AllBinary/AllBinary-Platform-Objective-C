// Generated Code Do Not Modify
#include "org/allbinary/canvas/RunnableCanvas.h"
#include "javax/microedition/lcdui/CommandListener.h"
#include "org/allbinary/TsUtil.h"
#include "org/allbinary/game/displayable/canvas/NullWaitGameRunnable.h"
#include "org/allbinary/logic/ABSystemWrapper.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/StdUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonLabels.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/thread/NullThread.h"
#include "org/allbinary/thread/ThreadObjectUtil.h"
#include "org/allbinary/time/TimeDelayHelper.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/canvas/Processor.h"
#include "org/allbinary/canvas/RunnableCanvasRefreshHelper.h"
#if __has_include("org/allbinary/canvas/GameRunnable.h")
#include "org/allbinary/canvas/GameRunnable.h"
#endif
#if __has_include("javax/microedition/lcdui/GameRunnable.h")
#include "javax/microedition/lcdui/GameRunnable.h"
#endif
#if __has_include("org/allbinary/GameRunnable.h")
#include "org/allbinary/GameRunnable.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/GameRunnable.h")
#include "org/allbinary/game/displayable/canvas/GameRunnable.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/GameRunnable.h")
#include "org/allbinary/graphics/displayable/GameRunnable.h"
#endif
#if __has_include("org/allbinary/logic/GameRunnable.h")
#include "org/allbinary/logic/GameRunnable.h"
#endif
#if __has_include("org/allbinary/logic/GameRunnable.h")
#include "org/allbinary/logic/GameRunnable.h"
#endif
#if __has_include("org/allbinary/logic/GameRunnable.h")
#include "org/allbinary/logic/GameRunnable.h"
#endif
#if __has_include("org/allbinary/logic/string/GameRunnable.h")
#include "org/allbinary/logic/string/GameRunnable.h"
#endif
#if __has_include("org/allbinary/logic/string/GameRunnable.h")
#include "org/allbinary/logic/string/GameRunnable.h"
#endif
#if __has_include("org/allbinary/string/GameRunnable.h")
#include "org/allbinary/string/GameRunnable.h"
#endif
#if __has_include("org/allbinary/string/GameRunnable.h")
#include "org/allbinary/string/GameRunnable.h"
#endif
#if __has_include("org/allbinary/thread/GameRunnable.h")
#include "org/allbinary/thread/GameRunnable.h"
#endif
#if __has_include("org/allbinary/thread/GameRunnable.h")
#include "org/allbinary/thread/GameRunnable.h"
#endif
#if __has_include("org/allbinary/thread/GameRunnable.h")
#include "org/allbinary/thread/GameRunnable.h"
#endif
#if __has_include("org/allbinary/time/GameRunnable.h")
#include "org/allbinary/time/GameRunnable.h"
#endif
#if __has_include("org/allbinary/util/GameRunnable.h")
#include "org/allbinary/util/GameRunnable.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
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
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif



void RunnableCanvas_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation RunnableCanvas

- (void) initFields {
    self->nullUtil = [NullUtil getInstance];
    self->stdUtil = [StdUtil getInstance];
    self->systemWrapper = [ABSystemWrapper getInstance];
    self->tsUtil = [TsUtil getInstance];
    self->thread = (NullThread_staticInit(), NullThread_NULL_THREAD);
    self->currentThread = (NullThread_staticInit(), NullThread_NULL_THREAD);
    self->running = false;
    self->loopTimeHelper = ((TimeDelayHelper*) [((TimeDelayHelper*) [TimeDelayHelper alloc]) init:[NullWaitGameRunnable getInstance]->WAIT]);
    self->runnableCanvasRefreshHelper = [Processor getInstance];
    self->commonLabels = [CommonLabels getInstance];
    self->threadObjectUtil = [ThreadObjectUtil getInstance];
    self->SET_RUNNING = "setRunning";
    self->IS_RUNNING = "isRunning";
    self->THREAD = "Thread: ";
    self->NOT_EQUAL = " != ";
    self->PAUSE_SLEEP = "pause sleep";
    self->START_PAUSE = "start pause - game thread sleep at: ";
    self->END_PAUSE = "end pause - game thread sleep at: ";
    self->PROCESS_LOOP_SLEEP = "processLoopSleep";
    self->pauseWait = 0LL;
    self->notified = false;
}


- (instancetype) init:(CommandListener*)commandListener :(BasicArrayList*)childNameList :(bool)hasParam {
        self = [super init:[CommonStrings getInstance]->UNKNOWN :childNameList];
        [self initFields];
        [self->logUtil putF:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:"RunnableCanvas delay: "] appendint:self->loopTimeHelper->delay] toString] :self :self->commonStrings->CONSTRUCTOR];
        self->runnableCanvasRefreshHelper = ((RunnableCanvasRefreshHelper*) [((RunnableCanvasRefreshHelper*) [RunnableCanvasRefreshHelper alloc]) init:self]);
        if (commandListener != nil) {
            [self initCommands:commandListener];
        } else if (hasParam) {
            [self->logUtil putF:"commandListener was null" :self :"initCommands"];
        }
    return self;
}


- (void) initCommands:(CommandListener*)cmdListener {
        [self->logUtil putF:self->commonStrings->NOT_IMPLEMENTED :self :"initCommands"];
}


- (bool) isMainCanvas {
        if ([self getCustomCommandListener] != nil) {
            return true;
        } else {
            return false;
        }
}


- (void) setThread:(Thread*)thread {
        self->thread = thread;
}


- (void) setRunning:(bool)running {
        self->running = running;
        if (!self->running) {
            self->thread = (NullThread_staticInit(), NullThread_NULL_THREAD);
            java_monitor_enter(self);
            {
                [self->threadObjectUtil notifyObject:self];
            }
            java_monitor_exit(self);
        }
        [self->logUtil putF:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:self->IS_RUNNING] appendboolean:self->running] toString] :self :self->SET_RUNNING];
}


// synchronized
- (bool) isRunning {
        if (self->thread == self->currentThread) {
            return self->running;
        } else {
            StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
            [stringBuffer append:self->THREAD];
            if (self->thread != nil) {
                [stringBuffer append:[self->thread toString]];
            }
            [stringBuffer append:self->NOT_EQUAL];
            if (self->currentThread != nil) {
                [stringBuffer append:[[StringUtil getInstance] toString:self->currentThread]];
            }
            [self->logUtil putF:[stringBuffer toString] :self :self->IS_RUNNING];
            return false;
        }
}


- (TimeDelayHelper*) getLoopTimeHelperP {
        return self->loopTimeHelper;
}


- (void) setWait:(int32_t)wait {
        self->loopTimeHelper->delay = wait;
        self->pauseWait = ((int64_t) wait) * 3LL;
        [self->logUtil putF:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:"setWait - delay: "] appendint:self->loopTimeHelper->delay] toString] :self :self->commonStrings->CONSTRUCTOR];
}


- (int32_t) getWait {
        return self->loopTimeHelper->delay;
}


- (void) setCurrentThread {
        self->currentThread = [Thread currentThread];
}


- (void) setCurrentThreadFake {
        self->currentThread = self->thread;
}


- (void) showNotify {
        JAVA_TRY {
            [self stopWaiting];
        } JAVA_CATCH(Exception, e) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :"showNotify" :e];
        } JAVA_END_TRY;
}


// throws Exception
- (void) stopWaiting {
        self->notified = true;
        java_monitor_enter(self);
        {
            [self->threadObjectUtil notifyObject:self];
        }
        java_monitor_exit(self);
        [self repaint];
}


// throws Exception
// synchronized
- (void) waitOnNotify:(int64_t)wait {
        if (!self->notified) {
            if (wait > 0LL) {
                [self->threadObjectUtil waitObjectFor:self :wait];
            } else {
                [self->threadObjectUtil waitObject:self];
            }
        }
}


// throws Exception
- (void) processSleep {
        java_sleep(self->pauseWait);
}


- (bool) isPausable {
        return false;
}


// throws Exception
- (void) processGameSleep:(int64_t)sleep {
        java_sleep(sleep);
}


// throws Exception
- (void) processLoopSleep {
        [self->runnableCanvasRefreshHelper process];
        if ([self isPaused]) {
            StringMaker* stringMaker = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
            if ([self isRunning] && ![self isSingleThread]) {
                [stringMaker delete:0 :[stringMaker length]];
                int64_t currentTimeMillis = [self->systemWrapper currentTimeMillis];
                [self->logUtil putF:[[[[[stringMaker append:self->START_PAUSE] appendlong:currentTimeMillis] append:self->PAUSE_SLEEP] appendlong:self->pauseWait] toString] :self :self->PROCESS_LOOP_SLEEP];
                while ([self isPaused] && [self isRunning] && ![self isSingleThread]) {
                    [self processSleep];
                    if (![self isPausable]) {
                        [stringMaker delete:0 :[stringMaker length]];
                        [self->logUtil putF:[[[stringMaker append:self->END_PAUSE] appendlong:currentTimeMillis] toString] :self :self->PROCESS_LOOP_SLEEP];
                        return;
                    }
                }
            }
        }
        int64_t elapsedTime = [self->loopTimeHelper getElapsedTNT];
        int64_t wait = ((int64_t) self->loopTimeHelper->delay);
        if (elapsedTime > wait) {
            elapsedTime = wait;
        } else {
            [self processGameSleep:wait - elapsedTime];
        }
}


- (bool) isSingleThread {
        return false;
}


- (void) run {
        [self setCurrentThread];
}


// throws Exception
- (void) end2 {
}


- (int32_t) getType {
        return -1;
}

@end

