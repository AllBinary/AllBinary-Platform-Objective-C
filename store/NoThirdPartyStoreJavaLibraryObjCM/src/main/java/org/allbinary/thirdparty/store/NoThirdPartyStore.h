#ifndef ORG_ALLBINARY_THIRDPARTY_STORE_NOTHIRDPARTYSTORE_H
#define ORG_ALLBINARY_THIRDPARTY_STORE_NOTHIRDPARTYSTORE_H
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
// package org.allbinary.thirdparty.store

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class NoThirdPartyStore;
@class StringUtil;
@class AbeClientInformationInterface;
@class ThirdPartyStore;
#include "org/allbinary/thirdparty/store/ThirdPartyStore.h"

@interface NoThirdPartyStore : ThirdPartyStore {
@public
}
- (instancetype) init;
- (void) authorize:(AbeClientInformationInterface*)clientInformationInterface;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NoThirdPartyStore_staticInit(void);


#endif // ORG_ALLBINARY_THIRDPARTY_STORE_NOTHIRDPARTYSTORE_H
