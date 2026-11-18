#ifndef ORG_ALLBINARY_LOGIC_UTIL_CACHE_NOCACHEABLEFACTORY_H
#define ORG_ALLBINARY_LOGIC_UTIL_CACHE_NOCACHEABLEFACTORY_H
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
@class NoCacheableFactory;
@class CacheableInterfaceFactoryInterface;
@class CacheableInterface;
#include "org/allbinary/logic/util/cache/CacheableInterfaceFactoryInterface.h"

@interface NoCacheableFactory : ABObject <CacheableInterfaceFactoryInterface> {
@public
}
- (instancetype) init;
- (CacheableInterface*) getInstance:(id)key;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NoCacheableFactory_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_UTIL_CACHE_NOCACHEABLEFACTORY_H
