// Generated Code Do Not Modify
#include "org/allbinary/logic/system/os/GenericOperatingSystem.h"
#include "org/allbinary/logic/java/character/CharacterSet.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/logic/string/StringValidationUtil.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/logic/system/os/OperatingSystemInterface.h"
#include "org/allbinary/logic/system/os/SystemProperties.h"



void GenericOperatingSystem_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation GenericOperatingSystem

- (void) initFields {
    self->osName = nullptr;
    self->osArch = nullptr;
    self->osVersion = nullptr;
    self->characterSet = [((CharacterSet*) [CharacterSet alloc]) init];
    self->scalable = false;
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        SystemProperties* systemProperties = [SystemProperties getInstance];
        StringValidationUtil* stringValidationUtil = [StringValidationUtil getInstance];
        const char* EMPTY_STRING = [StringUtil getInstance]->EMPTY_STRING;
        if ([stringValidationUtil isEmpty:[systemProperties getName]]) {
            self->osName = EMPTY_STRING;
        } else {
            self->osName = [systemProperties getName];
        }
        if ([stringValidationUtil isEmpty:[systemProperties getArch]]) {
            self->osArch = EMPTY_STRING;
        } else {
            self->osArch = [systemProperties getArch];
        }
        if ([stringValidationUtil isEmpty:[systemProperties getVersion]]) {
            self->osVersion = EMPTY_STRING;
        } else {
            self->osVersion = [systemProperties getVersion];
        }
    return self;
}


- (const char*) getName {
        return self->osName;
}


- (const char*) getVersion {
        return self->osVersion;
}


- (const char*) getArch {
        return self->osArch;
}


- (CharacterSet*) getCharacterSet {
        return self->characterSet;
}


- (bool) isOverScan {
        return false;
}


- (int32_t) getOverScanXPercent {
        return 100;
}


- (int32_t) getOverScanYPercent {
        return 100;
}


- (bool) isScalable {
        return self->scalable;
}


- (bool) isAutoHide {
        return false;
}


- (const char*) toString {
        const char* NEW_LINE = [CommonSeps getInstance]->NEW_LINE;
        StringMaker* osBuffer = [((StringMaker*) [StringMaker alloc]) init];
        [osBuffer append:"Operating System Info: \n"];
        [osBuffer append:[self getName]];
        [osBuffer append:NEW_LINE];
        [osBuffer append:[self getArch]];
        [osBuffer append:NEW_LINE];
        [osBuffer append:[self getVersion]];
        [osBuffer append:NEW_LINE];
        [osBuffer append:[[StringUtil getInstance] toString:[self getCharacterSet]]];
        [osBuffer append:NEW_LINE];
        return [osBuffer toString];
}

@end

