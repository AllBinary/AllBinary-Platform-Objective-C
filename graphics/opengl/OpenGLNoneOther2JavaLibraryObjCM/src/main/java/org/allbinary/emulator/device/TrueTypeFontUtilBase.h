#ifndef ORG_ALLBINARY_EMULATOR_DEVICE_TRUETYPEFONTUTILBASE_H
#define ORG_ALLBINARY_EMULATOR_DEVICE_TRUETYPEFONTUTILBASE_H
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
// package org.allbinary.emulator.device

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class TrueTypeFontUtilBase;

@interface TrueTypeFontUtilBase : ABObject {
@public
}
- (instancetype) init:(int32_t)scale;
- (int32_t) getAsTextureSize:(int32_t)textureSize;
- (int32_t) getCellSize:(int32_t)cellSize;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void TrueTypeFontUtilBase_staticInit(void);


#endif // ORG_ALLBINARY_EMULATOR_DEVICE_TRUETYPEFONTUTILBASE_H
