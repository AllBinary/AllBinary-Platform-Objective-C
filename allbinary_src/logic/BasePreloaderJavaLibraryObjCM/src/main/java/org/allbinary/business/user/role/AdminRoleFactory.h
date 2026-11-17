#ifndef ORG_ALLBINARY_BUSINESS_USER_ROLE_ADMINROLEFACTORY_H
#define ORG_ALLBINARY_BUSINESS_USER_ROLE_ADMINROLEFACTORY_H
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
@class AdminRoleFactory;
@class BasicArrayList;
@class BasicArrayListD;
@class BasicUserRoleFactory;
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

@interface AdminRoleFactory : ABObject {
@public
    BasicArrayList* adminRoles;
    BasicArrayList* storeAdminRoles;
    BasicArrayList* storeManagementRoles;
    BasicArrayList* productManagementRoles;
    BasicArrayList* reviewManagementRoles;
    BasicArrayList* customerManagementRoles;
    BasicArrayList* workflowManagementRoles;
    BasicArrayList* orderManagementRoles;
    BasicArrayList* adjusterManagementRoles;
    BasicArrayList* shippingManagementRoles;
    BasicArrayList* webManagementRoles;
}
- (instancetype) init;
- (void) initFields;
+ (AdminRoleFactory*) getInstance;
- (BasicArrayList*) getProductManagementRoles;
- (BasicArrayList*) getAdminRoles;
- (BasicArrayList*) getStoreAdminRoles;
- (BasicArrayList*) getStoreManagementRoles;
- (BasicArrayList*) getReviewManagementRoles;
- (BasicArrayList*) getCustomerManagementRoles;
- (BasicArrayList*) getWorkflowManagementRoles;
- (BasicArrayList*) getWebManagementRoles;
- (BasicArrayList*) getShippingManagementRoles;
- (BasicArrayList*) getAdjusterManagementRoles;
- (BasicArrayList*) getOrderManagementRoles;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AdminRoleFactory_staticInit(void);


#endif // ORG_ALLBINARY_BUSINESS_USER_ROLE_ADMINROLEFACTORY_H
