#ifndef ORG_ALLBINARY_GAME_CONFIGURATION_PERSISTANCE_NULLRECORDCOMPARATOR_H
#define ORG_ALLBINARY_GAME_CONFIGURATION_PERSISTANCE_NULLRECORDCOMPARATOR_H
/*
 * 
 * AllBinary Open License Version 1 
 * Copyright (c) 2025 AllBinary 
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
// package org.allbinary.game.configuration.persistance

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class NullRecordComparator;
@class RecordComparator;
#include "javax/microedition/rms/RecordComparator.h"

@interface NullRecordComparator : ABObject <RecordComparator> {
@public
}
- (instancetype) init;
- (int32_t) compare:(int8_t*)rec1 :(int8_t*)rec2;
@end

extern NullRecordComparator* NullRecordComparator_NULL_RECORD_COMPARATOR;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NullRecordComparator_staticInit(void);


#endif // ORG_ALLBINARY_GAME_CONFIGURATION_PERSISTANCE_NULLRECORDCOMPARATOR_H
