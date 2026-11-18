// Generated Code Do Not Modify
#include "org/allbinary/business/init/LicenseInitInfo.h"
#include "org/allbinary/debug/DebugFactory.h"
#include "org/allbinary/debug/NoDebug.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"



void LicenseInitInfo_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation LicenseInitInfo

- (void) initFields {
    self->id_ = [StringUtil getInstance]->EMPTY_STRING;
    self->serverVector = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (const char*) getLicenseId {
        return self->id_;
}


- (const char*) getServer:(int32_t)index {
        return ((const char*) self->serverVector->objectArray[index]);
}


- (int32_t) getNumberOfServers {
        return [self->serverVector size];
}


- (void) setLicenseId:(const char*)value {
        self->id_ = value;
}


- (void) clearServers {
        self->serverVector = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
}


- (void) setServer:(const char*)value :(int32_t)index {
        [self->serverVector addAt:index :value];
}


- (void) addServer:(const char*)value {
        [self->serverVector add:value];
}


- (BasicArrayList*) getServerList {
        return self->serverVector;
}


- (void) setServerList:(BasicArrayList*)servers {
        if ([DebugFactory getInstance] == [NoDebug getInstance]) {
            self->serverVector = servers;
        }
}

@end

