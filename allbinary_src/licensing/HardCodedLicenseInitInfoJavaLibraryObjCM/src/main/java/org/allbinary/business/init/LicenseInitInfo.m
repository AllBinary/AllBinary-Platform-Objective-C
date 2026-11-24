// Generated Code Do Not Modify
#include "org/allbinary/business/init/LicenseInitInfo.h"
#include "org/allbinary/debug/DebugFactory.h"
#include "org/allbinary/debug/NoDebug.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif



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
    self->serverList = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
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
        return ((const char*) [self->serverList get:index]);
}


- (int32_t) getNumberOfServers {
        return [self->serverList size];
}


- (void) setLicenseId:(const char*)value {
        self->id_ = value;
}


- (void) clearServers {
        [self->serverList clear];
}


- (void) setServer:(const char*)value :(int32_t)index {
        [self->serverList addAt:index :value];
}


- (void) addServer:(const char*)value {
        [self->serverList add:value];
}


- (BasicArrayList*) getServerList {
        return self->serverList;
}


- (void) setServerList:(BasicArrayList*)servers {
        if ([DebugFactory getInstance] == [NoDebug getInstance]) {
            self->serverList = servers;
        }
}

@end

