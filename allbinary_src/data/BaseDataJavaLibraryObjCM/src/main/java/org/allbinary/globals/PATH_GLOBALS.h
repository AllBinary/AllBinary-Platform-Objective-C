#ifndef ORG_ALLBINARY_GLOBALS_PATH_GLOBALS_H
#define ORG_ALLBINARY_GLOBALS_PATH_GLOBALS_H
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
// package org.allbinary.globals

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class PATH_GLOBALS;
@class AbPathData;
@class StringMaker;
@class CommonStrings;

@interface PATH_GLOBALS : ABObject {
@public
    const char* DATA_PATH;
    const char* INIT_PATH;
    const char* VIEWS_PATH;
    const char* LOG_PATH;
    const char* BACKUP_PATH;
}
- (instancetype) init;
- (void) initFields;
+ (PATH_GLOBALS*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PATH_GLOBALS_staticInit(void);


#endif // ORG_ALLBINARY_GLOBALS_PATH_GLOBALS_H
