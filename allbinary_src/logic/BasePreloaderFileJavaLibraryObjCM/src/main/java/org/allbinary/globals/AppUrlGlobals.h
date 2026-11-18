#ifndef ORG_ALLBINARY_GLOBALS_APPURLGLOBALS_H
#define ORG_ALLBINARY_GLOBALS_APPURLGLOBALS_H
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
@class AppUrlGlobals;
@class StringUtil;
@class UrlGlobalsInterface;
#include "org/allbinary/globals/UrlGlobalsInterface.h"

//implements
@interface AppUrlGlobals : UrlGlobalsInterface {
@public
    const char* path;
}
- (instancetype) init;
- (void) initFields;
- (bool) isTestingMode;
- (const char*) getWebappPath;
- (void) setWebappPath:(const char*)path;
- (const char*) getTestHtmlPath;
- (const char*) getMainPath;
@end

extern AppUrlGlobals* AppUrlGlobals_NULL_APP_URL_GLOBALS;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AppUrlGlobals_staticInit(void);


#endif // ORG_ALLBINARY_GLOBALS_APPURLGLOBALS_H
