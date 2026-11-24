#ifndef ORG_ALLBINARY_GAME_INPUT_MAPPING_PERSISTENTINPUTMAPPING_H
#define ORG_ALLBINARY_GAME_INPUT_MAPPING_PERSISTENTINPUTMAPPING_H
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
// package org.allbinary.game.input.mapping

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class PersistentInputMapping;
@class GamePersistanceStrings;
@class Input;
@class InputPersistance;
@class InputMappingEvent;
@class InputMappingEventListenerInterface;
@class NullInputMappingEventListener;
@class NullUtil;
@class LogUtil;
@class PreLogUtil;
@class StringMaker;
@class AbeClientInformationInterface;
@class CommonStrings;
@class ABHashtable;
@class BasicArrayList;
@class EnumerationUtil;
@class InputToGameKeyMapping;
#include "java/util/Enumeration.h"
#if __has_include("org/allbinary/game/input/InputPersistance.h")
#include "org/allbinary/game/input/InputPersistance.h"
#endif
#if __has_include("org/allbinary/game/input/mapping/event/InputMappingEvent.h")
#include "org/allbinary/game/input/mapping/event/InputMappingEvent.h"
#endif
#if __has_include("org/allbinary/game/input/mapping/event/InputMappingEventListenerInterface.h")
#include "org/allbinary/game/input/mapping/event/InputMappingEventListenerInterface.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif
#if __has_include("org/allbinary/util/EnumerationUtil.h")
#include "org/allbinary/util/EnumerationUtil.h"
#endif
#if __has_include("org/allbinary/game/input/mapping/InputToGameKeyMapping.h")
#include "org/allbinary/game/input/mapping/InputToGameKeyMapping.h"
#endif

//GameInputPersistanceLibrary
@interface PersistentInputMapping : ABObject {
@public
    LogUtil* logUtil;
    CommonStrings* commonStrings;
    EnumerationUtil* enumerationUtil;
    InputToGameKeyMapping* inputMapping;
    InputMappingEventListenerInterface* inputMappingEventListenerInterface;
    InputPersistance* inputPersistance;
    InputMappingEvent* inputMappingEvent;
}
- (instancetype) init:(const char*)name;
- (void) initFields;
+ (PersistentInputMapping*) getNullInstance;
- (int32_t) getTotalMapped;
- (bool) isDefaultNew;
- (InputToGameKeyMapping*) getDefault;
- (void) setDefault:(AbeClientInformationInterface*)abeClientInformation;
- (void) update:(AbeClientInformationInterface*)abeClientInformation;
- (void) save:(AbeClientInformationInterface*)abeClientInformation;
- (void) initMethod:(AbeClientInformationInterface*)abeClientInformation;
- (void) setInputMappingEventListenerInterface:(InputMappingEventListenerInterface*)inputMappingEventListenerInterface;
- (InputMappingEventListenerInterface*) getInputMappingEventListenerInterface;
- (InputToGameKeyMapping*) getInputMapping;
- (bool) isDelete:(Input*)input;
- (bool) isSystemInput:(Input*)input;
@end

extern id PersistentInputMapping_instance;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void PersistentInputMapping_staticInit(void);


#endif // ORG_ALLBINARY_GAME_INPUT_MAPPING_PERSISTENTINPUTMAPPING_H
