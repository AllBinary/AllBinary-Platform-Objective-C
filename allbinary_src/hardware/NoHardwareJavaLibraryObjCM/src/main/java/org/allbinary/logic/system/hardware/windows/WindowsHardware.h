#ifndef ORG_ALLBINARY_LOGIC_SYSTEM_HARDWARE_WINDOWS_WINDOWSHARDWARE_H
#define ORG_ALLBINARY_LOGIC_SYSTEM_HARDWARE_WINDOWS_WINDOWSHARDWARE_H
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
// package org.allbinary.logic.system.hardware.windows

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class WindowsHardware;
@class StdUtil;
@class StringUtil;
@class HardwareInterface;
@class BridgeInterface;
@class CpuInterface;
@class EthernetInterface;
@class FireWireInterface;
@class HardDriveControllerInterface;
@class HardDriveInterface;
@class HardwareComponentInterface;
@class MachineAccessControlAddressInterface;
@class MediaInterface;
@class MonitorInterface;
@class UsbInterface;
@class VideoInterface;
@class ABHashtable;
#include "org/allbinary/logic/system/hardware/HardwareInterface.h"

@interface WindowsHardware : ABObject <HardwareInterface> {
@public
}
- (instancetype) init;
- (MediaInterface*) getMultimedia:(int32_t)index;
- (BridgeInterface*) getBridge:(int32_t)index;
- (CpuInterface*) getCpu:(int32_t)index;
- (EthernetInterface*) getEthernet:(int32_t)index;
- (FireWireInterface*) getFireWire:(int32_t)index;
- (HardDriveControllerInterface*) getHardDriveController:(int32_t)index;
- (HardDriveInterface*) getHardDrive:(int32_t)index;
- (MachineAccessControlAddressInterface*) getMachineAccessControlAddress:(int32_t)index;
- (MonitorInterface*) getMonitor:(int32_t)index;
- (UsbInterface*) getUsb:(int32_t)index;
- (VideoInterface*) getVideo:(int32_t)index;
- (HardwareComponentInterface*) getComponent:(int32_t)index;
- (const char*) toString;
- (bool) compareTo:(HardwareInterface*)hardwareInterface;
- (ABHashtable*) difference:(HardwareInterface*)hardwareInterface;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void WindowsHardware_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_SYSTEM_HARDWARE_WINDOWS_WINDOWSHARDWARE_H
