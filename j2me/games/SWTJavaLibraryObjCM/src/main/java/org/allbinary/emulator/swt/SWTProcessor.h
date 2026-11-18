#ifndef ORG_ALLBINARY_EMULATOR_SWT_SWTPROCESSOR_H
#define ORG_ALLBINARY_EMULATOR_SWT_SWTPROCESSOR_H
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
@class SWTProcessor;
@class NullRunnable;
@class Display;
#include "java/lang/Runnable.h"

@interface SWTProcessor : ABObject {
@public
    Runnable* runnable;
}
- (instancetype) init;
- (void) initFields;
+ (SWTProcessor*) getInstance;
- (void) process:(Display*)display;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void SWTProcessor_staticInit(void);


#endif // ORG_ALLBINARY_EMULATOR_SWT_SWTPROCESSOR_H
