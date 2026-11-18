#ifndef ORG_ALLBINARY_LOGIC_UTIL_CACHE_CACHEPOLICYFACTORY_H
#define ORG_ALLBINARY_LOGIC_UTIL_CACHE_CACHEPOLICYFACTORY_H
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
@class CachePolicyFactory;
@class CachePolicy;
#include "java/lang/Long.h"
#if __has_include("org/allbinary/logic/util/cache/CachePolicy.h")
#include "org/allbinary/logic/util/cache/CachePolicy.h"
#endif

@interface CachePolicyFactory : ABObject {
@public
    const char* NAME;
    CachePolicy* MAX_TIME_THOUSAND_MAX;
    CachePolicy* THIRTY_MINUTES_TEN_THOUSAND_MAX;
    CachePolicy* THIRTY_MINUTES_FIFTY_THOUSAND_MAX;
    CachePolicy* ONE_MINUTE_FIVE_MAX;
    CachePolicy* ONE_MINUTE_TEN_MAX;
    CachePolicy* ONE_MINUTE_ONE_HUNDRED_MAX;
}
- (instancetype) init;
- (void) initFields;
+ (CachePolicyFactory*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CachePolicyFactory_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_UTIL_CACHE_CACHEPOLICYFACTORY_H
