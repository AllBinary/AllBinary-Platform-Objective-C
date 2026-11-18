#ifndef ORG_ALLBINARY_LOGIC_UTIL_CACHE_POOLTYPE_H
#define ORG_ALLBINARY_LOGIC_UTIL_CACHE_POOLTYPE_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2007 AllBinary 
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
// package org.allbinary.logic.util.cache

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class PoolType;
@class CacheType;
#if __has_include("org/allbinary/logic/util/cache/CacheType.h")
#include "org/allbinary/logic/util/cache/CacheType.h"
#endif

@interface PoolType : ABObject {
@public
    CacheType* cacheType;
}
- (instancetype) init:(CacheType*)cacheType;
- (void) initFields;
- (CacheType*) getCacheType;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PoolType_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_UTIL_CACHE_POOLTYPE_H
