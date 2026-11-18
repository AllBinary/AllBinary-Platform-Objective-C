// Generated Code Do Not Modify
#include "org/allbinary/logic/system/security/licensing/ClientInformation.h"
#include "org/allbinary/TsUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/logic/system/hardware/HardwareInterface.h"
#include "org/allbinary/logic/system/hardware/SystemHardwareFactory.h"
#include "org/allbinary/logic/system/os/GenericOperatingSystem.h"
#include "org/allbinary/logic/system/os/NoOperatingSystem.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListUtil.h"
#include "org/allbinary/logic/StdUtil.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.h"
#include "org/allbinary/logic/system/security/licensing/AbeClientInformationData.h"



void ClientInformation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ClientInformation

- (void) initFields {
    self->operatingSystemInterface = (NoOperatingSystem_staticInit(), NoOperatingSystem_NO_OPERATING_SYSTEM);
    self->tsUtil = [TsUtil getInstance];
    
    
    
    
    self->hardSale = true;
    self->licenseId = [StringUtil getInstance]->EMPTY_STRING;
    self->licenseServers = [[BasicArrayListUtil getInstance] getImmutableInstance];
}


- (instancetype) init:(const char*)name :(const char*)version :(const char*)specialName :(const char*)shortName {
    self = [super init];
    [self initFields];
        self->name = name;
        self->version = version;
        self->specialName = specialName;
        self->shortName = [[[[[((StringMaker*) [StringMaker alloc]) init] append:shortName] append:[CommonSeps getInstance]->UNDERSCORE] append:version] toString];
        [self init_];
    return self;
}


- (void) init_ {
}


- (GenericOperatingSystem*) getOperatingSystemInterface {
        return self->operatingSystemInterface;
}


- (const char*) getName {
        return self->name;
}


- (const char*) getSpecialName {
        return self->specialName;
}


- (const char*) getVersion {
        return self->version;
}


- (const char*) getLicenseId {
        return self->licenseId;
}


- (BasicArrayList*) getLicenseServers {
        return self->licenseServers;
}


- (const char*) getLicenseServer:(int32_t)index {
        return ((const char*) self->licenseServers->objectArray[index]);
}


- (int32_t) getNumberOfLicenseServers {
        return [self->licenseServers size];
}


- (ABHashtable*) toHashtable {
        AbeClientInformationData* abeClientInformationData = [AbeClientInformationData getInstance];
        GenericOperatingSystem* genericOperatingSystem = [self getOperatingSystemInterface];
        ABHashtable* clientInfoHashtable = [[StdUtil getInstance] createHashtable];
        [clientInfoHashtable put:JAVA_BOX(abeClientInformationData->NAME) :JAVA_BOX(self->name)];
        [clientInfoHashtable put:JAVA_BOX(abeClientInformationData->VERSION) :JAVA_BOX(self->version)];
        [clientInfoHashtable put:JAVA_BOX(abeClientInformationData->SPECIALNAME) :JAVA_BOX(self->specialName)];
        [clientInfoHashtable put:JAVA_BOX(abeClientInformationData->LICENSEID) :JAVA_BOX([self getLicenseId])];
        [clientInfoHashtable put:JAVA_BOX(abeClientInformationData->OSNAME) :JAVA_BOX([genericOperatingSystem getName])];
        [clientInfoHashtable put:JAVA_BOX(abeClientInformationData->OSARCH) :JAVA_BOX([genericOperatingSystem getArch])];
        [clientInfoHashtable put:JAVA_BOX(abeClientInformationData->OSVERSION) :JAVA_BOX([genericOperatingSystem getVersion])];
        [clientInfoHashtable put:JAVA_BOX(abeClientInformationData->OS) :JAVA_BOX([genericOperatingSystem toString])];
        HardwareInterface* hardwareInterface = [[SystemHardwareFactory getInstance] getInstance:genericOperatingSystem];
        const char* hardwareString = [hardwareInterface toString];
        [clientInfoHashtable put:JAVA_BOX(abeClientInformationData->HARDWARE) :JAVA_BOX(hardwareString)];
        return clientInfoHashtable;
}


- (bool) isSameId:(const char*)alicenseId {
        if ([self->tsUtil compareTo:[self getLicenseId] :alicenseId] == 0) {
            return true;
        } else {
            return false;
        }
}


- (bool) isLargerOrDifferentServerList:(BasicArrayList*)list {
        int32_t size = [list size] - 1;
        int32_t currentSize = [self->licenseServers size] - 1;
        if (size > currentSize) {
            return true;
        }
        for (int32_t index = size; index >= 0; index--) {
            const char* newServerName = ((const char*) list->objectArray[index]);
            for (int32_t index2 = currentSize; index2 >= 0; index2--) {
                const char* nextOldServerName = ((const char*) self->licenseServers->objectArray[index]);
                if ([self->tsUtil compareTo:newServerName :nextOldServerName] != 0) {
                    return true;
                }
            }
        }
        return false;
}


- (void) setHardSale:(bool)hardSale {
        self->hardSale = hardSale;
}


- (bool) isHardSale {
        return self->hardSale;
}


- (void) setOperatingSystemInterface:(GenericOperatingSystem*)operatingSystemInterface {
        self->operatingSystemInterface = operatingSystemInterface;
}


- (void) setLicenseId:(const char*)licenseId {
        self->licenseId = licenseId;
}


- (void) setLicenseServers:(BasicArrayList*)licenseServers {
        self->licenseServers = licenseServers;
}


- (const char*) toShortString {
        return self->shortName;
}

@end

