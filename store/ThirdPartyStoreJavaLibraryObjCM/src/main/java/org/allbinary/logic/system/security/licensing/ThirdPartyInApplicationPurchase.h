#ifndef ORG_ALLBINARY_LOGIC_SYSTEM_SECURITY_LICENSING_THIRDPARTYINAPPLICATIONPURCHASE_H
#define ORG_ALLBINARY_LOGIC_SYSTEM_SECURITY_LICENSING_THIRDPARTYINAPPLICATIONPURCHASE_H
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
// package org.allbinary.logic.system.security.licensing

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class ThirdPartyInApplicationPurchase;
@class StringUtil;
@class ThirdPartyInApplicationPurchaseInterface;
@class LockableFeature;
#include "org/allbinary/logic/system/security/licensing/ThirdPartyInApplicationPurchaseInterface.h"

@interface ThirdPartyInApplicationPurchase : ABObject <ThirdPartyInApplicationPurchaseInterface> {
@public
}
- (instancetype) init;
- (bool) isPurchased:(LockableFeature*)lockableFeature;
- (void) onCreate:(id)anyType :(id)stateObject;
- (void) onDestroy;
- (void) onStart;
- (void) onActivityResult:(int32_t)requestCode :(int32_t)resultCode :(id)dataObject;
- (void) onSaveInstanceState:(id)anyType;
- (void) onStop;
- (void) requestPurchase:(LockableFeature*)lockableFeature;
- (void) requestReceipts;
- (void) add:(LockableFeature*)lockableFeature;
- (const char*) getUserName;
- (bool) isEnabled;
- (void) requestProducts;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ThirdPartyInApplicationPurchase_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_SYSTEM_SECURITY_LICENSING_THIRDPARTYINAPPLICATIONPURCHASE_H
