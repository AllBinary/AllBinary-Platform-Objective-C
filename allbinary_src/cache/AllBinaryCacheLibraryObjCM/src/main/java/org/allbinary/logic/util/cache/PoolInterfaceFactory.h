#ifndef ORG_ALLBINARY_LOGIC_UTIL_CACHE_POOLINTERFACEFACTORY_H
#define ORG_ALLBINARY_LOGIC_UTIL_CACHE_POOLINTERFACEFACTORY_H
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
@class PoolInterfaceFactory;
@class PoolInterface;
@class CacheableInterfaceFactoryInterface;
@class PoolType;
@class CachePolicy;

@interface PoolInterfaceFactory : ABObject {
@public
}
- (instancetype) init;
+ (PoolInterface*) getInstance:(CacheableInterfaceFactoryInterface*)cacheableInterfaceFactoryInterface :(PoolType*)poolType :(CachePolicy*)cachePolicy;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PoolInterfaceFactory_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_UTIL_CACHE_POOLINTERFACEFACTORY_H
