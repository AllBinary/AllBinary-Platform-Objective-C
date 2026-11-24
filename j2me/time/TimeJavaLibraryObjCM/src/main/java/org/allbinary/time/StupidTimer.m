// Generated Code Do Not Modify
#include "org/allbinary/time/StupidTimer.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/communication/log/PreLogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/logic/util/visitor/Visitor.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/thread/ThreadObjectUtil.h"
#include "org/allbinary/time/TimeDelayHelper.h"
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
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif



void StupidTimer_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation StupidTimer

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->commonStrings = [CommonStrings getInstance];
    self->nullUtil = [NullUtil getInstance];
    self->threadObjectUtil = [ThreadObjectUtil getInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (bool) visitBool:(Visitor*)visitorInterface {
        bool result = ((bool) [visitorInterface visit:self->nullUtil->NULL_OBJECT]);
        bool result2 = ((bool) (result));
        return result2;
}


// throws Exception
- (void) visit:(Visitor*)visitorInterface :(TimeDelayHelper*)timeDelayHelper {
        bool tookTooLong = false;
        const char* WAITING_FOR = "Waiting for: ";
        [PreLogUtil put:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:WAITING_FOR] append:[[StringUtil getInstance] toString:visitorInterface]] toString] :self :self->commonStrings->VISIT];
        int32_t index = 0;
        while ([self visitBool:visitorInterface]) {
            if (index % 10 == 0) {
                [PreLogUtil put:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:WAITING_FOR] appendint:index] toString] :self :self->commonStrings->VISIT];
            }
            index++;
            java_monitor_enter(self);
            {
                [self->threadObjectUtil waitObjectFor:self :1800];
            }
            java_monitor_exit(self);
            if ([timeDelayHelper isTimeTNT]) {
                tookTooLong = true;
                break;
            }
        }
        if (tookTooLong) {
            [self->logUtil put:self->commonStrings->EXCEPTION :self :self->commonStrings->VISIT :java_exception_new("Exception", [[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:"Took Too Long: "] append:[[StringUtil getInstance] toString:visitorInterface]] toString])];
        } else {
            [PreLogUtil put:[timeDelayHelper toString] :self :self->commonStrings->VISIT];
        }
}


// throws Exception
- (void) stopWaiting {
        java_monitor_enter(self);
        {
            [self->threadObjectUtil notifyObject:self];
        }
        java_monitor_exit(self);
}

@end

