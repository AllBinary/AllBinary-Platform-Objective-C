#ifndef ORG_ALLBINARY_GAME_INPUT_J2MEGAMEINPUTMAPPING_H
#define ORG_ALLBINARY_GAME_INPUT_J2MEGAMEINPUTMAPPING_H
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
@class J2MEGameInputMapping;
@class GamePersistanceStrings;
@class PersistentInputMapping;
@class AbeClientInformationInterface;
@class J2MEKeyFactory;
@class GameKeyFactory;
@class Input;
#include "org/allbinary/game/input/mapping/PersistentInputMapping.h"

@interface J2MEGameInputMapping : PersistentInputMapping {
@public
}
- (instancetype) init;
- (void) init_:(AbeClientInformationInterface*)abeClientInformation;
- (bool) isDelete:(Input*)input;
- (bool) isSystemInput:(Input*)input;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void J2MEGameInputMapping_staticInit(void);


#endif // ORG_ALLBINARY_GAME_INPUT_J2MEGAMEINPUTMAPPING_H
