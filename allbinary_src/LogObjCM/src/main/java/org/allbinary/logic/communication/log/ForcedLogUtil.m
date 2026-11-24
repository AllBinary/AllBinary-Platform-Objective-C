// Generated Code Do Not Modify
#include "org/allbinary/logic/communication/log/ForcedLogUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/logic/communication/log/PreLogUtil.h"
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif



void ForcedLogUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ForcedLogUtil

- (instancetype) init {
    self = [super init];
    return self;
}


+ (void) log:(const char*)message :(id)anyType {
        JAVA_TRY {
            java_throw(java_exception_new("Exception", message));
        } JAVA_CATCH(Exception, e) {
            [PreLogUtil putOE:[CommonStrings getInstance]->EXCEPTION :anyType :"log" :e];
        } JAVA_END_TRY;
}

@end

