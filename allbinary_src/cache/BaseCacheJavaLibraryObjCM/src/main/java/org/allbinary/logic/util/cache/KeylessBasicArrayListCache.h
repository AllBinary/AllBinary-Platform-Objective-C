#ifndef ORG_ALLBINARY_LOGIC_UTIL_CACHE_KEYLESSBASICARRAYLISTCACHE_H
#define ORG_ALLBINARY_LOGIC_UTIL_CACHE_KEYLESSBASICARRAYLISTCACHE_H
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
// package org.allbinary.logic.util.cache

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class KeylessBasicArrayListCache;
@class LogUtil;
@class StringMaker;
@class BasicArrayList;
@class BasicArrayListUtil;
@class IndexedBasicArrayListCache;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayListUtil.h")
#include "org/allbinary/util/BasicArrayListUtil.h"
#endif
#include "org/allbinary/logic/util/cache/IndexedBasicArrayListCache.h"

@interface KeylessBasicArrayListCache : IndexedBasicArrayListCache {
@public
    LogUtil* logUtil;
    BasicArrayListUtil* basicArrayListUtil;
}
- (instancetype) init;
- (void) initFields;
- (BasicArrayList*) get;
- (void) clear;
- (const char*) log;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void KeylessBasicArrayListCache_staticInit(void);

#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

#endif // ORG_ALLBINARY_LOGIC_UTIL_CACHE_KEYLESSBASICARRAYLISTCACHE_H
