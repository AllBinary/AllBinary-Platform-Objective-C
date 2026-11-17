#ifndef ORG_ALLBINARY_BUSINESS_USER_ROLE_BASICUSERROLEFACTORY_H
#define ORG_ALLBINARY_BUSINESS_USER_ROLE_BASICUSERROLEFACTORY_H
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
@class BasicUserRoleFactory;
@class BasicUserRole;
#if __has_include("org/allbinary/business/user/role/BasicUserRole.h")
#include "org/allbinary/business/user/role/BasicUserRole.h"
#endif

@interface BasicUserRoleFactory : ABObject {
@public
    int64_t INACTIVITYTIMEOUT;
    int64_t CUSTOMERTIMEOUT;
    int64_t CUSTOMERMAXSESSIONTIME;
    int64_t MAXSESSIONTIME;
    BasicUserRole* INSTALLER;
    BasicUserRole* ADMINISTRATOR;
    BasicUserRole* CUSTOMER;
    BasicUserRole* SUBSCRIBERCUSTOMER;
    BasicUserRole* WHOLESALECUSTOMER;
    BasicUserRole* STOREMANAGER;
    BasicUserRole* PRODUCTMANAGER;
    BasicUserRole* CUSTOMERMANAGER;
    BasicUserRole* PAYMENTMANAGER;
    BasicUserRole* ORDERMANAGER;
    BasicUserRole* WEBMANAGER;
    BasicUserRole* REVIEWER;
    BasicUserRole* SHIPPING;
    BasicUserRole* ADJUSTER;
    BasicUserRole* WORKFLOWEDITOR;
    BasicUserRole* WIZARD;
    BasicUserRole* VIEWEDITOR;
}
- (instancetype) init;
- (void) initFields;
+ (BasicUserRoleFactory*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BasicUserRoleFactory_staticInit(void);


#endif // ORG_ALLBINARY_BUSINESS_USER_ROLE_BASICUSERROLEFACTORY_H
