#ifndef ORG_ALLBINARY_GAME_INPUT_ANALOG_ANALOGLOCATIONINPUTFACTORY_H
#define ORG_ALLBINARY_GAME_INPUT_ANALOG_ANALOGLOCATIONINPUTFACTORY_H
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
@class AnalogLocationInputFactory;
@class BasicArrayList;
@class BasicArrayListD;
@class AnalogLocationInput;
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

@interface AnalogLocationInputFactory : ABObject {
@public
    BasicArrayList* list;
}
- (instancetype) init;
- (void) initFields;
+ (AnalogLocationInputFactory*) getInstance;
- (void) addPlayer:(int32_t)playerInputId;
- (AnalogLocationInput*) getInstanceForPlayer:(int32_t)playerInputId;
- (BasicArrayList*) getList;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void AnalogLocationInputFactory_staticInit(void);

#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

#endif // ORG_ALLBINARY_GAME_INPUT_ANALOG_ANALOGLOCATIONINPUTFACTORY_H
