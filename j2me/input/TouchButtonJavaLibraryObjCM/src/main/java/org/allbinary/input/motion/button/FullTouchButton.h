#ifndef ORG_ALLBINARY_INPUT_MOTION_BUTTON_FULLTOUCHBUTTON_H
#define ORG_ALLBINARY_INPUT_MOTION_BUTTON_FULLTOUCHBUTTON_H
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
@class FullTouchButton;
@class Animation;
@class FeaturedAnimationInterfaceFactoryInterfaceFactory;
@class CellPosition;
@class GPoint;
@class PointFactory;
@class Rectangle;
@class TouchButton;
@class TouchButtonInput;
@class TouchButtonResource;
#include "org/allbinary/input/motion/button/TouchButton.h"

@interface FullTouchButton : TouchButton {
@public
}
- (instancetype) init:(TouchButtonInput*)touchButtonInput :(Animation*)animationInterface :(Animation*)hintAnimationInterface :(Rectangle*)rawRectangle :(CellPosition*)cellPosition :(int32_t)xBorder :(int32_t)yBorder;
+ (FullTouchButton*) createButton:(TouchButtonInput*)touchButtonInput :(TouchButtonResource*)touchButtonResource :(Rectangle*)rawRectangle :(CellPosition*)cellPosition :(int32_t)xBorder :(int32_t)yBorder;
- (void) updateRectangle;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void FullTouchButton_staticInit(void);


#endif // ORG_ALLBINARY_INPUT_MOTION_BUTTON_FULLTOUCHBUTTON_H
