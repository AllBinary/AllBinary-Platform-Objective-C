#ifndef ORG_ALLBINARY_GAME_INPUT_PCGAMEINPUTMAPPING_H
#define ORG_ALLBINARY_GAME_INPUT_PCGAMEINPUTMAPPING_H
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
// package org.allbinary.game.input

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class PCGameInputMapping;
@class GamePersistanceStrings;
@class PersistentInputMapping;
@class BasicTouchInputFactory;
@class TouchMotionGestureFactory;
@class TrackballMotionGestureFactory;
@class AbeClientInformationInterface;
@class PCKeyFactory;
@class Input;
#include "org/allbinary/game/input/mapping/PersistentInputMapping.h"

@interface PCGameInputMapping : PersistentInputMapping {
@public
}
- (instancetype) init;
- (void) init_:(AbeClientInformationInterface*)abeClientInformation;
- (bool) isDelete:(Input*)input;
- (bool) isSystemInput:(Input*)input;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PCGameInputMapping_staticInit(void);


#endif // ORG_ALLBINARY_GAME_INPUT_PCGAMEINPUTMAPPING_H
