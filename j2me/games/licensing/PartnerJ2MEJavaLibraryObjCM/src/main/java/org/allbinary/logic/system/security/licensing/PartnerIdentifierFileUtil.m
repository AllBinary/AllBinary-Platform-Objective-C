// Generated Code Do Not Modify
#include "org/allbinary/logic/system/security/licensing/PartnerIdentifierFileUtil.h"
#include "org/allbinary/data/resource/ResourceUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif


static PartnerIdentifierFileUtil* PartnerIdentifierFileUtil_instance;

void PartnerIdentifierFileUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    PartnerIdentifierFileUtil_instance = ((PartnerIdentifierFileUtil*) [((PartnerIdentifierFileUtil*) [PartnerIdentifierFileUtil alloc]) init]);
}

@implementation PartnerIdentifierFileUtil

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->FILE_NAME = "partner.txt";
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (PartnerIdentifierFileUtil*) getInstance {
        return (PartnerIdentifierFileUtil_staticInit(), PartnerIdentifierFileUtil_instance);
}


- (const char*) get {
        JAVA_TRY {
            ResourceUtil* resourceUtil = [ResourceUtil getInstance];
            InputStream* inputStream = [resourceUtil getResourceAsStream:self->FILE_NAME];
            InputStreamReader* inputStreamReader = ((InputStreamReader*) [((InputStreamReader*) [InputStreamReader alloc]) init:inputStream]);
            uint16_t* chars = ((uint16_t*) java_array_new(sizeof(uint16_t), 30));
            int32_t size = [inputStreamReader read:chars];
            const char* partnerString = [StringUtil getInstance]->EMPTY_STRING;
            if (size > 0) {
                partnerString = java_string_new(chars, 0, size);
            }
            [inputStreamReader close];
            return partnerString;
        } JAVA_CATCH(Exception, e) {
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [self->logUtil put:commonStrings->EXCEPTION :self :commonStrings->GET :e];
            return [StringUtil getInstance]->NULL_STRING;
        } JAVA_END_TRY;
}

@end

