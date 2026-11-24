// Generated Code Do Not Modify
#include "org/allbinary/logic/communication/log/LogFormatUtil.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/java/exception/ExceptionUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonLabels.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/time/TimeStampUtil.h"
#if __has_include("org/allbinary/string/CommonLabels.h")
#include "org/allbinary/string/CommonLabels.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif


static LogFormatUtil* LogFormatUtil_instance;

void LogFormatUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    LogFormatUtil_instance = ((LogFormatUtil*) [((LogFormatUtil*) [LogFormatUtil alloc]) init]);
}

@implementation LogFormatUtil

- (void) initFields {
    self->timeStampUtil = [TimeStampUtil getInstance];
    self->commonSeps = [CommonSeps getInstance];
    self->NONE = "None";
    self->LOG_ERROR = "\nLog-Error: ";
    self->EMPTY = "Empty";
    self->STACK_TRACE = "\nStack Trace: ";
    self->TIME = "Time: ";
    self->CLASS_NAME = self->commonSeps->SPACE;
    self->FUNCTION_CALL = [CommonLabels getInstance]->COLON_SEP;
    self->SPECIAL_MESSAGE = "> ";
    self->stringUtil = [StringUtil getInstance];
    self->exceptionUtil = [ExceptionUtil getInstance];
    self->nullUtil = [NullUtil getInstance];
}


+ (LogFormatUtil*) getInstance {
        return (LogFormatUtil_staticInit(), LogFormatUtil_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (const char*) get:(const char*)className :(const char*)functionName :(const char*)specialMessage :(id)exception {
        StringMaker* stringBuffer = [self getF:className :functionName];
        [stringBuffer append:[self getO:exception]];
        [stringBuffer append:self->SPECIAL_MESSAGE];
        [stringBuffer append:specialMessage];
        [stringBuffer append:self->commonSeps->NEW_LINE];
        return [stringBuffer toString];
}


- (const char*) getS:(const char*)className :(const char*)functionName :(const char*)specialMessage {
        StringMaker* stringBuffer = [self getF:className :functionName];
        [stringBuffer append:self->SPECIAL_MESSAGE];
        [stringBuffer append:specialMessage];
        [stringBuffer append:self->commonSeps->NEW_LINE];
        return [stringBuffer toString];
}


- (StringMaker*) getF:(const char*)className :(const char*)functionName {
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        [stringBuffer append:self->TIME];
        [stringBuffer append:[self->timeStampUtil getAsString]];
        [stringBuffer append:self->CLASS_NAME];
        [stringBuffer append:className];
        [stringBuffer append:self->FUNCTION_CALL];
        [stringBuffer append:functionName];
        return stringBuffer;
}


- (const char*) getO:(id)exception {
        if (exception != self->nullUtil->NULL_OBJECT) {
            StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
            [stringBuffer append:self->LOG_ERROR];
            const char* exceptionAsString = [exception toString];
            [stringBuffer append:exceptionAsString];
            [stringBuffer append:self->STACK_TRACE];
            if (exception != self->nullUtil->NULL_OBJECT) {
                [stringBuffer append:[self->exceptionUtil getStackTrace:((JavaException*) exception)]];
            } else {
                [stringBuffer append:self->stringUtil->NULL_STRING];
            }
            return [stringBuffer toString];
        } else {
            return [StringUtil getInstance]->EMPTY_STRING;
        }
}

@end

