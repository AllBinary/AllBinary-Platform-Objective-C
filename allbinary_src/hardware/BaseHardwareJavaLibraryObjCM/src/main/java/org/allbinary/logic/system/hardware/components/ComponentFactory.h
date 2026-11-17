#ifndef ORG_ALLBINARY_LOGIC_SYSTEM_HARDWARE_COMPONENTS_COMPONENTFACTORY_H
#define ORG_ALLBINARY_LOGIC_SYSTEM_HARDWARE_COMPONENTS_COMPONENTFACTORY_H
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
// package org.allbinary.logic.system.hardware.components

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class ComponentFactory;
@class CommonStrings;
@class Component;
#if __has_include("org/allbinary/logic/system/hardware/components/Component.h")
#include "org/allbinary/logic/system/hardware/components/Component.h"
#endif

@interface ComponentFactory : ABObject {
@public
    Component* VGA;
    Component* IDE;
    Component* SCSI;
    Component* BRIDGE;
    Component* ETHERNET;
    Component* USB;
    Component* MULTIMEDIA;
    Component* PCI;
    Component* RAID;
    Component* SMBUS;
    Component* PIC;
    Component* Class_;
    Component* UNKNOWN;
}
- (instancetype) init;
- (void) initFields;
+ (ComponentFactory*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ComponentFactory_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_SYSTEM_HARDWARE_COMPONENTS_COMPONENTFACTORY_H
