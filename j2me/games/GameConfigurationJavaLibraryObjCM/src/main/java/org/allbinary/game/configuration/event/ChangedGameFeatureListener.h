#ifndef ORG_ALLBINARY_GAME_CONFIGURATION_EVENT_CHANGEDGAMEFEATURELISTENER_H
#define ORG_ALLBINARY_GAME_CONFIGURATION_EVENT_CHANGEDGAMEFEATURELISTENER_H
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
// package org.allbinary.game.configuration.event

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class ChangedGameFeatureListener;
@class GameConfiguration;
@class BaseChangedGameFeatureListener;
#include "org/allbinary/game/configuration/event/BaseChangedGameFeatureListener.h"

@interface ChangedGameFeatureListener : BaseChangedGameFeatureListener {
@public
}
- (instancetype) init;
+ (ChangedGameFeatureListener*) getInstance;
- (bool) isChangedGameConfiguration:(GameConfiguration*)gameConfiguration;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ChangedGameFeatureListener_staticInit(void);


#endif // ORG_ALLBINARY_GAME_CONFIGURATION_EVENT_CHANGEDGAMEFEATURELISTENER_H
