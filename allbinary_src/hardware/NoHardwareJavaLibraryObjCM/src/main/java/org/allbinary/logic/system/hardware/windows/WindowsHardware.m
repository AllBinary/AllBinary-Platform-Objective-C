// Generated Code Do Not Modify
#include "org/allbinary/logic/system/hardware/windows/WindowsHardware.h"
#include "org/allbinary/logic/StdUtil.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/logic/system/hardware/components/interfaces/BridgeInterface.h"
#include "org/allbinary/logic/system/hardware/components/interfaces/CpuInterface.h"
#include "org/allbinary/logic/system/hardware/components/interfaces/EthernetInterface.h"
#include "org/allbinary/logic/system/hardware/components/interfaces/FireWireInterface.h"
#include "org/allbinary/logic/system/hardware/components/interfaces/HardDriveControllerInterface.h"
#include "org/allbinary/logic/system/hardware/components/interfaces/HardDriveInterface.h"
#include "org/allbinary/logic/system/hardware/components/interfaces/HardwareComponentInterface.h"
#include "org/allbinary/logic/system/hardware/components/interfaces/MachineAccessControlAddressInterface.h"
#include "org/allbinary/logic/system/hardware/components/interfaces/MediaInterface.h"
#include "org/allbinary/logic/system/hardware/components/interfaces/MonitorInterface.h"
#include "org/allbinary/logic/system/hardware/components/interfaces/UsbInterface.h"
#include "org/allbinary/logic/system/hardware/components/interfaces/VideoInterface.h"
#include "org/allbinary/util/ABHashtable.h"



void WindowsHardware_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation WindowsHardware


- (instancetype) init {
    self = [super init];
    return self;
}


- (MediaInterface*) getMultimedia:(int32_t)index {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (BridgeInterface*) getBridge:(int32_t)index {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (CpuInterface*) getCpu:(int32_t)index {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (EthernetInterface*) getEthernet:(int32_t)index {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (FireWireInterface*) getFireWire:(int32_t)index {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (HardDriveControllerInterface*) getHardDriveController:(int32_t)index {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (HardDriveInterface*) getHardDrive:(int32_t)index {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (MachineAccessControlAddressInterface*) getMachineAccessControlAddress:(int32_t)index {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (MonitorInterface*) getMonitor:(int32_t)index {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (UsbInterface*) getUsb:(int32_t)index {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (VideoInterface*) getVideo:(int32_t)index {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (HardwareComponentInterface*) getComponent:(int32_t)index {
        java_throw(java_exception_new("RuntimeException", ""));
}


- (const char*) toString {
        return [StringUtil getInstance]->EMPTY_STRING;
}


- (bool) compareTo:(HardwareInterface*)hardwareInterface {
        return true;
}


- (ABHashtable*) difference:(HardwareInterface*)hardwareInterface {
        return [StdUtil getInstance]->NULL_TABLE;
}

@end

