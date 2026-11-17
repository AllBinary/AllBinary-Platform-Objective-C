#ifndef ORG_ALLBINARY_LOGIC_SYSTEM_HARDWARE_COMPONENTS_INTERFACES_NOHARDWARECOMPONENT_H
#define ORG_ALLBINARY_LOGIC_SYSTEM_HARDWARE_COMPONENTS_INTERFACES_NOHARDWARECOMPONENT_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.logic.system.hardware.components.interfaces

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class NoHardwareComponent;
@class StringUtil;
@class HardwareComponentInterface;
#include "org/allbinary/logic/system/hardware/components/interfaces/HardwareComponentInterface.h"

@interface NoHardwareComponent : ABObject <HardwareComponentInterface> {
@public
}
- (instancetype) init;
+ (NoHardwareComponent*) getInstance;
- (bool) compareTo:(HardwareComponentInterface*)componentInterface;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NoHardwareComponent_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_SYSTEM_HARDWARE_COMPONENTS_INTERFACES_NOHARDWARECOMPONENT_H
