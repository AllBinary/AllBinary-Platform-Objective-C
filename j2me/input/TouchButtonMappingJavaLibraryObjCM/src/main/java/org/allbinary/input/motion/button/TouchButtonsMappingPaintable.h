#ifndef ORG_ALLBINARY_INPUT_MOTION_BUTTON_TOUCHBUTTONSMAPPINGPAINTABLE_H
#define ORG_ALLBINARY_INPUT_MOTION_BUTTON_TOUCHBUTTONSMAPPINGPAINTABLE_H
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
@class TouchButtonsMappingPaintable;
@class Graphics;
@class CellPositionFactory;
@class BasicColor;
@class Paintable;
@class LogUtil;
@class CommonStrings;
@class TouchButtonLocationHelper;
@class CommonButtons;
@class TouchButton;
@class BasicTouchInputFactory;
@class TouchButtonBlankResource;
#include "org/allbinary/graphics/paint/Paintable.h"
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/input/motion/button/TouchButtonLocationHelper.h")
#include "org/allbinary/input/motion/button/TouchButtonLocationHelper.h"
#endif

@interface TouchButtonsMappingPaintable : Paintable {
@public
    LogUtil* logUtil;
    int32_t foregroundColor;
    Paintable*** paintableTable;
    TouchButtonLocationHelper* touchButtonLocationHelper;
}
- (instancetype) init:(BasicColor*)basicColor;
- (void) initFields;
- (void) initMethod;
- (Paintable***) createPaintableTable;
- (void) paint:(Graphics*)graphics;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void TouchButtonsMappingPaintable_staticInit(void);


#endif // ORG_ALLBINARY_INPUT_MOTION_BUTTON_TOUCHBUTTONSMAPPINGPAINTABLE_H
