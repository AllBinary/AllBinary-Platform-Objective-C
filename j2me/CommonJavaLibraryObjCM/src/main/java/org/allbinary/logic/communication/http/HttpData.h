#ifndef ORG_ALLBINARY_LOGIC_COMMUNICATION_HTTP_HTTPDATA_H
#define ORG_ALLBINARY_LOGIC_COMMUNICATION_HTTP_HTTPDATA_H
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
// package org.allbinary.logic.communication.http

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class HttpData;
@class CommonSeps;

@interface HttpData : ABObject {
@public
    const char* EQUALS;
    const char* PARAM_SEP;
    const char* URL_PARAM_SEP;
    const char* URL_LABEL;
}
- (instancetype) init;
- (void) initFields;
+ (HttpData*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void HttpData_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_COMMUNICATION_HTTP_HTTPDATA_H
