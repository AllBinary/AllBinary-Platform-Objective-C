#ifndef ORG_ALLBINARY_LOGIC_SYSTEM_HARDWARE_LINUX_LINUXHARDWARE_H
#define ORG_ALLBINARY_LOGIC_SYSTEM_HARDWARE_LINUX_LINUXHARDWARE_H
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
// package org.allbinary.logic.system.hardware.linux

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class LinuxHardware;
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

@interface LinuxHardware : ABObject <HardwareInterface> {
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
- (bool) isNextHardware:(const char*)nextLine;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void LinuxHardware_staticInit(void);

#if __has_include("org/allbinary/logic/system/hardware/components/interfaces/BridgeInterface.h")
#include "org/allbinary/logic/system/hardware/components/interfaces/BridgeInterface.h"
#endif
#if __has_include("org/allbinary/logic/system/hardware/components/interfaces/CpuInterface.h")
#include "org/allbinary/logic/system/hardware/components/interfaces/CpuInterface.h"
#endif
#if __has_include("org/allbinary/logic/system/hardware/components/interfaces/EthernetInterface.h")
#include "org/allbinary/logic/system/hardware/components/interfaces/EthernetInterface.h"
#endif
#if __has_include("org/allbinary/logic/system/hardware/components/interfaces/FireWireInterface.h")
#include "org/allbinary/logic/system/hardware/components/interfaces/FireWireInterface.h"
#endif
#if __has_include("org/allbinary/logic/system/hardware/components/interfaces/HardDriveControllerInterface.h")
#include "org/allbinary/logic/system/hardware/components/interfaces/HardDriveControllerInterface.h"
#endif
#if __has_include("org/allbinary/logic/system/hardware/components/interfaces/HardDriveInterface.h")
#include "org/allbinary/logic/system/hardware/components/interfaces/HardDriveInterface.h"
#endif
#if __has_include("org/allbinary/logic/system/hardware/components/interfaces/HardwareComponentInterface.h")
#include "org/allbinary/logic/system/hardware/components/interfaces/HardwareComponentInterface.h"
#endif
#if __has_include("org/allbinary/logic/system/hardware/components/interfaces/MachineAccessControlAddressInterface.h")
#include "org/allbinary/logic/system/hardware/components/interfaces/MachineAccessControlAddressInterface.h"
#endif
#if __has_include("org/allbinary/logic/system/hardware/components/interfaces/MediaInterface.h")
#include "org/allbinary/logic/system/hardware/components/interfaces/MediaInterface.h"
#endif
#if __has_include("org/allbinary/logic/system/hardware/components/interfaces/MonitorInterface.h")
#include "org/allbinary/logic/system/hardware/components/interfaces/MonitorInterface.h"
#endif
#if __has_include("org/allbinary/logic/system/hardware/components/interfaces/UsbInterface.h")
#include "org/allbinary/logic/system/hardware/components/interfaces/UsbInterface.h"
#endif
#if __has_include("org/allbinary/logic/system/hardware/components/interfaces/VideoInterface.h")
#include "org/allbinary/logic/system/hardware/components/interfaces/VideoInterface.h"
#endif
#if __has_include("org/allbinary/util/ABHashtable.h")
#include "org/allbinary/util/ABHashtable.h"
#endif

#endif // ORG_ALLBINARY_LOGIC_SYSTEM_HARDWARE_LINUX_LINUXHARDWARE_H
