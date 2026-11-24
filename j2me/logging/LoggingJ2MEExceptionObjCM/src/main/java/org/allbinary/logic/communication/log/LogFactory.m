// Generated Code Do Not Modify
#include "org/allbinary/logic/communication/log/LogFactory.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/logic/communication/log/Log.h"
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif


Log* LogFactory_LOG;

void LogFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    LogFactory_LOG = ((Log*) [((Log*) [Log alloc]) init:[StringUtil getInstance]->EMPTY_STRING :[NullUtil getInstance]->NULL_OBJECT :[StringUtil getInstance]->EMPTY_STRING :[NullUtil getInstance]->NULL_OBJECT]);
}

@implementation LogFactory

- (instancetype) init {
    self = [super init];
    return self;
}


+ (Log*) getInstanceD {
        StringUtil* stringUtil = [StringUtil getInstance];
        NullUtil* nullUtil = [NullUtil getInstance];
        return ((Log*) [((Log*) [Log alloc]) init:stringUtil->EMPTY_STRING :nullUtil->NULL_OBJECT :stringUtil->EMPTY_STRING :nullUtil->NULL_OBJECT]);
}


+ (Log*) getInstance:(const char*)specialMessage :(id)anyType :(const char*)functionName :(id)exception {
        return ((Log*) [((Log*) [Log alloc]) init:specialMessage :anyType :functionName :exception]);
}


+ (Log*) getInstanceF:(const char*)specialMessage :(id)anyType :(const char*)functionName {
        return (LogFactory_staticInit(), LogFactory_LOG);
}

@end

