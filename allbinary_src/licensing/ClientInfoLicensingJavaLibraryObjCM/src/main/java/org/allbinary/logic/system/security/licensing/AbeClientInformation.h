#ifndef ORG_ALLBINARY_LOGIC_SYSTEM_SECURITY_LICENSING_ABECLIENTINFORMATION_H
#define ORG_ALLBINARY_LOGIC_SYSTEM_SECURITY_LICENSING_ABECLIENTINFORMATION_H
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
@class AbeClientInformation;
@class LicenseInitInfo;
@class LicenseInitInfoUtil;
@class LogUtil;
@class PreLogUtil;
@class StringMaker;
@class StringValidationUtil;
@class OperatingSystemFactory;
@class CommonStrings;
@class ClientInformation;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#include "org/allbinary/logic/system/security/licensing/ClientInformation.h"

// This is the information sent to the license server
@interface AbeClientInformation : ClientInformation {
@public
    LogUtil* logUtil;
}
- (instancetype) init:(const char*)name :(const char*)version :(const char*)specialName :(const char*)shortName;
- (void) initFields;
- (void) init_;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AbeClientInformation_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_SYSTEM_SECURITY_LICENSING_ABECLIENTINFORMATION_H
