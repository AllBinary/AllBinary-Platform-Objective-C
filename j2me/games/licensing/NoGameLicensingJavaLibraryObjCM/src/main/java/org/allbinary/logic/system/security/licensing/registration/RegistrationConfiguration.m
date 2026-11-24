// Generated Code Do Not Modify
#include "org/allbinary/logic/system/security/licensing/registration/RegistrationConfiguration.h"
#include "org/allbinary/logic/string/StringMaker.h"
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif


static RegistrationConfiguration* RegistrationConfiguration_SINGLETON;

void RegistrationConfiguration_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    RegistrationConfiguration_SINGLETON = ((RegistrationConfiguration*) [((RegistrationConfiguration*) [RegistrationConfiguration alloc]) init]);
}

@implementation RegistrationConfiguration

- (void) initFields {
    self->registrationCode = "No Registration Code";
    self->NAME = "registrationid";
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (RegistrationConfiguration*) getInstance {
        return (RegistrationConfiguration_staticInit(), RegistrationConfiguration_SINGLETON);
}


// throws Exception
- (void) read {
}


// throws Exception
- (void) write {
}


- (const char*) toString {
        return [[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:"Registration Code: "] append:[self getRegistrationCode]] toString];
}


- (void) setRegistrationCode:(const char*)registrationCode {
        self->registrationCode = registrationCode;
}


- (const char*) getRegistrationCode {
        return self->registrationCode;
}

@end

