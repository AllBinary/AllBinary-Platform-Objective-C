#ifndef ORG_ALLBINARY_LOGIC_SYSTEM_HARDWARE_COMPONENTS_INTERFACES_CPUINTERFACE_H
#define ORG_ALLBINARY_LOGIC_SYSTEM_HARDWARE_COMPONENTS_INTERFACES_CPUINTERFACE_H
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
// package org.allbinary.logic.system.hardware.components.interfaces

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class CpuInterface;

@protocol CpuInterface
- (const char*) getProcessor;
- (const char*) getVendorId;
- (const char*) getCpuFamily;
- (const char*) getModel;
- (const char*) getModelName;
- (const char*) getStepping;
- (const char*) getCpuSpeed;
- (const char*) getCacheSize;
- (bool) compareTo:(CpuInterface*)cpuInterface;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CpuInterface_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_SYSTEM_HARDWARE_COMPONENTS_INTERFACES_CPUINTERFACE_H
