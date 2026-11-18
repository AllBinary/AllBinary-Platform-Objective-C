#ifndef ORG_ALLBINARY_LOGIC_MATH_PERMUTATIONS_OBJECTPERMUTATIONVISITOR_H
#define ORG_ALLBINARY_LOGIC_MATH_PERMUTATIONS_OBJECTPERMUTATIONVISITOR_H
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
@class ObjectPermutationVisitor;
@class TsUtil;
@class NullUtil;
@class StringMaker;
@class Visitor;
@class CommonSeps;
#if __has_include("org/allbinary/logic/string/StringMaker.h")
#include "org/allbinary/logic/string/StringMaker.h"
#endif
#include "org/allbinary/logic/util/visitor/Visitor.h"
#include "java/lang/System.h"

@interface ObjectPermutationVisitor : Visitor {
@public
    id* data;
    StringMaker* stringBuilder;
}
- (instancetype) init:(id*)data;
- (void) initFields;
- (id) visit:(id)anyType;
- (void) print:(id*)data;
- (void) print:(id*)data :(StringMaker*)stringBuilder;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ObjectPermutationVisitor_staticInit(void);


#endif // ORG_ALLBINARY_LOGIC_MATH_PERMUTATIONS_OBJECTPERMUTATIONVISITOR_H
