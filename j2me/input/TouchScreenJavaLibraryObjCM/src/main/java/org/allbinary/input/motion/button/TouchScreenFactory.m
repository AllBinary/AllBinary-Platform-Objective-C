// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/TouchScreenFactory.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/input/motion/button/TouchScreenTypesFactory.h"
#include "org/allbinary/input/motion/button/TouchScreenType.h"
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif


static TouchScreenFactory* TouchScreenFactory_SINGLETON;

void TouchScreenFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    TouchScreenFactory_SINGLETON = ((TouchScreenFactory*) [((TouchScreenFactory*) [TouchScreenFactory alloc]) init]);
}

@implementation TouchScreenFactory

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->touch = false;
    self->multiTouch = false;
    self->multiTouchDistinct = false;
    self->touchScreenType = [TouchScreenTypesFactory getInstance]->NOTOUCH;
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        JAVA_TRY {
            [self setTouch:true];
            [self setMultiTouch:false];
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:commonStrings->EXCEPTION :(TouchScreenFactory_staticInit(), TouchScreenFactory_SINGLETON) :commonStrings->GET_INSTANCE :e];
        } JAVA_END_TRY;
    return self;
}


+ (TouchScreenFactory*) getInstance {
        return (TouchScreenFactory_staticInit(), TouchScreenFactory_SINGLETON);
}


- (void) setMultiTouch:(bool)multiTouch {
        self->multiTouch = multiTouch;
}


- (bool) isMultiTouch {
        return self->multiTouch;
}


- (void) setTouch:(bool)touch {
        self->touch = touch;
}


- (bool) isTouch {
        return self->touch;
}


- (void) setMultiTouchDistinct:(bool)multiTouchDistinct {
        self->multiTouchDistinct = multiTouchDistinct;
}


- (bool) isMultiTouchDistinct {
        return self->multiTouchDistinct;
}


- (void) setTouchScreenType:(TouchScreenType*)touchScreenType {
        self->touchScreenType = touchScreenType;
}


- (TouchScreenType*) getTouchScreenType {
        return self->touchScreenType;
}


- (const char*) toString {
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        [stringBuffer append:"TouchScreen: "];
        [stringBuffer appendboolean:[self isTouch]];
        [stringBuffer append:" MultiTouch: "];
        [stringBuffer appendboolean:[self isMultiTouch]];
        [stringBuffer append:" Distinct MultiTouch: "];
        [stringBuffer appendboolean:[self isMultiTouchDistinct]];
        [stringBuffer append:" TouchScreenType: "];
        [stringBuffer append:[[StringUtil getInstance] toString:[self getTouchScreenType]]];
        return [stringBuffer toString];
}

@end

