// Generated Code Do Not Modify
#include "org/allbinary/business/user/role/AdminRoleFactory.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/business/user/role/BasicUserRoleFactory.h"


static AdminRoleFactory* AdminRoleFactory_instance;

void AdminRoleFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    AdminRoleFactory_instance = [((AdminRoleFactory*) [AdminRoleFactory alloc]) init];
}

@implementation AdminRoleFactory

- (void) initFields {
    self->adminRoles = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
    self->storeAdminRoles = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
    self->storeManagementRoles = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
    self->productManagementRoles = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
    self->reviewManagementRoles = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
    self->customerManagementRoles = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
    self->workflowManagementRoles = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
    self->orderManagementRoles = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
    self->adjusterManagementRoles = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
    self->shippingManagementRoles = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
    self->webManagementRoles = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
}


+ (AdminRoleFactory*) getInstance {
        return (AdminRoleFactory_staticInit(), AdminRoleFactory_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        BasicUserRoleFactory* basicUserRoleFactory = [BasicUserRoleFactory getInstance];
        [self->adminRoles add:basicUserRoleFactory->ADMINISTRATOR];
        [self->storeAdminRoles add:basicUserRoleFactory->ADMINISTRATOR];
        [self->storeAdminRoles add:basicUserRoleFactory->STOREMANAGER];
        [self->storeManagementRoles add:basicUserRoleFactory->ADMINISTRATOR];
        [self->storeManagementRoles add:basicUserRoleFactory->STOREMANAGER];
        [self->storeManagementRoles add:basicUserRoleFactory->CUSTOMERMANAGER];
        [self->storeManagementRoles add:basicUserRoleFactory->ADJUSTER];
        [self->storeManagementRoles add:basicUserRoleFactory->PRODUCTMANAGER];
        [self->storeManagementRoles add:basicUserRoleFactory->REVIEWER];
        [self->storeManagementRoles add:basicUserRoleFactory->SHIPPING];
        [self->productManagementRoles add:basicUserRoleFactory->ADMINISTRATOR];
        [self->productManagementRoles add:basicUserRoleFactory->STOREMANAGER];
        [self->productManagementRoles add:basicUserRoleFactory->PRODUCTMANAGER];
        [self->reviewManagementRoles add:basicUserRoleFactory->ADMINISTRATOR];
        [self->reviewManagementRoles add:basicUserRoleFactory->STOREMANAGER];
        [self->reviewManagementRoles add:basicUserRoleFactory->REVIEWER];
        [self->customerManagementRoles add:basicUserRoleFactory->ADMINISTRATOR];
        [self->customerManagementRoles add:basicUserRoleFactory->STOREMANAGER];
        [self->customerManagementRoles add:basicUserRoleFactory->CUSTOMERMANAGER];
        [self->workflowManagementRoles add:basicUserRoleFactory->ADMINISTRATOR];
        [self->workflowManagementRoles add:basicUserRoleFactory->STOREMANAGER];
        [self->workflowManagementRoles add:basicUserRoleFactory->WORKFLOWEDITOR];
        [self->orderManagementRoles add:basicUserRoleFactory->ADMINISTRATOR];
        [self->orderManagementRoles add:basicUserRoleFactory->STOREMANAGER];
        [self->adjusterManagementRoles add:basicUserRoleFactory->ADMINISTRATOR];
        [self->adjusterManagementRoles add:basicUserRoleFactory->STOREMANAGER];
        [self->adjusterManagementRoles add:basicUserRoleFactory->ADJUSTER];
        [self->shippingManagementRoles add:basicUserRoleFactory->ADMINISTRATOR];
        [self->shippingManagementRoles add:basicUserRoleFactory->STOREMANAGER];
        [self->shippingManagementRoles add:basicUserRoleFactory->SHIPPING];
        [self->webManagementRoles add:basicUserRoleFactory->ADMINISTRATOR];
        [self->webManagementRoles add:basicUserRoleFactory->STOREMANAGER];
        [self->webManagementRoles add:basicUserRoleFactory->WEBMANAGER];
        [self->webManagementRoles add:basicUserRoleFactory->WORKFLOWEDITOR];
        [self->webManagementRoles add:basicUserRoleFactory->VIEWEDITOR];
    return self;
}


- (BasicArrayList*) getProductManagementRoles {
        return self->productManagementRoles;
}


- (BasicArrayList*) getAdminRoles {
        return self->adminRoles;
}


- (BasicArrayList*) getStoreAdminRoles {
        return self->storeAdminRoles;
}


- (BasicArrayList*) getStoreManagementRoles {
        return self->storeManagementRoles;
}


- (BasicArrayList*) getReviewManagementRoles {
        return self->reviewManagementRoles;
}


- (BasicArrayList*) getCustomerManagementRoles {
        return self->customerManagementRoles;
}


- (BasicArrayList*) getWorkflowManagementRoles {
        return self->workflowManagementRoles;
}


- (BasicArrayList*) getWebManagementRoles {
        return self->webManagementRoles;
}


- (BasicArrayList*) getShippingManagementRoles {
        return self->shippingManagementRoles;
}


- (BasicArrayList*) getAdjusterManagementRoles {
        return self->adjusterManagementRoles;
}


- (BasicArrayList*) getOrderManagementRoles {
        return self->orderManagementRoles;
}

@end

