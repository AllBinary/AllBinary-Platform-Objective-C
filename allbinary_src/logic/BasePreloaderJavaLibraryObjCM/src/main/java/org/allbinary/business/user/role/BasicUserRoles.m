// Generated Code Do Not Modify
#include "org/allbinary/business/user/role/BasicUserRoles.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/business/user/role/BasicUserRole.h"


static BasicUserRoles* BasicUserRoles_instance;

void BasicUserRoles_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    BasicUserRoles_instance = [((BasicUserRoles*) [BasicUserRoles alloc]) init];
}

@implementation BasicUserRoles

- (void) initFields {
    self->roleVector = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (BasicUserRoles*) getInstance {
        return (BasicUserRoles_staticInit(), BasicUserRoles_instance);
}


// throws Exception
- (BasicUserRole*) getRole:(const char*)role {
        BasicArrayList* roleVector = [self getAll];
        int32_t size = [roleVector size];
        for (int32_t index = 0; index < size; index++) {
            BasicUserRole* userRole = ((BasicUserRole*) [roleVector get:index]);
            if (strcmp(role, [userRole toString]) == 0) {
                return userRole;
            }
        }
        java_throw(java_exception_new("Exception", "Unable to get role - Unknown Role"));
}


- (BasicArrayList*) getAll {
        return self->roleVector;
}

@end

