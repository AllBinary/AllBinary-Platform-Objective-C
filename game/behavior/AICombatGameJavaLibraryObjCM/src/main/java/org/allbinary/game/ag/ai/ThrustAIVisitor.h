#ifndef ORG_ALLBINARY_GAME_AG_AI_THRUSTAIVISITOR_H
#define ORG_ALLBINARY_GAME_AG_AI_THRUSTAIVISITOR_H
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
@class ThrustAIVisitor;
@class Canvas;
@class BasicAI;
@class LogUtil;
@class BooleanFactory;
@class Visitor;
@class CommonStrings;
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif
#include "org/allbinary/logic/util/visitor/Visitor.h"
#include "java/lang/Boolean.h"

@interface ThrustAIVisitor : Visitor {
@public
    LogUtil* logUtil;
    bool TRUE;
}
- (instancetype) init;
- (void) initFields;
- (id) visit:(id)anyType;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ThrustAIVisitor_staticInit(void);


#endif // ORG_ALLBINARY_GAME_AG_AI_THRUSTAIVISITOR_H
