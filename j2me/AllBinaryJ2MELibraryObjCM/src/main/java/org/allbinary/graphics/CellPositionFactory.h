#ifndef ORG_ALLBINARY_GRAPHICS_CELLPOSITIONFACTORY_H
#define ORG_ALLBINARY_GRAPHICS_CELLPOSITIONFACTORY_H
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
@class CellPositionFactory;
@class LogUtil;
@class StringMaker;
@class CommonStrings;
@class CellPosition;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/graphics/CellPosition.h")
#include "org/allbinary/graphics/CellPosition.h"
#endif

@interface CellPositionFactory : ABObject {
@public
    LogUtil* logUtil;
    CellPosition* NONE;
    CellPosition*** cellPositionArray;
    int32_t columns;
    int32_t rows;
}
- (instancetype) init;
- (void) initFields;
+ (CellPositionFactory*) getInstance;
- (void) init_:(int32_t)columns :(int32_t)rows;
- (CellPosition*) getInstanceColRow:(int32_t)i_column :(int32_t)i_row;
- (CellPosition*) createInstance:(int32_t)i_column :(int32_t)i_row;
- (int32_t) getColumns;
- (int32_t) getRows;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CellPositionFactory_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_CELLPOSITIONFACTORY_H
