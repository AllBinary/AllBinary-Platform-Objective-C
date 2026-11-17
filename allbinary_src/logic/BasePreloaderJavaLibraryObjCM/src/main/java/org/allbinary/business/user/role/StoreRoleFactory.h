#ifndef ORG_ALLBINARY_BUSINESS_USER_ROLE_STOREROLEFACTORY_H
#define ORG_ALLBINARY_BUSINESS_USER_ROLE_STOREROLEFACTORY_H
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
@class StoreRoleFactory;
@class BasicArrayList;
@class BasicArrayListD;
@class BasicUserRoleFactory;
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

@interface StoreRoleFactory : ABObject {
@public
    BasicArrayList* roles;
    BasicArrayList* subscriberRoles;
    BasicArrayList* wholesaleRoles;
}
- (instancetype) init;
- (void) initFields;
+ (StoreRoleFactory*) getInstance;
- (BasicArrayList*) getRoles;
- (BasicArrayList*) getSubscriberRoles;
- (BasicArrayList*) getWholesaleRoles;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void StoreRoleFactory_staticInit(void);


#endif // ORG_ALLBINARY_BUSINESS_USER_ROLE_STOREROLEFACTORY_H
