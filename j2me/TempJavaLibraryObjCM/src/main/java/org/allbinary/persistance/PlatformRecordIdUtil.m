// Generated Code Do Not Modify
#include "org/allbinary/persistance/PlatformRecordIdUtil.h"
#include "org/allbinary/string/CommonSeps.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.h"


static PlatformRecordIdUtil* PlatformRecordIdUtil_instance;

void PlatformRecordIdUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    PlatformRecordIdUtil_instance = [((PlatformRecordIdUtil*) [PlatformRecordIdUtil alloc]) init];
}

@implementation PlatformRecordIdUtil

- (void) initFields {
    self->PLATFORM_SHORT_NAME = "AVN";
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (PlatformRecordIdUtil*) getInstance {
        return (PlatformRecordIdUtil_staticInit(), PlatformRecordIdUtil_instance);
}


- (const char*) getRecordId:(AbeClientInformationInterface*)abeClientInformation :(const char*)baseRecordId {
        return [[[[[[((StringMaker*) [StringMaker alloc]) init] append:[abeClientInformation toShortString]] append:[CommonSeps getInstance]->UNDERSCORE] append:self->PLATFORM_SHORT_NAME] append:baseRecordId] toString];
}

@end

