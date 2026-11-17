// Generated Code Do Not Modify
#include "org/allbinary/business/user/role/BasicUserRole.h"
#include "org/allbinary/business/user/role/BasicUserRoles.h"



void BasicUserRole_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BasicUserRole

- (void) initFields {
    
    
    
    
    
}


- (instancetype) init:(const char*)aRole :(int32_t)a_int_RoleId :(int64_t)aSessionTimeout :(int64_t)aSessionInactivityTimeout {
        self = [self init:aRole :aRole :a_int_RoleId :aSessionTimeout :aSessionInactivityTimeout];
    return self;
}


- (instancetype) init:(const char*)aRole :(const char*)aDisplayValue :(int32_t)a_int_RoleId :(int64_t)aSessionTimeout :(int64_t)aSessionInactivityTimeout {
    self = [super init];
    [self initFields];
        self->m_int_RoleId = a_int_RoleId;
        self->role = aRole;
        self->displayValue = aDisplayValue;
        self->sessionTimeout = aSessionTimeout;
        self->sessionInactivityTimeout = aSessionInactivityTimeout;
        [[BasicUserRoles getInstance]->roleVector add:self];
    return self;
}


- (int32_t) getRoleId {
        return self->m_int_RoleId;
}


- (const char*) getRole {
        return self->role;
}


- (int64_t) getSessionTimeout {
        return self->sessionTimeout;
}


- (int64_t) getSessionInactivityTimeout {
        return self->sessionInactivityTimeout;
}


- (bool) equals:(BasicUserRole*)basicUserRole {
        if ([self getRoleId] == [basicUserRole getRoleId]) {
            return true;
        }
        return false;
}


- (const char*) toString {
        return [self getRole];
}

@end

