#ifndef ORG_ALLBINARY_LOGIC_MATH_PERMUTATIONS_ORDEREDINTARRAYPERMUTATIONUTIL_H
#define ORG_ALLBINARY_LOGIC_MATH_PERMUTATIONS_ORDEREDINTARRAYPERMUTATIONUTIL_H
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
// package org.allbinary.logic.math.permutations

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class OrderedIntArrayPermutationUtil;
@class Visitor;
@class StringMaker;
@class IntPermutationVisitor;
#include "java/lang/System.h"

@interface OrderedIntArrayPermutationUtil : ABObject {
@public
    const char* TOTAL_ITERATIONS_TABLE;
    const char* FINISHED;
}
- (instancetype) init;
- (void) initFields;
+ (OrderedIntArrayPermutationUtil*) getInstance;
- (void) getNext:(int32_t*)data;
- (void) swap:(int32_t*)data :(int32_t)a :(int32_t)b;
- (int64_t) factorial:(int32_t)dataLength;
- (void) generate:(int32_t*)data :(Visitor*)visitor;
+ (void) main:(const char**)args;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void OrderedIntArrayPermutationUtil_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_MATH_PERMUTATIONS_ORDEREDINTARRAYPERMUTATIONUTIL_H
