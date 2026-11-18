#ifndef ORG_ALLBINARY_INPUT_MOTION_BUTTON_COMMONBUTTONS_H
#define ORG_ALLBINARY_INPUT_MOTION_BUTTON_COMMONBUTTONS_H
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
// package org.allbinary.input.motion.button

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class CommonButtons;
@class PointFactory;
@class Rectangle;
@class DisplayInfoSingleton;
#if __has_include("org/allbinary/graphics/Rectangle.h")
#include "org/allbinary/graphics/Rectangle.h"
#endif

@interface CommonButtons : ABObject {
@public
    int32_t STANDARD_BUTTON_SIZE;
    Rectangle* NORMAL_BUTTON;
    Rectangle* LARGE_BUTTON;
}
- (instancetype) init;
- (void) initFields;
+ (CommonButtons*) getInstance;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CommonButtons_staticInit(void);


#endif // ORG_ALLBINARY_INPUT_MOTION_BUTTON_COMMONBUTTONS_H
