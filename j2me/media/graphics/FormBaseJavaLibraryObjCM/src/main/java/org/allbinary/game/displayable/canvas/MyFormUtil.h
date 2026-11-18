#ifndef ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_MYFORMUTIL_H
#define ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_MYFORMUTIL_H
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
// package org.allbinary.game.displayable.canvas

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class MyFormUtil;
@class Font;
@class Graphics;
@class Features;
@class PointFactory;
@class Rectangle;
@class RectangleFactory;
@class DisplayInfoSingleton;
@class MyFontProcessor;
@class OpenGLFeatureFactory;
@class SWTJOGLProcessor;
@class LogUtil;
@class CommonStrings;
#if __has_include("org/allbinary/graphics/Rectangle.h")
#include "org/allbinary/graphics/Rectangle.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif

@interface MyFormUtil : ABObject {
@public
    LogUtil* logUtil;
    CommonStrings* commonStrings;
    Rectangle* popupMenuRectangle;
}
- (instancetype) init;
- (void) initFields;
+ (MyFormUtil*) getInstance;
- (void) updateMeasurement:(Graphics*)graphics;
- (Rectangle*) getPopupMenuRectangle;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void MyFormUtil_staticInit(void);

#if __has_include("org/allbinary/graphics/Rectangle.h")
#include "org/allbinary/graphics/Rectangle.h"
#endif

#endif // ORG_ALLBINARY_GAME_DISPLAYABLE_CANVAS_MYFORMUTIL_H
