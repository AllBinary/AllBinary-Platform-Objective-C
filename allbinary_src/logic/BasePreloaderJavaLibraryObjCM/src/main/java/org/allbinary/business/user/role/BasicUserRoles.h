#ifndef ORG_ALLBINARY_BUSINESS_USER_ROLE_BASICUSERROLES_H
#define ORG_ALLBINARY_BUSINESS_USER_ROLE_BASICUSERROLES_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2026 AllBinary 
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
@class BasicUserRoles;
@class BasicArrayList;
@class BasicArrayListD;
@class BasicUserRole;
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

@interface BasicUserRoles : ABObject {
@public
    BasicArrayList* roleVector;
}
- (instancetype) init;
- (void) initFields;
+ (BasicUserRoles*) getInstance;
- (BasicUserRole*) getRole:(const char*)role;
- (BasicArrayList*) getAll;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BasicUserRoles_staticInit(void);


#endif // ORG_ALLBINARY_BUSINESS_USER_ROLE_BASICUSERROLES_H
