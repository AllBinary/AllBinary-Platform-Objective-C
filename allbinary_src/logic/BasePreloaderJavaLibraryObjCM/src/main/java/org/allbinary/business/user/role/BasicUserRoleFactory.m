// Generated Code Do Not Modify
#include "org/allbinary/business/user/role/BasicUserRoleFactory.h"
#include "org/allbinary/business/user/role/BasicUserRole.h"


static BasicUserRoleFactory* BasicUserRoleFactory_instance;

void BasicUserRoleFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    BasicUserRoleFactory_instance = [((BasicUserRoleFactory*) [BasicUserRoleFactory alloc]) init];
}

@implementation BasicUserRoleFactory

- (void) initFields {
    self->INACTIVITYTIMEOUT = 360000000LL;
    self->CUSTOMERTIMEOUT = 360000000LL;
    self->CUSTOMERMAXSESSIONTIME = 360000000LL;
    self->MAXSESSIONTIME = 360000000LL;
    self->INSTALLER = [((BasicUserRole*) [BasicUserRole alloc]) init:"Installer" :16 :self->MAXSESSIONTIME :self->INACTIVITYTIMEOUT];
    self->ADMINISTRATOR = [((BasicUserRole*) [BasicUserRole alloc]) init:"Administrator" :0 :self->MAXSESSIONTIME :self->INACTIVITYTIMEOUT];
    self->CUSTOMER = [((BasicUserRole*) [BasicUserRole alloc]) init:"CustomerUser" :"Customer User" :1 :self->CUSTOMERTIMEOUT :self->CUSTOMERMAXSESSIONTIME];
    self->SUBSCRIBERCUSTOMER = [((BasicUserRole*) [BasicUserRole alloc]) init:"SubscriberUser" :"Subscriber User" :2 :self->CUSTOMERTIMEOUT :self->CUSTOMERMAXSESSIONTIME];
    self->WHOLESALECUSTOMER = [((BasicUserRole*) [BasicUserRole alloc]) init:"WholesaleUser" :"Wholesale User" :3 :self->CUSTOMERTIMEOUT :self->CUSTOMERMAXSESSIONTIME];
    self->STOREMANAGER = [((BasicUserRole*) [BasicUserRole alloc]) init:"StoreManager" :"Store Manager" :4 :self->MAXSESSIONTIME :self->INACTIVITYTIMEOUT];
    self->PRODUCTMANAGER = [((BasicUserRole*) [BasicUserRole alloc]) init:"ProductManager" :"Product Manager" :5 :self->MAXSESSIONTIME :self->INACTIVITYTIMEOUT];
    self->CUSTOMERMANAGER = [((BasicUserRole*) [BasicUserRole alloc]) init:"UserManager" :"User Manager" :6 :self->MAXSESSIONTIME :self->INACTIVITYTIMEOUT];
    self->PAYMENTMANAGER = [((BasicUserRole*) [BasicUserRole alloc]) init:"PaymentManager" :"Payment Manager" :7 :self->MAXSESSIONTIME :self->INACTIVITYTIMEOUT];
    self->ORDERMANAGER = [((BasicUserRole*) [BasicUserRole alloc]) init:"OrderManager" :"Order Manager" :8 :self->MAXSESSIONTIME :self->INACTIVITYTIMEOUT];
    self->WEBMANAGER = [((BasicUserRole*) [BasicUserRole alloc]) init:"WebManager" :"Web Manager" :9 :self->MAXSESSIONTIME :self->INACTIVITYTIMEOUT];
    self->REVIEWER = [((BasicUserRole*) [BasicUserRole alloc]) init:"Reviewer" :10 :self->MAXSESSIONTIME :self->INACTIVITYTIMEOUT];
    self->SHIPPING = [((BasicUserRole*) [BasicUserRole alloc]) init:"Shipping" :11 :self->MAXSESSIONTIME :self->INACTIVITYTIMEOUT];
    self->ADJUSTER = [((BasicUserRole*) [BasicUserRole alloc]) init:"Adjuster" :12 :self->MAXSESSIONTIME :self->INACTIVITYTIMEOUT];
    self->WORKFLOWEDITOR = [((BasicUserRole*) [BasicUserRole alloc]) init:"WorkFlowEditor" :"WorkFlow Editor" :13 :self->MAXSESSIONTIME :self->INACTIVITYTIMEOUT];
    self->WIZARD = [((BasicUserRole*) [BasicUserRole alloc]) init:"WizardUser" :"Wizard User" :14 :self->MAXSESSIONTIME :self->INACTIVITYTIMEOUT];
    self->VIEWEDITOR = [((BasicUserRole*) [BasicUserRole alloc]) init:"ViewEditor" :"View Editor" :15 :self->MAXSESSIONTIME :self->INACTIVITYTIMEOUT];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (BasicUserRoleFactory*) getInstance {
        return (BasicUserRoleFactory_staticInit(), BasicUserRoleFactory_instance);
}

@end

