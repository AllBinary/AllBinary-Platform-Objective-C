#ifndef ORG_ALLBINARY_BUSINESS_INIT_LICENSEINITINFO_H
#define ORG_ALLBINARY_BUSINESS_INIT_LICENSEINITINFO_H
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
// package org.allbinary.business.init

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class LicenseInitInfo;
@class DebugFactory;
@class NoDebug;
@class StringUtil;
@class BasicArrayList;
@class BasicArrayListD;
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

@interface LicenseInitInfo : ABObject {
@public
    const char* id_;
    BasicArrayList* serverVector;
}
- (instancetype) init;
- (void) initFields;
- (const char*) getLicenseId;
- (const char*) getServer:(int32_t)index;
- (int32_t) getNumberOfServers;
- (void) setLicenseId:(const char*)value;
- (void) clearServers;
- (void) setServer:(const char*)value :(int32_t)index;
- (void) addServer:(const char*)value;
- (BasicArrayList*) getServerList;
- (void) setServerList:(BasicArrayList*)servers;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void LicenseInitInfo_staticInit(void);

#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

#endif // ORG_ALLBINARY_BUSINESS_INIT_LICENSEINITINFO_H
