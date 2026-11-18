#ifndef ORG_ALLBINARY_LOGIC_UTIL_CACHE_ABSTRACTARRAYLISTPOOL_H
#define ORG_ALLBINARY_LOGIC_UTIL_CACHE_ABSTRACTARRAYLISTPOOL_H
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
@class AbstractArrayListPool;
@class CommonStrings;
@class BasicArrayList;
@class BasicArrayListD;
@class PoolInterface;
@class CacheableInterfaceFactoryInterface;
@class CacheableInterface;
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif
#include "org/allbinary/logic/util/cache/PoolInterface.h"
#if __has_include("org/allbinary/logic/util/cache/CacheableInterfaceFactoryInterface.h")
#include "org/allbinary/logic/util/cache/CacheableInterfaceFactoryInterface.h"
#endif

@interface AbstractArrayListPool : ABObject <PoolInterface> {
@public
    CommonStrings* commonStrings;
    BasicArrayList* buffers;
    CacheableInterfaceFactoryInterface* cacheableInterfaceFactoryInterface;
}
- (instancetype) init:(CacheableInterfaceFactoryInterface*)cacheableInterfaceFactoryInterface;
- (void) initFields;
- (void) clear;
- (CacheableInterface*) remove:(id)key;
- (void) add:(CacheableInterface*)cacheableInterface;
- (void) addArray:(CacheableInterface**)cacheableInterfaces;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AbstractArrayListPool_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_UTIL_CACHE_ABSTRACTARRAYLISTPOOL_H
