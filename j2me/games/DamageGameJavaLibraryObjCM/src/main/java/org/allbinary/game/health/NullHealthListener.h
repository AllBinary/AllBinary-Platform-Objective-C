#ifndef ORG_ALLBINARY_GAME_HEALTH_NULLHEALTHLISTENER_H
#define ORG_ALLBINARY_GAME_HEALTH_NULLHEALTHLISTENER_H
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
// package org.allbinary.game.health

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class NullHealthListener;
@class HealthListenerInterface;
#include "org/allbinary/game/health/HealthListenerInterface.h"

@interface NullHealthListener : ABObject <HealthListenerInterface> {
@public
}
- (instancetype) init;
- (void) onHealthChange;
@end

extern NullHealthListener* NullHealthListener_NULL_HEALTH_LISTENER;
// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void NullHealthListener_staticInit(void);


#endif // ORG_ALLBINARY_GAME_HEALTH_NULLHEALTHLISTENER_H
