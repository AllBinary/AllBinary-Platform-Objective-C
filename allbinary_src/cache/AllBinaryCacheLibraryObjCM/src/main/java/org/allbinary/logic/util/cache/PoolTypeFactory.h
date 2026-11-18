#ifndef ORG_ALLBINARY_LOGIC_UTIL_CACHE_POOLTYPEFACTORY_H
#define ORG_ALLBINARY_LOGIC_UTIL_CACHE_POOLTYPEFACTORY_H
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
@class PoolTypeFactory;
@class PoolType;
@class CacheTypeFactory;
#if __has_include("org/allbinary/logic/util/cache/PoolType.h")
#include "org/allbinary/logic/util/cache/PoolType.h"
#endif

@interface PoolTypeFactory : ABObject {
@public
    PoolType* VECTOR_POOL;
}
- (instancetype) init;
- (void) initFields;
+ (PoolTypeFactory*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PoolTypeFactory_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_UTIL_CACHE_POOLTYPEFACTORY_H
