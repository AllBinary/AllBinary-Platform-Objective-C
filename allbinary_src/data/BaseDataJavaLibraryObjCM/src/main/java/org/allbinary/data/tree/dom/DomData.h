#ifndef ORG_ALLBINARY_DATA_TREE_DOM_DOMDATA_H
#define ORG_ALLBINARY_DATA_TREE_DOM_DOMDATA_H
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
// package org.allbinary.data.tree.dom

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class DomData;

@interface DomData : ABObject {
@public
}
- (instancetype) init;
@end

extern const char* DomData_ID;
extern const char* DomData_CHILD;
extern const char* DomData_NAME;
extern const char* DomData_VALUE;
extern const char* DomData_INDEX;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void DomData_staticInit(void);


#endif // ORG_ALLBINARY_DATA_TREE_DOM_DOMDATA_H
