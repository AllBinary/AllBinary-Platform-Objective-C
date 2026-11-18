#ifndef ORG_ALLBINARY_GRAPHICS_DISPLAYABLE_CANVASSTRINGS_H
#define ORG_ALLBINARY_GRAPHICS_DISPLAYABLE_CANVASSTRINGS_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2022 AllBinary 
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
// package org.allbinary.graphics.displayable

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class CanvasStrings;
@class BasicArrayList;
@class BasicArrayListUtil;
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

@interface CanvasStrings : ABObject {
@public
    const char* CONSTRUCTOR;
    const char* PAUSE;
    const char* UN_PAUSE;
    const char* SET_FULL_SCREEN_MODE;
    const char* SIZE_CHANGED;
    const char* SCALED_IMAGES;
    const char* PAINT;
    const char* ON_DISPLAY_CHANGE_EVENT;
    const char* UPDATE_MEASUREMENT;
    const char* FD_WIDTH;
    const char* FD_HEIGHT;
    BasicArrayList* EMPTY_CHILD_NAME_LIST;
    const char* ABOUT;
    const char* OPTIONS;
    const char* FONT_ATLAS;
    const char* OBJ_MODEL;
    const char* MD2_MODEL;
    const char* _PNG_;
}
- (instancetype) init;
- (void) initFields;
+ (CanvasStrings*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CanvasStrings_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_DISPLAYABLE_CANVASSTRINGS_H
