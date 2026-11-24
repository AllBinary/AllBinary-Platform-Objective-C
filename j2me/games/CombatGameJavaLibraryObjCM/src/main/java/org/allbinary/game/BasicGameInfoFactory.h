#ifndef ORG_ALLBINARY_GAME_BASICGAMEINFOFACTORY_H
#define ORG_ALLBINARY_GAME_BASICGAMEINFOFACTORY_H
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
@class BasicGameInfoFactory;

@interface BasicGameInfoFactory : ABObject {
@public
    int32_t currentReleaseIndex;
    int32_t currentDestroyIndex;
    int32_t total;
}
- (instancetype) init;
- (void) initFields;
+ (BasicGameInfoFactory*) getInstance;
- (void) initMethod:(int32_t)total;
- (bool) isPeaked;
- (int32_t) howManyLeft;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void BasicGameInfoFactory_staticInit(void);


#endif // ORG_ALLBINARY_GAME_BASICGAMEINFOFACTORY_H
