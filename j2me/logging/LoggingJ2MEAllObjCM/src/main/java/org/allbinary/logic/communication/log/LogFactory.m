// Generated Code Do Not Modify
#include "org/allbinary/logic/communication/log/LogFactory.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/logic/communication/log/Log.h"



void LogFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation LogFactory

- (instancetype) init {
    self = [super init];
    return self;
}


+ (Log*) getInstanceD {
        StringUtil* stringUtil = [StringUtil getInstance];
        NullUtil* nullUtil = [NullUtil getInstance];
        return [((Log*) [Log alloc]) init:stringUtil->EMPTY_STRING :nullUtil->NULL_OBJECT :stringUtil->EMPTY_STRING :nullUtil->NULL_OBJECT];
}


+ (Log*) getInstanceNoF:(const char*)specialMessage :(id)anyType :(id)exception {
        return [((Log*) [Log alloc]) init:specialMessage :anyType :[StringUtil getInstance]->EMPTY_STRING :exception];
}


+ (Log*) getInstance:(const char*)specialMessage :(id)anyType :(const char*)functionName :(id)exception {
        return [((Log*) [Log alloc]) init:specialMessage :anyType :functionName :exception];
}


+ (Log*) getInstanceF:(const char*)specialMessage :(id)anyType :(const char*)functionName {
        NullUtil* nullUtil = [NullUtil getInstance];
        return [((Log*) [Log alloc]) init:specialMessage :anyType :functionName :nullUtil->NULL_OBJECT];
}

@end

