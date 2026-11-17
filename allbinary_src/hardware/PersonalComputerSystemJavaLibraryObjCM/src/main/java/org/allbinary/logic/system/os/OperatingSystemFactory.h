#ifndef ORG_ALLBINARY_LOGIC_SYSTEM_OS_OPERATINGSYSTEMFACTORY_H
#define ORG_ALLBINARY_LOGIC_SYSTEM_OS_OPERATINGSYSTEMFACTORY_H
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
// package org.allbinary.logic.system.os

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class OperatingSystemFactory;
@class Log;
@class LogFactory;
@class LogUtil;
@class LogConfigTypeFactory;
@class LogConfigTypes;
@class StringMaker;
@class StringUtil;
@class LinuxOperatingSystemFactory;
@class SolarisOperatingSystemFactory;
@class WindowsOperatingSystemFactory;
@class CommonStrings;
@class NoOperatingSystem;
@class GenericOperatingSystem;
@class OperatingSystems;
@class SystemProperties;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#include "java/lang/System.h"
#if __has_include("org/allbinary/logic/system/os/GenericOperatingSystem.h")
#include "org/allbinary/logic/system/os/GenericOperatingSystem.h"
#endif

@interface OperatingSystemFactory : ABObject {
@public
    LogUtil* logUtil;
    CommonStrings* commonStrings;
    GenericOperatingSystem* genericOperatingSystem;
    bool hasDetected;
}
- (instancetype) init;
- (void) initFields;
+ (OperatingSystemFactory*) getInstance;
- (GenericOperatingSystem*) getOperatingSystemInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void OperatingSystemFactory_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_SYSTEM_OS_OPERATINGSYSTEMFACTORY_H
