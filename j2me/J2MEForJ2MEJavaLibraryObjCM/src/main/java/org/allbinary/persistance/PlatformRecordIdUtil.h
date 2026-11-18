#ifndef ORG_ALLBINARY_PERSISTANCE_PLATFORMRECORDIDUTIL_H
#define ORG_ALLBINARY_PERSISTANCE_PLATFORMRECORDIDUTIL_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.persistance

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class PlatformRecordIdUtil;
@class StringMaker;
@class AbeClientInformationInterface;
@class CommonSeps;

@interface PlatformRecordIdUtil : ABObject {
@public
    const char* PLATFORM_SHORT_NAME;
}
- (instancetype) init;
- (void) initFields;
+ (PlatformRecordIdUtil*) getInstance;
- (const char*) getRecordId:(AbeClientInformationInterface*)abeClientInformation :(const char*)baseRecordId;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PlatformRecordIdUtil_staticInit(void);


#endif // ORG_ALLBINARY_PERSISTANCE_PLATFORMRECORDIDUTIL_H
