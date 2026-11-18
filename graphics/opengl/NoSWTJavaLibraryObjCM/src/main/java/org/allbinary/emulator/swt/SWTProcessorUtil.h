#ifndef ORG_ALLBINARY_EMULATOR_SWT_SWTPROCESSORUTIL_H
#define ORG_ALLBINARY_EMULATOR_SWT_SWTPROCESSORUTIL_H
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
// package org.allbinary.emulator.swt

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class SWTProcessorUtil;
@class SWTProcessor;
#if __has_include("org/allbinary/emulator/swt/SWTProcessor.h")
#include "org/allbinary/emulator/swt/SWTProcessor.h"
#endif

@interface SWTProcessorUtil : ABObject {
@public
    SWTProcessor* swtProcessor;
}
- (instancetype) init;
- (void) initFields;
+ (SWTProcessorUtil*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void SWTProcessorUtil_staticInit(void);


#endif // ORG_ALLBINARY_EMULATOR_SWT_SWTPROCESSORUTIL_H
