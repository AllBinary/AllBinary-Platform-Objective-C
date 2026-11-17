#ifndef ORG_ALLBINARY_LOGIC_SYSTEM_SOFTWAREINFORMATION_H
#define ORG_ALLBINARY_LOGIC_SYSTEM_SOFTWAREINFORMATION_H
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
// package org.allbinary.logic.system

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class SoftwareInformation;
@class KotlinUtil;
@class StringMaker;
@class CommonSeps;

@interface SoftwareInformation : ABObject {
@public
    const char* name;
    const char* shortName;
    const char* version;
}
- (instancetype) init:(const char*)name :(const char*)version :(const char*)shortName;
- (void) initFields;
- (const char*) getName;
- (const char*) getVersion;
- (const char*) toShortString;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void SoftwareInformation_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_SYSTEM_SOFTWAREINFORMATION_H
