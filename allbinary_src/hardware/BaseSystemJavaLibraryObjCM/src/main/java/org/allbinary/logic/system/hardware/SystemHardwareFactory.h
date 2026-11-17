#ifndef ORG_ALLBINARY_LOGIC_SYSTEM_HARDWARE_SYSTEMHARDWAREFACTORY_H
#define ORG_ALLBINARY_LOGIC_SYSTEM_HARDWARE_SYSTEMHARDWAREFACTORY_H
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
// package org.allbinary.logic.system.hardware

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class SystemHardwareFactory;
@class LogUtil;
@class StringMaker;
@class StringUtil;
@class GenericOperatingSystem;
@class CommonStrings;
@class NoHardware;
@class HardwareInterface;
@class HardwareFactory;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#if __has_include("org/allbinary/logic/system/hardware/HardwareInterface.h")
#include "org/allbinary/logic/system/hardware/HardwareInterface.h"
#endif

@interface SystemHardwareFactory : ABObject {
@public
    LogUtil* logUtil;
    CommonStrings* commonStrings;
    HardwareInterface* hardwareInterface;
}
- (instancetype) init;
- (void) initFields;
+ (SystemHardwareFactory*) getInstance;
- (HardwareInterface*) getInstance:(GenericOperatingSystem*)operatingSystemInterface;
+ (const char*) static_toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void SystemHardwareFactory_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_SYSTEM_HARDWARE_SYSTEMHARDWAREFACTORY_H
