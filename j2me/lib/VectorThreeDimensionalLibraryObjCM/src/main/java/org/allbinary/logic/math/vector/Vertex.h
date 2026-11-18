#ifndef ORG_ALLBINARY_LOGIC_MATH_VECTOR_VERTEX_H
#define ORG_ALLBINARY_LOGIC_MATH_VECTOR_VERTEX_H
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
// package org.allbinary.logic.math.vector

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class Vertex;
@class BasicDecimal;
@class StringMaker;
@class PositionStrings;
@class CommonSeps;
#if __has_include("org/allbinary/logic/math/BasicDecimal.h")
#include "org/allbinary/logic/math/BasicDecimal.h"
#endif

@interface Vertex : ABObject {
@public
    BasicDecimal* x;
    BasicDecimal* y;
    BasicDecimal* z;
}
- (instancetype) init;
- (void) initFields;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void Vertex_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_MATH_VECTOR_VERTEX_H
