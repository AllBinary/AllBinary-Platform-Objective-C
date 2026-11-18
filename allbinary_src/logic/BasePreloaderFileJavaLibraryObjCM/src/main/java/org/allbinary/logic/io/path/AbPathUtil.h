#ifndef ORG_ALLBINARY_LOGIC_IO_PATH_ABPATHUTIL_H
#define ORG_ALLBINARY_LOGIC_IO_PATH_ABPATHUTIL_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.logic.io.path

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class AbPathUtil;
@class AbPath;
#if __has_include("org/allbinary/logic/io/path/AbPath.h")
#include "org/allbinary/logic/io/path/AbPath.h"
#endif

@interface AbPathUtil : ABObject {
@public
    AbPath* NO_ABPATH;
}
- (instancetype) init;
- (void) initFields;
+ (AbPathUtil*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AbPathUtil_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_IO_PATH_ABPATHUTIL_H
