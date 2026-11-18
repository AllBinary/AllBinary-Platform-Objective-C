#ifndef ORG_ALLBINARY_GAME_INPUT_MAPPING_EVENT_NULLINPUTMAPPINGEVENTLISTENER_H
#define ORG_ALLBINARY_GAME_INPUT_MAPPING_EVENT_NULLINPUTMAPPINGEVENTLISTENER_H
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
// package org.allbinary.game.input.mapping.event

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class NullInputMappingEventListener;
@class AllBinaryEventObject;
@class InputMappingEventListenerInterface;
@class InputMappingEvent;
#include "org/allbinary/game/input/mapping/event/InputMappingEventListenerInterface.h"

@interface NullInputMappingEventListener : ABObject <InputMappingEventListenerInterface> {
@public
}
- (instancetype) init;
- (void) onInputMappingEvent:(InputMappingEvent*)inputMappingEvent;
- (void) onEvent:(AllBinaryEventObject*)eventObject;
@end

extern NullInputMappingEventListener* NullInputMappingEventListener_NULL_INPUT_MAPPING_EVENT_LISTENER;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NullInputMappingEventListener_staticInit(void);


#endif // ORG_ALLBINARY_GAME_INPUT_MAPPING_EVENT_NULLINPUTMAPPINGEVENTLISTENER_H
