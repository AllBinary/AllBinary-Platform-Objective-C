#ifndef ORG_ALLBINARY_GAME_INPUT_INPUTPERSISTANCE_H
#define ORG_ALLBINARY_GAME_INPUT_INPUTPERSISTANCE_H
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
@class InputPersistance;
@class RecordEnumeration;
@class RecordStore;
@class BasicPersitance;
@class NullRecordComparator;
@class NullRecordFilter;
@class PreLogUtil;
@class SmallIntegerSingletonFactory;
@class StringMaker;
@class StringUtil;
@class AbeClientInformationInterface;
@class BasicArrayList;
@class HashtableUtil;
@class StdUtil;
@class ABHashtable;
@class Input;
#include "org/allbinary/game/configuration/persistance/BasicPersitance.h"
#if __has_include("org/allbinary/util/HashtableUtil.h")
#include "org/allbinary/util/HashtableUtil.h"
#endif

//GameInputNoPersistanceLibrary
@interface InputPersistance : BasicPersitance {
@public
    HashtableUtil* hashtableUtil;
}
- (instancetype) init:(const char*)name;
- (void) initFields;
- (void) loadAll:(AbeClientInformationInterface*)abeClientInformation;
- (void) save:(AbeClientInformationInterface*)abeClientInformation :(ABHashtable*)hashtable;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void InputPersistance_staticInit(void);


#endif // ORG_ALLBINARY_GAME_INPUT_INPUTPERSISTANCE_H
