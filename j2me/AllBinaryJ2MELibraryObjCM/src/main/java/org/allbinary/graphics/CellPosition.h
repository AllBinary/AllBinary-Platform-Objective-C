#ifndef ORG_ALLBINARY_GRAPHICS_CELLPOSITION_H
#define ORG_ALLBINARY_GRAPHICS_CELLPOSITION_H
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
// package org.allbinary.graphics

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class CellPosition;
@class V;
@class StringMaker;
@class CommonSeps;
#include "org/allbinary/graph/V.h"

@interface CellPosition : V {
@public
    int32_t id_;
    int32_t column;
    int32_t row;
}
- (instancetype) init:(int32_t)column :(int32_t)row :(int32_t)columns :(int32_t)rows;
- (void) initFields;
- (int32_t) getColumn;
- (int32_t) getRow;
- (const char*) toString;
+ (const char*) toStringCellPosition:(CellPosition*)basicGeographicMapCellPosition;
+ (const char*) toStringColRow:(int32_t)i_column :(int32_t)i_row;
- (int32_t) getId;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CellPosition_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_CELLPOSITION_H
