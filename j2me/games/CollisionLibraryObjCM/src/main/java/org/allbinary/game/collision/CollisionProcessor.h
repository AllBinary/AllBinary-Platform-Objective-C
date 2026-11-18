#ifndef ORG_ALLBINARY_GAME_COLLISION_COLLISIONPROCESSOR_H
#define ORG_ALLBINARY_GAME_COLLISION_COLLISIONPROCESSOR_H
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
@class CollisionProcessor;
@class AllBinaryLayer;

@interface CollisionProcessor : ABObject {
@public
}
- (instancetype) init;
- (bool) isCollision:(AllBinaryLayer*)myLayer :(AllBinaryLayer*)myLayer2;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void CollisionProcessor_staticInit(void);


#endif // ORG_ALLBINARY_GAME_COLLISION_COLLISIONPROCESSOR_H
