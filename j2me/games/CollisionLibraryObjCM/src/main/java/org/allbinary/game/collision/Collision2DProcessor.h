#ifndef ORG_ALLBINARY_GAME_COLLISION_COLLISION2DPROCESSOR_H
#define ORG_ALLBINARY_GAME_COLLISION_COLLISION2DPROCESSOR_H
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
@class Collision2DProcessor;
@class AllBinaryLayer;
@class CollisionProcessor;
#include "org/allbinary/game/collision/CollisionProcessor.h"

@interface Collision2DProcessor : CollisionProcessor {
@public
}
- (instancetype) init;
- (bool) isCollision:(AllBinaryLayer*)myLayer :(AllBinaryLayer*)myLayer2;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void Collision2DProcessor_staticInit(void);


#endif // ORG_ALLBINARY_GAME_COLLISION_COLLISION2DPROCESSOR_H
