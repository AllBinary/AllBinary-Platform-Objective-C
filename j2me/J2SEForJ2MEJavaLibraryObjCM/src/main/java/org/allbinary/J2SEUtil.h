#ifndef ORG_ALLBINARY_J2SEUTIL_H
#define ORG_ALLBINARY_J2SEUTIL_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class J2SEUtil;
#include "java/util/HashMap.h"
#include "java/util/Map.h"
#include "java/util/Set.h"

//J2SEForJ2ME
@interface J2SEUtil : ABObject {
@public
}
- (instancetype) init;
+ (J2SEUtil*) getInstance;
- (id*) getHashMapAsArray:(HashMap*)hashMap;
- (id*) getMapAsArray:(Map*)map;
- (id*) getSetAsArray:(Set*)set;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void J2SEUtil_staticInit(void);


#endif // ORG_ALLBINARY_J2SEUTIL_H
