#ifndef ORG_ALLBINARY_GAME_PART_WEAPON_SALVOINTERFACE_H
#define ORG_ALLBINARY_GAME_PART_WEAPON_SALVOINTERFACE_H
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
// package org.allbinary.game.part.weapon

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class SalvoInterface;
@class WeaponProperties;
@class ScoreableInterface;
@class AllBinaryLayerManager;

@protocol SalvoInterface
- (void) process:(AllBinaryLayerManager*)allbinaryLayerManager :(int16_t)angle :(int16_t)otherAngle;
- (void) processScore:(AllBinaryLayerManager*)allbinaryLayerManager :(int16_t)angle :(int16_t)otherAngle :(WeaponProperties*)weaponProperties :(ScoreableInterface*)scoreableInterface;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void SalvoInterface_staticInit(void);


#endif // ORG_ALLBINARY_GAME_PART_WEAPON_SALVOINTERFACE_H
