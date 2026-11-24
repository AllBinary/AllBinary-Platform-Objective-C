#ifndef ORG_ALLBINARY_LOGIC_SYSTEM_SECURITY_LICENSING_CLIENTINFORMATION_H
#define ORG_ALLBINARY_LOGIC_SYSTEM_SECURITY_LICENSING_CLIENTINFORMATION_H
/*
 *
 * AllBinary Open License Version 1
 * Copyright (c) 2011 AllBinary
 * 
 * By agreeing to this license you and any business entity you represent are
 * legally bound to the AllBinary Open License Version 1 legal agreement.
 * 
 * You may obtain the AllBinary Open License Version 1 legal agreement from
 * AllBinary or the root directory of AllBinary's AllBinary Platform repository.
 * 
 * Created By: Travis Berthelot
 *  
 */
// Generated Code Do Not Modify
// package org.allbinary.logic.system.security.licensing

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class ClientInformation;
@class TsUtil;
@class StringMaker;
@class StringUtil;
@class HardwareInterface;
@class SystemHardwareFactory;
@class GenericOperatingSystem;
@class NoOperatingSystem;
@class CommonSeps;
@class BasicArrayList;
@class BasicArrayListUtil;
@class StdUtil;
@class ABHashtable;
@class AbeClientInformationInterface;
@class AbeClientInformationData;
#if __has_include("org/allbinary/TsUtil.h")
#include "org/allbinary/TsUtil.h"
#endif
#if __has_include("org/allbinary/logic/system/os/GenericOperatingSystem.h")
#include "org/allbinary/logic/system/os/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif
#include "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.h"

// This is the information sent to the license server
@interface ClientInformation : ABObject <AbeClientInformationInterface> {
@public
    GenericOperatingSystem* operatingSystemInterface;
    TsUtil* tsUtil;
    const char* name;
    const char* shortName;
    const char* version;
    const char* specialName;
    bool hardSale;
    const char* licenseId;
    BasicArrayList* licenseServers;
}
- (instancetype) init:(const char*)name :(const char*)version :(const char*)specialName :(const char*)shortName;
- (void) initFields;
- (void) initMethod;
- (GenericOperatingSystem*) getOperatingSystemInterface;
- (const char*) getName;
- (const char*) getSpecialName;
- (const char*) getVersion;
- (const char*) getLicenseId;
- (BasicArrayList*) getLicenseServers;
- (const char*) getLicenseServer:(int32_t)index;
- (int32_t) getNumberOfLicenseServers;
- (ABHashtable*) toHashtable;
- (bool) isSameId:(const char*)alicenseId;
- (bool) isLargerOrDifferentServerList:(BasicArrayList*)list;
- (void) setHardSale:(bool)hardSale;
- (bool) isHardSale;
- (void) setOperatingSystemInterface:(GenericOperatingSystem*)operatingSystemInterface;
- (void) setLicenseId:(const char*)licenseId;
- (void) setLicenseServers:(BasicArrayList*)licenseServers;
- (const char*) toShortString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ClientInformation_staticInit(void);

#if __has_include("org/allbinary/logic/system/os/GenericOperatingSystem.h")
#include "org/allbinary/logic/system/os/GenericOperatingSystem.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif
#if __has_include("org/allbinary/util/ABHashtable.h")
#include "org/allbinary/util/ABHashtable.h"
#endif

#endif // ORG_ALLBINARY_LOGIC_SYSTEM_SECURITY_LICENSING_CLIENTINFORMATION_H
