#ifndef ORG_ALLBINARY_LOGIC_VECTORUTIL_H
#define ORG_ALLBINARY_LOGIC_VECTORUTIL_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2026 AllBinary 
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
// package org.allbinary.logic

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class VectorUtil;
#include "java/util/Vector.h"

@interface VectorUtil : ABObject {
@public
}
- (instancetype) init;
+ (VectorUtil*) getInstance;
- (int32_t) getSize:(id)anyType;
- (id) elementAt:(id)anyType :(int32_t)index;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void VectorUtil_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_VECTORUTIL_H
