// Generated Code Do Not Modify
#include "org/allbinary/logic/system/SoftwareInformation.h"
#include "org/allbinary/KotlinUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonSeps.h"
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/string/CommonSeps.h")
#include "org/allbinary/string/CommonSeps.h"
#endif



void SoftwareInformation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation SoftwareInformation

- (void) initFields {
    
    
    
}


- (instancetype) init:(const char*)name :(const char*)version :(const char*)shortName {
    self = [super init];
    [self initFields];
        self->name = name;
        self->version = version;
        self->shortName = [[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:shortName] append:[KotlinUtil getShortName]] toString];
    return self;
}


- (const char*) getName {
        return self->name;
}


- (const char*) getVersion {
        return self->version;
}


- (const char*) toShortString {
        return self->shortName;
}


- (const char*) toString {
        const char* NAME = "Name: ";
        const char* VERSION = "Version: ";
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        [stringBuffer append:NAME];
        [stringBuffer append:[self getName]];
        [stringBuffer append:[CommonSeps getInstance]->SPACE];
        [stringBuffer append:VERSION];
        [stringBuffer append:[self getVersion]];
        return [stringBuffer toString];
}

@end

