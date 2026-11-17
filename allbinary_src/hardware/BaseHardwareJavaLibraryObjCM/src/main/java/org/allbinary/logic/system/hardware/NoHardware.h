#ifndef ORG_ALLBINARY_LOGIC_SYSTEM_HARDWARE_NOHARDWARE_H
#define ORG_ALLBINARY_LOGIC_SYSTEM_HARDWARE_NOHARDWARE_H
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
@class NoHardware;
@class StdUtil;
@class HardwareComponentInterface;
@class NoHardwareComponent;
@class ABHashtable;
@class HardwareInterface;
#include "org/allbinary/logic/system/hardware/HardwareInterface.h"

@interface NoHardware : ABObject <HardwareInterface> {
@public
}
- (instancetype) init;
+ (HardwareInterface*) getInstance;
- (HardwareComponentInterface*) getComponent:(int32_t)index;
- (const char*) toString;
- (bool) compareTo:(HardwareInterface*)hardwareInterface;
- (ABHashtable*) difference:(HardwareInterface*)hardwareInterface;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NoHardware_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_SYSTEM_HARDWARE_NOHARDWARE_H
