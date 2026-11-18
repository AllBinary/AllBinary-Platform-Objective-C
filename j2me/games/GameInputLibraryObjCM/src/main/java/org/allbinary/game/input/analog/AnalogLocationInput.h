#ifndef ORG_ALLBINARY_GAME_INPUT_ANALOG_ANALOGLOCATIONINPUT_H
#define ORG_ALLBINARY_GAME_INPUT_ANALOG_ANALOGLOCATIONINPUT_H
// Generated Code Do Not Modify
// package org.allbinary.game.input.analog

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class AnalogLocationInput;
@class CustomGPoint;
#if __has_include("org/allbinary/graphics/CustomGPoint.h")
#include "org/allbinary/graphics/CustomGPoint.h"
#endif

@interface AnalogLocationInput : ABObject {
@public
    int32_t playerId;
    CustomGPoint* customGPoint;
    int32_t rz;
    int32_t rightTrigger;
    int32_t leftTrigger;
}
- (instancetype) init:(int32_t)playerId;
- (void) initFields;
- (int32_t) getPlayerId;
- (CustomGPoint*) getCustomGPoint;
- (int32_t) getRz;
- (void) setRz:(int32_t)rz;
- (int32_t) getRightTrigger;
- (void) setRightTrigger:(int32_t)rightTrigger;
- (int32_t) getLeftTrigger;
- (void) setLeftTrigger:(int32_t)leftTrigger;
@end

extern AnalogLocationInput* AnalogLocationInput_NULL_ANALOG_LOCATION_INPUT;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AnalogLocationInput_staticInit(void);

#if __has_include("org/allbinary/graphics/CustomGPoint.h")
#include "org/allbinary/graphics/CustomGPoint.h"
#endif

#endif // ORG_ALLBINARY_GAME_INPUT_ANALOG_ANALOGLOCATIONINPUT_H
