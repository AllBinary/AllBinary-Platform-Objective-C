// Generated Code Do Not Modify
#include "org/allbinary/thread/PooledThread.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/thread/ThreadObjectUtil.h"
#include "org/allbinary/thread/ThreadPool.h"



void PooledThread_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation PooledThread

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    self->threadObjectUtil = [ThreadObjectUtil getInstance];
    
    self->INTERRUPT_EXCEPTION = "Exit InterruptedException";
}


- (instancetype) init:(ThreadPool*)threadPool {
        self = [super init:[threadPool createName]];
        [self initFields];
        [self->logUtil putF:self->commonStrings->CONSTRUCTOR :self :self->commonStrings->CONSTRUCTOR];
        self->threadPool = threadPool;
    return self;
}


- (void) run {
        [self->threadPool threadStarted];
        while (true) {
            Runnable* task2 = self->threadObjectUtil->NULL_PRIORITY_RUNNABLE;
            JAVA_TRY {
                task2 = [self->threadPool getTask];
                self->threadPool->runningTask = true;
                [self->threadPool startTask:task2];
            } JAVA_CATCH(InterruptedException, ex) {
                LogUtil* logUtil = [LogUtil getInstance];
                [logUtil putF:self->INTERRUPT_EXCEPTION :self :self->commonStrings->RUN];
                break;
            } JAVA_END_TRY;
            if (task2 == self->threadObjectUtil->NULL_PRIORITY_RUNNABLE) {
                break;
            }
            JAVA_TRY {
                [task2 run];
                [self->threadPool completedTask:task2];
                self->threadPool->runningTask = false;
            } JAVA_CATCH(Exception, e) {
                LogUtil* logUtil = [LogUtil getInstance];
                [logUtil put:[[[[((StringMaker*) [StringMaker alloc]) init] append:self->commonStrings->EXCEPTION_LABEL] append:[[StringUtil getInstance] toString:task2]] toString] :self :self->commonStrings->RUN :e];
            } JAVA_END_TRY;
        }
        [self->threadPool threadStopped];
}

@end

