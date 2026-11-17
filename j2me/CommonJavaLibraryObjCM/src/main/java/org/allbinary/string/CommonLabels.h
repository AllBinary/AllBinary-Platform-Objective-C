#ifndef ORG_ALLBINARY_STRING_COMMONLABELS_H
#define ORG_ALLBINARY_STRING_COMMONLABELS_H
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
// package org.allbinary.string

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class CommonLabels;
@class JsType;
@class JsMethod;
@class JsProperty;
// #include "jsinterop/annotations/JsType.h"
// #include "jsinterop/annotations/JsMethod.h"
// #include "jsinterop/annotations/JsProperty.h"

@interface CommonLabels : ABObject {
@public
    const char* WIDTH_LABEL;
    const char* HEIGHT_LABEL;
    const char* END_LABEL;
    const char* TOTAL_LABEL;
    const char* INDEX_LABEL;
    const char* START_LABEL;
    const char* COMMAND_LABEL;
    const char* NAME_LABEL;
    const char* START;
    const char* ELAPSED;
    const char* CURRENT;
    const char* NEXT;
    const char* ITEM_LABEL;
    const char* RESULT_;
    const char* COLON_SEP;
}
- (instancetype) init;
- (void) initFields;
+ (CommonLabels*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CommonLabels_staticInit(void);


#endif // ORG_ALLBINARY_STRING_COMMONLABELS_H
