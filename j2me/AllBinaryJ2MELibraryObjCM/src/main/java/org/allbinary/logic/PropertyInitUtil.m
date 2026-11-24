// Generated Code Do Not Modify
#include "org/allbinary/logic/PropertyInitUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonStrings.h"
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif


static PropertyInitUtil* PropertyInitUtil_instance;

void PropertyInitUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    PropertyInitUtil_instance = ((PropertyInitUtil*) [((PropertyInitUtil*) [PropertyInitUtil alloc]) init]);
}

@implementation PropertyInitUtil

- (instancetype) init {
    self = [super init];
    return self;
}


+ (PropertyInitUtil*) getInstance:(int32_t)value {
        CommonStrings* commonStrings = [CommonStrings getInstance];
        LogUtil* logUtil = [LogUtil getInstance];
        [logUtil putF:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:"PropertyInitUtil: "] appendint:value] toString] :logUtil :commonStrings->CONSTRUCTOR];
        return (PropertyInitUtil_staticInit(), PropertyInitUtil_instance);
}

@end

