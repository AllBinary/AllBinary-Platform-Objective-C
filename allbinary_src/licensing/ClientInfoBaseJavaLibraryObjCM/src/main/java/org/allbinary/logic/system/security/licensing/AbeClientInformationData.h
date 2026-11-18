#ifndef ORG_ALLBINARY_LOGIC_SYSTEM_SECURITY_LICENSING_ABECLIENTINFORMATIONDATA_H
#define ORG_ALLBINARY_LOGIC_SYSTEM_SECURITY_LICENSING_ABECLIENTINFORMATIONDATA_H
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
@class AbeClientInformationData;

@interface AbeClientInformationData : ABObject {
@public
    const char* KEY;
    const char* NAME;
    const char* VERSION;
    const char* SPECIALNAME;
    const char* LICENSEID;
    const char* LICENSE_TYPE;
    const char* PREVIOUSLICENSEID;
    const char* OSNAME;
    const char* OSARCH;
    const char* OSVERSION;
    const char* OS;
    const char* HARDWARE;
    const char* LICENSESERVERS;
    const char* NEWLICENSE;
    const char* ISNEW;
    const char* SPECIAL;
}
- (instancetype) init;
- (void) initFields;
+ (AbeClientInformationData*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AbeClientInformationData_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_SYSTEM_SECURITY_LICENSING_ABECLIENTINFORMATIONDATA_H
