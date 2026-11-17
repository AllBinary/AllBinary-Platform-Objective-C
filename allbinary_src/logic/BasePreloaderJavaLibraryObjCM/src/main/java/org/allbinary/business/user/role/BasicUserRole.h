#ifndef ORG_ALLBINARY_BUSINESS_USER_ROLE_BASICUSERROLE_H
#define ORG_ALLBINARY_BUSINESS_USER_ROLE_BASICUSERROLE_H
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
// package org.allbinary.business.user.role

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class BasicUserRole;
@class BasicUserRoles;
#include "java/io/Serializable.h"

@interface BasicUserRole : ABObject <Serializable> {
@public
    int32_t m_int_RoleId;
    const char* role;
    const char* displayValue;
    int64_t sessionTimeout;
    int64_t sessionInactivityTimeout;
}
- (instancetype) init:(const char*)aRole :(int32_t)a_int_RoleId :(int64_t)aSessionTimeout :(int64_t)aSessionInactivityTimeout;
- (instancetype) init:(const char*)aRole :(const char*)aDisplayValue :(int32_t)a_int_RoleId :(int64_t)aSessionTimeout :(int64_t)aSessionInactivityTimeout;
- (void) initFields;
- (int32_t) getRoleId;
- (const char*) getRole;
- (int64_t) getSessionTimeout;
- (int64_t) getSessionInactivityTimeout;
- (bool) equals:(BasicUserRole*)basicUserRole;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BasicUserRole_staticInit(void);


#endif // ORG_ALLBINARY_BUSINESS_USER_ROLE_BASICUSERROLE_H
