// Generated Code Do Not Modify
#include "org/allbinary/logic/system/security/licensing/AbeClientInformation.h"
#include "org/allbinary/business/init/LicenseInitInfo.h"
#include "org/allbinary/business/init/LicenseInitInfoUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/communication/log/PreLogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringValidationUtil.h"
#include "org/allbinary/logic/system/os/OperatingSystemFactory.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/logic/system/security/licensing/ClientInformation.h"
#if __has_include("org/allbinary/logic/system/os/OperatingSystemFactory.h")
#include "org/allbinary/logic/system/os/OperatingSystemFactory.h"
#endif
#if __has_include("org/allbinary/business/init/LicenseInitInfoUtil.h")
#include "org/allbinary/business/init/LicenseInitInfoUtil.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif



void AbeClientInformation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AbeClientInformation

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
}


- (instancetype) init:(const char*)name :(const char*)version :(const char*)specialName :(const char*)shortName {
        self = [super init:name :version :specialName :shortName];
        [self initFields];
    return self;
}


- (void) initMethod {
        JAVA_TRY {
            [self setOperatingSystemInterface:[[OperatingSystemFactory getInstance] getOperatingSystemInstance]];
            LicenseInitInfo* licenseInitInfo = [[LicenseInitInfoUtil getInstance] read];
            [self setLicenseId:[licenseInitInfo getLicenseId]];
            [self setLicenseServers:[licenseInitInfo getServerList]];
            StringValidationUtil* stringValidationUtil = [StringValidationUtil getInstance];
            if ([stringValidationUtil isEmpty:[self getLicenseId]]) {
                const char* NONE = "No License Id";
                [self setLicenseId:NONE];
            }
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [PreLogUtil put:[[[((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]) append:"Special Name: "] append:[self getSpecialName]] toString] :self :commonStrings->CONSTRUCTOR];
        } JAVA_CATCH(Exception, e) {
            LogUtil* logUtil = [LogUtil getInstance];
            CommonStrings* commonStrings = [CommonStrings getInstance];
            [logUtil put:commonStrings->EXCEPTION :self :commonStrings->CONSTRUCTOR :e];
        } JAVA_END_TRY;
}

@end

