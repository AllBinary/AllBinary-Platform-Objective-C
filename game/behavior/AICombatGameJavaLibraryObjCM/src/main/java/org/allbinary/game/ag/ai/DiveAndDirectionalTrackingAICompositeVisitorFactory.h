#ifndef ORG_ALLBINARY_GAME_AG_AI_DIVEANDDIRECTIONALTRACKINGAICOMPOSITEVISITORFACTORY_H
#define ORG_ALLBINARY_GAME_AG_AI_DIVEANDDIRECTIONALTRACKINGAICOMPOSITEVISITORFACTORY_H
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
// package org.allbinary.game.ag.ai

#include <math.h>
#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <strings.h>
#include "allbinary_java.h"
#include "ABObject.h"
@class DiveAndDirectionalTrackingAICompositeVisitorFactory;
@class Visitor;
@class DiveAndDirectionalTrackingAI;

@interface DiveAndDirectionalTrackingAICompositeVisitorFactory : ABObject {
@public
}
- (instancetype) init;
- (Visitor*) getInstance:(DiveAndDirectionalTrackingAI*)diveBombAI;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void DiveAndDirectionalTrackingAICompositeVisitorFactory_staticInit(void);

#if __has_include("org/allbinary/logic/util/visitor/Visitor.h")
#include "org/allbinary/logic/util/visitor/Visitor.h"
#endif

#endif // ORG_ALLBINARY_GAME_AG_AI_DIVEANDDIRECTIONALTRACKINGAICOMPOSITEVISITORFACTORY_H
