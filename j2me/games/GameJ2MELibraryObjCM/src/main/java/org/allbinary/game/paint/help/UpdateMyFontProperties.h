#ifndef ORG_ALLBINARY_GAME_PAINT_HELP_UPDATEMYFONTPROPERTIES_H
#define ORG_ALLBINARY_GAME_PAINT_HELP_UPDATEMYFONTPROPERTIES_H
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
// package org.allbinary.game.paint.help

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class UpdateMyFontProperties;
@class NullUtil;
@class StringUtil;

@interface UpdateMyFontProperties : ABObject {
@public
    const char** actionStringArray;
    int32_t* keymappingBeginWidthArray;
    int32_t* actionStringDeltaXArray;
    int32_t** inputDeltaXArray;
    const char*** sepArray;
    int32_t** sepWidthArray;
    int32_t charHeight;
}
- (instancetype) init;
- (void) initFields;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void UpdateMyFontProperties_staticInit(void);


#endif // ORG_ALLBINARY_GAME_PAINT_HELP_UPDATEMYFONTPROPERTIES_H
