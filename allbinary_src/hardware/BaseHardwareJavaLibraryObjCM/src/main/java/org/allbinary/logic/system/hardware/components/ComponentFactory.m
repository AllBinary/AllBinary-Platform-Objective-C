// Generated Code Do Not Modify
#include "org/allbinary/logic/system/hardware/components/ComponentFactory.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/logic/system/hardware/components/Component.h"
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif


static ComponentFactory* ComponentFactory_instance;

void ComponentFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ComponentFactory_instance = ((ComponentFactory*) [((ComponentFactory*) [ComponentFactory alloc]) init]);
}

@implementation ComponentFactory

- (void) initFields {
    self->VGA = ((Component*) [((Component*) [Component alloc]) init:"VGA"]);
    self->IDE = ((Component*) [((Component*) [Component alloc]) init:"IDE"]);
    self->SCSI = ((Component*) [((Component*) [Component alloc]) init:"SCSI"]);
    self->BRIDGE = ((Component*) [((Component*) [Component alloc]) init:"bridge"]);
    self->ETHERNET = ((Component*) [((Component*) [Component alloc]) init:"Ethernet"]);
    self->USB = ((Component*) [((Component*) [Component alloc]) init:"USB"]);
    self->MULTIMEDIA = ((Component*) [((Component*) [Component alloc]) init:"Multimedia"]);
    self->PCI = ((Component*) [((Component*) [Component alloc]) init:"PCI"]);
    self->RAID = ((Component*) [((Component*) [Component alloc]) init:"RAID"]);
    self->SMBUS = ((Component*) [((Component*) [Component alloc]) init:"SMBus"]);
    self->PIC = ((Component*) [((Component*) [Component alloc]) init:"PIC"]);
    self->Class_ = ((Component*) [((Component*) [Component alloc]) init:"Class"]);
    self->UNKNOWN = ((Component*) [((Component*) [Component alloc]) init:[CommonStrings getInstance]->UNKNOWN]);
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (ComponentFactory*) getInstance {
        return (ComponentFactory_staticInit(), ComponentFactory_instance);
}

@end

