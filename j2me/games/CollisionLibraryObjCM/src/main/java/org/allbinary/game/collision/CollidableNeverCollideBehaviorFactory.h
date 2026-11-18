#ifndef ORG_ALLBINARY_GAME_COLLISION_COLLIDABLENEVERCOLLIDEBEHAVIORFACTORY_H
#define ORG_ALLBINARY_GAME_COLLISION_COLLIDABLENEVERCOLLIDEBEHAVIORFACTORY_H
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
// package org.allbinary.game.collision

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class CollidableNeverCollideBehaviorFactory;
@class CollidableBaseBehaviorFactory;
@class CollidableNeverCollideBehavior;
@class CollidableBaseBehavior;
#include "org/allbinary/game/collision/CollidableBaseBehaviorFactory.h"
#if __has_include("org/allbinary/game/collision/CollidableNeverCollideBehavior.h")
#include "org/allbinary/game/collision/CollidableNeverCollideBehavior.h"
#endif

@interface CollidableNeverCollideBehaviorFactory : CollidableBaseBehaviorFactory {
@public
    CollidableNeverCollideBehavior* instance;
}
- (instancetype) init;
- (void) initFields;
+ (CollidableNeverCollideBehaviorFactory*) getInstance;
- (CollidableBaseBehavior*) createBehavior;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CollidableNeverCollideBehaviorFactory_staticInit(void);


#endif // ORG_ALLBINARY_GAME_COLLISION_COLLIDABLENEVERCOLLIDEBEHAVIORFACTORY_H
