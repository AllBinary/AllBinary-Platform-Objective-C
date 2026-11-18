#ifndef ORG_ALLBINARY_LOGIC_SYSTEM_SECURITY_LICENSING_INAPPLICATIONPURCHASEFACTORY_H
#define ORG_ALLBINARY_LOGIC_SYSTEM_SECURITY_LICENSING_INAPPLICATIONPURCHASEFACTORY_H
/*
 * 
 * To change this license header, choose License Headers in Project Properties. 
 * To change this template file, choose Tools | Templates 
 * and open the template in the editor.  
 */
// Generated Code Do Not Modify
// package org.allbinary.logic.system.security.licensing

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class InApplicationPurchaseFactory;
@class StringUtil;
@class LockableFeature;

@interface InApplicationPurchaseFactory : ABObject {
@public
}
- (instancetype) init;
+ (InApplicationPurchaseFactory*) getInstance;
- (void) init_:(id)anyType :(id)stateObject;
- (void) onCreate:(id)anyType :(id)stateObject;
- (void) onStart;
- (void) onResult:(int32_t)requestCode :(int32_t)resultCode :(id)data;
- (void) onSaveState:(id)anyType;
- (void) onStop;
- (void) onDestroy;
- (void) purchase:(LockableFeature*)lockableFeature;
- (bool) isPurchased:(LockableFeature*)lockableFeature;
- (void) add:(LockableFeature*)lockableFeature;
- (const char*) getUserName;
- (bool) isEnabled;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void InApplicationPurchaseFactory_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_SYSTEM_SECURITY_LICENSING_INAPPLICATIONPURCHASEFACTORY_H
