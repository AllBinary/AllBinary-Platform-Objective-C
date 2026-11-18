// Generated Code Do Not Modify
#include "org/allbinary/thread/ThreadFactoryUtil.h"
#include "org/allbinary/J2MEUtil.h"
#include "org/allbinary/canvas/RunnableCanvas.h"
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h"
#include "org/allbinary/game/displayable/canvas/DemoCanvas.h"
#include "org/allbinary/game/displayable/canvas/GameCanvasRunnableInterface.h"
#include "org/allbinary/game/displayable/canvas/RunnableCanvasSingleThreadStartRunnable.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/communication/log/PreLogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/thread/ABRunnable.h"
#include "org/allbinary/thread/PrimaryThreadPool.h"
#include "org/allbinary/thread/ThreadPool.h"


static ThreadFactoryUtil* ThreadFactoryUtil_instance;

void ThreadFactoryUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ThreadFactoryUtil_instance = [((ThreadFactoryUtil*) [ThreadFactoryUtil alloc]) init];
}

@implementation ThreadFactoryUtil

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (ThreadFactoryUtil*) getInstance {
        return (ThreadFactoryUtil_staticInit(), ThreadFactoryUtil_instance);
}


- (Thread*) getInstanceGameCanvasRunnable:(GameCanvasRunnableInterface*)runnable {
        return [self getInstanceType:runnable :[runnable getType]];
}


- (Thread*) getInstanceForRunnable:(ABRunnable*)runnable {
        return [self getInstanceType:runnable :[runnable getType]];
}


- (Thread*) getInstanceType:(Runnable*)runnable :(int32_t)type {
        CommonStrings* commonStrings = [CommonStrings getInstance];
        if ([J2MEUtil isHTML]) {
            if (type == (DemoCanvas_staticInit(), DemoCanvas_TYPE) || type == (AllBinaryGameCanvas_staticInit(), AllBinaryGameCanvas_TYPE)) {
                RunnableCanvasSingleThreadStartRunnable* demoGameSingleThreadStartRunnable = [((RunnableCanvasSingleThreadStartRunnable*) [RunnableCanvasSingleThreadStartRunnable alloc]) init:((RunnableCanvas*) runnable)];
                [PreLogUtil put:[[[[((StringMaker*) [StringMaker alloc]) init] append:"Using Pseudo Thread for DemoCanvas/AllBinaryGameCanvas under PlayN/HTML5: "] append:[[StringUtil getInstance] toString:runnable]] toString] :self :commonStrings->CONSTRUCTOR];
                ThreadPool* primaryThreadPool = [PrimaryThreadPool getInstance];
                [primaryThreadPool runTask:demoGameSingleThreadStartRunnable];
            } else {
                [PreLogUtil put:[[[[((StringMaker*) [StringMaker alloc]) init] append:"Using Pseudo Thread for Runnable under PlayN/HTML5: "] append:[[StringUtil getInstance] toString:runnable]] toString] :self :commonStrings->CONSTRUCTOR];
                ThreadPool* primaryThreadPool = [PrimaryThreadPool getInstance];
                [primaryThreadPool runTask:runnable];
            }
        }
        Thread* thread = [((Thread*) [Thread alloc]) init:runnable :[runnable toString]];
        [self->logUtil putF:[thread toString] :self :commonStrings->CONSTRUCTOR];
        return thread;
}


- (void) start:(Thread*)thread {
        [thread start];
}

@end

