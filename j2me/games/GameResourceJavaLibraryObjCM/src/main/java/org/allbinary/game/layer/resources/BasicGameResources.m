// Generated Code Do Not Modify
#include "org/allbinary/game/layer/resources/BasicGameResources.h"
#include "org/allbinary/game/configuration/GameConfigurationCentral.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/game/layer/resources/GameGraphicsResourceUtil.h"


StringMaker* BasicGameResources_stringBuffer;

void BasicGameResources_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    BasicGameResources_stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
}

@implementation BasicGameResources

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->RESOURCE = [StringUtil getInstance]->EMPTY_STRING;
    self->RESOURCE_DESTROY = [StringUtil getInstance]->EMPTY_STRING;
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) init_:(const char*)ROOT :(const char**)SIZE {
        JAVA_TRY {
            int32_t scale = ((int32_t) ([[GameConfigurationCentral getInstance]->SCALE getValue]));
            if (scale > 1 && scale - 1 < java_array_length(SIZE)) {
                [self append:ROOT :SIZE[scale - 1]];
            } else {
                java_throw(java_exception_new("Exception", [[[[((StringMaker*) [StringMaker alloc]) init] append:"Invalid Value: "] appendint:scale] toString]));
            }
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:commonStrings->EXCEPTION :self :commonStrings->INIT :e];
        } JAVA_END_TRY;
}


// throws Exception
- (void) append:(const char*)ROOT :(const char*)sizeString {
        const char* DESTROY = "_destroy";
        const char* string = [self getString];
        [(BasicGameResources_staticInit(), BasicGameResources_stringBuffer) delete:0 :[(BasicGameResources_staticInit(), BasicGameResources_stringBuffer) length]];
        [(BasicGameResources_staticInit(), BasicGameResources_stringBuffer) append:ROOT];
        [(BasicGameResources_staticInit(), BasicGameResources_stringBuffer) append:string];
        [(BasicGameResources_staticInit(), BasicGameResources_stringBuffer) append:sizeString];
        self->RESOURCE = [(BasicGameResources_staticInit(), BasicGameResources_stringBuffer) toString];
        [(BasicGameResources_staticInit(), BasicGameResources_stringBuffer) delete:0 :[(BasicGameResources_staticInit(), BasicGameResources_stringBuffer) length]];
        [(BasicGameResources_staticInit(), BasicGameResources_stringBuffer) append:ROOT];
        [(BasicGameResources_staticInit(), BasicGameResources_stringBuffer) append:DESTROY];
        [(BasicGameResources_staticInit(), BasicGameResources_stringBuffer) append:string];
        [(BasicGameResources_staticInit(), BasicGameResources_stringBuffer) append:sizeString];
        self->RESOURCE_DESTROY = [(BasicGameResources_staticInit(), BasicGameResources_stringBuffer) toString];
}


// throws Exception
- (const char*) getString {
        return [[GameGraphicsResourceUtil getInstance] getName];
}

@end

