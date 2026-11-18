#ifndef ORG_ALLBINARY_BUSINESS_INIT_LICENSEINITINFOUTIL_H
#define ORG_ALLBINARY_BUSINESS_INIT_LICENSEINITINFOUTIL_H
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
// package org.allbinary.business.init

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class LicenseInitInfoUtil;
@class LicenseInitInfo;

@interface LicenseInitInfoUtil : ABObject {
@public
    const char* INITFILENAME;
    const char* ABOUT;
    const char* PRIVACY_POLICY;
    const char* OFFICIAL_ALLBINARY_SERVICES_SERVER;
}
- (instancetype) init;
- (void) initFields;
+ (LicenseInitInfoUtil*) getInstance;
- (void) setFilePath:(const char*)filePath;
- (void) write:(LicenseInitInfo*)initData;
- (LicenseInitInfo*) read;
- (LicenseInitInfo*) readAgain:(int32_t)initializeCounter;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void LicenseInitInfoUtil_staticInit(void);


#endif // ORG_ALLBINARY_BUSINESS_INIT_LICENSEINITINFOUTIL_H
