#ifndef ORG_ALLBINARY_UTIL_IMMUTABLEBASICARRAYLIST_H
#define ORG_ALLBINARY_UTIL_IMMUTABLEBASICARRAYLIST_H
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
// package org.allbinary.util

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class ImmutableBasicArrayList;
@class JsType;
@class ForcedLogUtil;
@class BasicArrayListS;
// #include "jsinterop/annotations/JsType.h"
#include "org/allbinary/util/BasicArrayListS.h"

@interface ImmutableBasicArrayList : BasicArrayListS {
@public
    const char* name;
}
- (instancetype) init:(const char*)name :(int32_t)size;
- (void) initFields;
- (bool) add:(id)e;
- (void) addAt:(int32_t)index :(id)element;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ImmutableBasicArrayList_staticInit(void);


#endif // ORG_ALLBINARY_UTIL_IMMUTABLEBASICARRAYLIST_H
