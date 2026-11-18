#ifndef ORG_ALLBINARY_LOGIC_SYSTEM_OS_OPERATINGSYSTEMINTERFACE_H
#define ORG_ALLBINARY_LOGIC_SYSTEM_OS_OPERATINGSYSTEMINTERFACE_H
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
@class OperatingSystemInterface;
@class CharacterSet;

@protocol OperatingSystemInterface
- (const char*) getName;
- (const char*) getVersion;
- (const char*) getArch;
- (CharacterSet*) getCharacterSet;
- (bool) isOverScan;
- (int32_t) getOverScanXPercent;
- (int32_t) getOverScanYPercent;
- (bool) isScalable;
- (bool) isAutoHide;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void OperatingSystemInterface_staticInit(void);

#if __has_include("org/allbinary/logic/java/character/CharacterSet.h")
#include "org/allbinary/logic/java/character/CharacterSet.h"
#endif

#endif // ORG_ALLBINARY_LOGIC_SYSTEM_OS_OPERATINGSYSTEMINTERFACE_H
