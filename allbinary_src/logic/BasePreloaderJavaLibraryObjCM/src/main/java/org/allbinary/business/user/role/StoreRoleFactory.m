// Generated Code Do Not Modify
#include "org/allbinary/business/user/role/StoreRoleFactory.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/business/user/role/BasicUserRoleFactory.h"


static StoreRoleFactory* StoreRoleFactory_instance;

void StoreRoleFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    StoreRoleFactory_instance = ((StoreRoleFactory*) [((StoreRoleFactory*) [StoreRoleFactory alloc]) init]);
}

@implementation StoreRoleFactory

- (void) initFields {
    self->roles = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
    self->subscriberRoles = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
    self->wholesaleRoles = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
}


+ (StoreRoleFactory*) getInstance {
        return (StoreRoleFactory_staticInit(), StoreRoleFactory_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        BasicUserRoleFactory* basicUserRoleFactory = [BasicUserRoleFactory getInstance];
        [self->roles add:basicUserRoleFactory->CUSTOMER];
        [self->roles add:basicUserRoleFactory->SUBSCRIBERCUSTOMER];
        [self->roles add:basicUserRoleFactory->WHOLESALECUSTOMER];
        [self->subscriberRoles add:basicUserRoleFactory->SUBSCRIBERCUSTOMER];
        [self->wholesaleRoles add:basicUserRoleFactory->WHOLESALECUSTOMER];
    return self;
}


- (BasicArrayList*) getRoles {
        return self->roles;
}


- (BasicArrayList*) getSubscriberRoles {
        return self->subscriberRoles;
}


- (BasicArrayList*) getWholesaleRoles {
        return self->wholesaleRoles;
}

@end

