#ifndef ORG_ALLBINARY_LOGIC_SYSTEM_OS_SOLARIS_SOLARISOPERATINGSYSTEMFACTORY_H
#define ORG_ALLBINARY_LOGIC_SYSTEM_OS_SOLARIS_SOLARISOPERATINGSYSTEMFACTORY_H
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
// package org.allbinary.logic.system.os.solaris

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class SolarisOperatingSystemFactory;
@class LogUtil;
@class LogConfigTypeFactory;
@class LogConfigTypes;
@class GenericOperatingSystem;
@class NoOperatingSystem;
@class OperatingSystems;
@class SystemProperties;
@class CommonStrings;
@class SolarisOS;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif

@interface SolarisOperatingSystemFactory : ABObject {
@public
    LogUtil* logUtil;
}
- (instancetype) init;
- (void) initFields;
+ (SolarisOperatingSystemFactory*) getInstance;
- (GenericOperatingSystem*) getOperatingSystemInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void SolarisOperatingSystemFactory_staticInit(void);

#if __has_include("org/allbinary/logic/system/os/GenericOperatingSystem.h")
#include "org/allbinary/logic/system/os/GenericOperatingSystem.h"
#endif

#endif // ORG_ALLBINARY_LOGIC_SYSTEM_OS_SOLARIS_SOLARISOPERATINGSYSTEMFACTORY_H
