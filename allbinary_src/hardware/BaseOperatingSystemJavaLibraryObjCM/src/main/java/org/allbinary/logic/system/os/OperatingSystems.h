#ifndef ORG_ALLBINARY_LOGIC_SYSTEM_OS_OPERATINGSYSTEMS_H
#define ORG_ALLBINARY_LOGIC_SYSTEM_OS_OPERATINGSYSTEMS_H
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
// package org.allbinary.logic.system.os

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class OperatingSystems;

@interface OperatingSystems : ABObject {
@public
    const char* LINUX;
    const char* WINDOWS;
    const char* SOLARIS;
    const char* WINDOWS2000;
    const char* WINDOWS_NT;
    const char* WINDOWS_10;
    const char* WINDOWS_11;
    const char* WINDOWS_VISTA;
    const char* WINDOWS_XP;
    const char* ANDROID;
    const char* HARMONY;
    bool unknownSpecificOSAllowed;
}
- (instancetype) init;
- (void) initFields;
- (bool) isUnknownSpecificOSAllowed;
- (void) setUnknownSpecificOSAllowed:(bool)aUnknownSpecificOSAllowed;
+ (OperatingSystems*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void OperatingSystems_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_SYSTEM_OS_OPERATINGSYSTEMS_H
