#ifndef ORG_ALLBINARY_GRAPHICS_COLOR_COLORCHANGEEVENT_H
#define ORG_ALLBINARY_GRAPHICS_COLOR_COLORCHANGEEVENT_H
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
// package org.allbinary.graphics.color

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class ColorChangeEvent;
@class AllBinaryEventObject;
@class BasicColorFactory;
@class BasicColor;
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#if __has_include("org/allbinary/graphics/color/BasicColor.h")
#include "org/allbinary/graphics/color/BasicColor.h"
#endif

@interface ColorChangeEvent : AllBinaryEventObject {
@public
    BasicColor* basicColor;
}
- (instancetype) init:(id)anyType;
- (void) initFields;
- (void) setBasicColorP:(BasicColor*)basicColor;
- (BasicColor*) getBasicColorP;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ColorChangeEvent_staticInit(void);


#endif // ORG_ALLBINARY_GRAPHICS_COLOR_COLORCHANGEEVENT_H
