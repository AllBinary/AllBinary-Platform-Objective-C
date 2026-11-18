#ifndef ORG_ALLBINARY_LOGIC_SYSTEM_HARDWARE_HARDWAREINTERFACE_H
#define ORG_ALLBINARY_LOGIC_SYSTEM_HARDWARE_HARDWAREINTERFACE_H
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
@class HardwareInterface;
@class HardwareComponentInterface;
@class ABHashtable;

@protocol HardwareInterface
- (HardwareComponentInterface*) getComponent:(int32_t)index;
- (const char*) toString;
- (bool) compareTo:(HardwareInterface*)hardwareInterface;
- (ABHashtable*) difference:(HardwareInterface*)hardwareInterface;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void HardwareInterface_staticInit(void);

#if __has_include("org/allbinary/logic/system/hardware/components/interfaces/HardwareComponentInterface.h")
#include "org/allbinary/logic/system/hardware/components/interfaces/HardwareComponentInterface.h"
#endif
#if __has_include("org/allbinary/util/ABHashtable.h")
#include "org/allbinary/util/ABHashtable.h"
#endif

#endif // ORG_ALLBINARY_LOGIC_SYSTEM_HARDWARE_HARDWAREINTERFACE_H
