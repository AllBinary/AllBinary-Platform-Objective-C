// Generated Code Do Not Modify
#include "org/allbinary/logic/system/hardware/components/ComponentFactory.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/logic/system/hardware/components/Component.h"


static ComponentFactory* ComponentFactory_instance;

void ComponentFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ComponentFactory_instance = [((ComponentFactory*) [ComponentFactory alloc]) init];
}

@implementation ComponentFactory

- (void) initFields {
    self->VGA = [((Component*) [Component alloc]) init:"VGA"];
    self->IDE = [((Component*) [Component alloc]) init:"IDE"];
    self->SCSI = [((Component*) [Component alloc]) init:"SCSI"];
    self->BRIDGE = [((Component*) [Component alloc]) init:"bridge"];
    self->ETHERNET = [((Component*) [Component alloc]) init:"Ethernet"];
    self->USB = [((Component*) [Component alloc]) init:"USB"];
    self->MULTIMEDIA = [((Component*) [Component alloc]) init:"Multimedia"];
    self->PCI = [((Component*) [Component alloc]) init:"PCI"];
    self->RAID = [((Component*) [Component alloc]) init:"RAID"];
    self->SMBUS = [((Component*) [Component alloc]) init:"SMBus"];
    self->PIC = [((Component*) [Component alloc]) init:"PIC"];
    self->Class_ = [((Component*) [Component alloc]) init:"Class"];
    self->UNKNOWN = [((Component*) [Component alloc]) init:[CommonStrings getInstance]->UNKNOWN];
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

