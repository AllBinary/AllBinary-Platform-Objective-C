#ifndef ORG_ALLBINARY_LOGIC_UTIL_CACHE_CACHETYPEFACTORY_H
#define ORG_ALLBINARY_LOGIC_UTIL_CACHE_CACHETYPEFACTORY_H
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
@class CacheTypeFactory;
@class StringUtil;
@class CacheType;
#if __has_include("org/allbinary/logic/util/cache/CacheType.h")
#include "org/allbinary/logic/util/cache/CacheType.h"
#endif

@interface CacheTypeFactory : ABObject {
@public
    CacheType* NO_CACHE;
    CacheType* CACHE;
    CacheType* SET;
    CacheType* CACHE_VECTOR;
}
- (instancetype) init;
- (void) initFields;
+ (CacheTypeFactory*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CacheTypeFactory_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_UTIL_CACHE_CACHETYPEFACTORY_H
