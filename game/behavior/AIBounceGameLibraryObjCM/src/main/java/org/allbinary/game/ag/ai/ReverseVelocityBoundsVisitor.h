#ifndef ORG_ALLBINARY_GAME_AG_AI_REVERSEVELOCITYBOUNDSVISITOR_H
#define ORG_ALLBINARY_GAME_AG_AI_REVERSEVELOCITYBOUNDSVISITOR_H
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
@class ReverseVelocityBoundsVisitor;
@class BoundsVisitorInterface;
@class VelocityInterface;
@class VelocityInterfaceCompositeInterface;
@class LayerInterface;
@class LogUtil;
#include "org/allbinary/bounds/BoundsVisitorInterface.h"
#if __has_include("org/allbinary/game/physics/velocity/VelocityInterface.h")
#include "org/allbinary/game/physics/velocity/VelocityInterface.h"
#endif
#if __has_include("org/allbinary/layer/LayerInterface.h")
#include "org/allbinary/layer/LayerInterface.h"
#endif
#if __has_include("org/allbinary/logic/communication/log/LogUtil.h")
#include "org/allbinary/logic/communication/log/LogUtil.h"
#endif

@interface ReverseVelocityBoundsVisitor : ABObject <BoundsVisitorInterface> {
@public
    LogUtil* logUtil;
    VelocityInterface* velocityInterface;
    LayerInterface* layerInterface;
}
- (instancetype) init:(LayerInterface*)layerInterface;
- (void) initFields;
- (int32_t) getX;
- (int32_t) getY;
- (void) minX;
- (void) maxX;
- (void) minY;
- (void) maxY;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void ReverseVelocityBoundsVisitor_staticInit(void);


#endif // ORG_ALLBINARY_GAME_AG_AI_REVERSEVELOCITYBOUNDSVISITOR_H
