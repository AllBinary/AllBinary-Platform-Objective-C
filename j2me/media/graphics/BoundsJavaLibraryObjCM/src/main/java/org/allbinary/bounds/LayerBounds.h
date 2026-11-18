#ifndef ORG_ALLBINARY_BOUNDS_LAYERBOUNDS_H
#define ORG_ALLBINARY_BOUNDS_LAYERBOUNDS_H
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
// package org.allbinary.bounds

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class LayerBounds;
@class BoundsChangeEvent;
@class BoundsChangeEventListener;
@class Rectangle;
@class ForcedLogUtil;
@class LogUtil;
@class AllBinaryEventObject;
@class EventStrings;
@class BoundsVisitorInterface;
#include "org/allbinary/bounds/event/BoundsChangeEventListener.h"
#if __has_include("org/allbinary/graphics/Rectangle.h")
#include "org/allbinary/graphics/Rectangle.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif

@interface LayerBounds : ABObject <BoundsChangeEventListener> {
@public
    LogUtil* logUtil;
    Rectangle* rectangle;
}
- (instancetype) init:(Rectangle*)rectangle;
- (void) initFields;
- (Rectangle*) getRectangleP;
- (void) visit:(BoundsVisitorInterface*)boundsVisitorInterface;
- (void) onEvent:(AllBinaryEventObject*)eventObject;
- (void) onBoundsChangeEvent:(BoundsChangeEvent*)boundsChangeEvent;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void LayerBounds_staticInit(void);

#if __has_include("org/allbinary/graphics/Rectangle.h")
#include "org/allbinary/graphics/Rectangle.h"
#endif

#endif // ORG_ALLBINARY_BOUNDS_LAYERBOUNDS_H
