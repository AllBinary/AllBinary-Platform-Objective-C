#ifndef ORG_ALLBINARY_LOGIC_UTIL_CACHE_INDEXEDBASICARRAYLISTCACHE_H
#define ORG_ALLBINARY_LOGIC_UTIL_CACHE_INDEXEDBASICARRAYLISTCACHE_H
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
@class IndexedBasicArrayListCache;
@class JsType;
@class CommonStrings;
@class JsMethod;
@class JsConstructor;
@class JsProperty;
@class BaseBasicArrayListCache;
@class CacheInterface;
@class CacheableInterface;
// #include "jsinterop/annotations/JsType.h"
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
// #include "jsinterop/annotations/JsMethod.h"
// #include "jsinterop/annotations/JsConstructor.h"
// #include "jsinterop/annotations/JsProperty.h"
#include "org/allbinary/logic/util/cache/BaseBasicArrayListCache.h"
#include "org/allbinary/logic/util/cache/CacheInterface.h"

@interface IndexedBasicArrayListCache : BaseBasicArrayListCache <CacheInterface> {
@public
    CommonStrings* commonStrings;
    int32_t size;
    int32_t index;
}
- (instancetype) init;
- (void) initFields;
+ (IndexedBasicArrayListCache*) createCache:(int32_t)size;
- (void) initMethod:(int32_t)size;
- (id) getAt:(int32_t)index;
- (void) addDefault;
- (void) addObject:(id)anyType;
- (void) add:(CacheableInterface*)cacheableInterface;
- (void) addArray:(CacheableInterface**)cacheableInterfaces;
- (void) clear;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void IndexedBasicArrayListCache_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_UTIL_CACHE_INDEXEDBASICARRAYLISTCACHE_H
