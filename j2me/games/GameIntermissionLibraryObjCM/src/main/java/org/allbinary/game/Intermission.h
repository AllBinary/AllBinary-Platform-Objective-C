#ifndef ORG_ALLBINARY_GAME_INTERMISSION_H
#define ORG_ALLBINARY_GAME_INTERMISSION_H
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
// package org.allbinary.game

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class Intermission;
@class TimeDelayHelper;
@class IntermissionInterface;
@class NullIntermissionEnableListener;
@class IntermissionEnableListenerInterface;
#if __has_include("org/allbinary/time/TimeDelayHelper.h")
#include "org/allbinary/time/TimeDelayHelper.h"
#endif
#include "org/allbinary/game/IntermissionInterface.h"
#if __has_include("org/allbinary/game/IntermissionEnableListenerInterface.h")
#include "org/allbinary/game/IntermissionEnableListenerInterface.h"
#endif

@interface Intermission : ABObject <IntermissionInterface> {
@public
    bool enabled;
    TimeDelayHelper* timeElapsedHelper;
    IntermissionEnableListenerInterface* intermissionEnableListener;
}
- (instancetype) init;
- (void) initFields;
- (void) setListener:(IntermissionEnableListenerInterface*)enableListener;
- (TimeDelayHelper*) getTimeDelayHelper;
- (void) setEnabled:(bool)enabled;
- (bool) isEnabled;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void Intermission_staticInit(void);

#if __has_include("org/allbinary/time/TimeDelayHelper.h")
#include "org/allbinary/time/TimeDelayHelper.h"
#endif

#endif // ORG_ALLBINARY_GAME_INTERMISSION_H
