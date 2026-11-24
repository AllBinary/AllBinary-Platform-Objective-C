// Generated Code Do Not Modify
#include "org/allbinary/logic/system/security/licensing/AbeClientInformationData.h"


static AbeClientInformationData* AbeClientInformationData_instance;

void AbeClientInformationData_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    AbeClientInformationData_instance = ((AbeClientInformationData*) [((AbeClientInformationData*) [AbeClientInformationData alloc]) init]);
}

@implementation AbeClientInformationData

- (void) initFields {
    self->KEY = "KEY";
    self->NAME = "NAME";
    self->VERSION = "VERSION";
    self->SPECIALNAME = "SPECIALNAME";
    self->LICENSEID = "LICENSEID";
    self->LICENSE_TYPE = "LICENSETYPE";
    self->PREVIOUSLICENSEID = "PREVIOUSLICENSEID";
    self->OSNAME = "OSNAME";
    self->OSARCH = "OSARCH";
    self->OSVERSION = "OSVERSION";
    self->OS = "OS";
    self->HARDWARE = "HARDWARE";
    self->LICENSESERVERS = "LICENSESERVERS";
    self->NEWLICENSE = "NEWLICENSE";
    self->ISNEW = "ISNEW";
    self->SPECIAL = "SPECIAL";
}


+ (AbeClientInformationData*) getInstance {
        return (AbeClientInformationData_staticInit(), AbeClientInformationData_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}

@end

