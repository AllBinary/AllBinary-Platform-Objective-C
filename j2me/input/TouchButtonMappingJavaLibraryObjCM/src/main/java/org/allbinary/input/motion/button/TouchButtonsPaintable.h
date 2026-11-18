#ifndef ORG_ALLBINARY_INPUT_MOTION_BUTTON_TOUCHBUTTONSPAINTABLE_H
#define ORG_ALLBINARY_INPUT_MOTION_BUTTON_TOUCHBUTTONSPAINTABLE_H
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
@class TouchButtonsPaintable;
@class Graphics;
@class BasicColor;
@class BasicColorSetUtil;
@class Paintable;
@class BasicArrayList;
@class TouchButtonFactory;
@class TouchButton;
#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif
#if __has_include("org/allbinary/graphics/color/BasicColorSetUtil.h")
#include "org/allbinary/graphics/color/BasicColorSetUtil.h"
#endif
#include "org/allbinary/graphics/paint/Paintable.h"
#if __has_include("org/allbinary/input/motion/button/TouchButtonFactory.h")
#include "org/allbinary/input/motion/button/TouchButtonFactory.h"
#endif

@interface TouchButtonsPaintable : Paintable {
@public
    BasicColor* foregroundBasicColor;
    int32_t foregroundColor;
    BasicColorSetUtil* basicSetColorUtil;
    TouchButtonFactory* touchButtonFactory;
}
- (instancetype) init:(BasicColor*)basicColor;
- (void) initFields;
- (void) paint:(Graphics*)graphics;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void TouchButtonsPaintable_staticInit(void);


#endif // ORG_ALLBINARY_INPUT_MOTION_BUTTON_TOUCHBUTTONSPAINTABLE_H
