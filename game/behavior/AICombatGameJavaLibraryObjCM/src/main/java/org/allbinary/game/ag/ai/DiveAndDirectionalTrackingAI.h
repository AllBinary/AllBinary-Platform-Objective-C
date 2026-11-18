#ifndef ORG_ALLBINARY_GAME_AG_AI_DIVEANDDIRECTIONALTRACKINGAI_H
#define ORG_ALLBINARY_GAME_AG_AI_DIVEANDDIRECTIONALTRACKINGAI_H
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
@class DiveAndDirectionalTrackingAI;
@class Canvas;
@class ArtificialIntelligenceInterface;
@class Direction;
@class DirectionFactory;
@class DirectionalCompositeInterface;
@class DirectionalInterface;
@class BasicAI;
@class DestroyedEvent;
@class DestroyedEventHandler;
@class DestroyedEventListenerInterface;
@class Group;
@class GameInput;
@class BasicVelocityProperties;
@class VelocityInterfaceCompositeInterface;
@class TrackingEvent;
@class TrackingEventHandler;
@class TrackingEventListenerInterface;
@class AllBinaryLayer;
@class AllBinaryLayerManager;
@class ForcedLogUtil;
@class MathUtil;
@class StringMaker;
@class StringUtil;
@class AllBinaryEventObject;
@class EventStrings;
@class Visitor;
@class GameTickTimeDelayHelper;
@class GameTickTimeDelayHelperFactory;
@class TimeDelayHelper;
@class BasicArrayList;
@class BasicArrayListD;
#if __has_include("org/allbinary/ai/ArtificialIntelligenceInterface.h")
#include "org/allbinary/ai/ArtificialIntelligenceInterface.h"
#endif
#if __has_include("org/allbinary/direction/Direction.h")
#include "org/allbinary/direction/Direction.h"
#endif
#if __has_include("org/allbinary/direction/DirectionFactory.h")
#include "org/allbinary/direction/DirectionFactory.h"
#endif
#if __has_include("org/allbinary/direction/DirectionalInterface.h")
#include "org/allbinary/direction/DirectionalInterface.h"
#endif
#include "org/allbinary/game/ai/BasicAI.h"
#include "org/allbinary/game/combat/destroy/event/DestroyedEventListenerInterface.h"
#if __has_include("org/allbinary/game/physics/velocity/BasicVelocityProperties.h")
#include "org/allbinary/game/physics/velocity/BasicVelocityProperties.h"
#endif
#include "org/allbinary/game/tracking/TrackingEventListenerInterface.h"
#if __has_include("org/allbinary/layer/AllBinaryLayer.h")
#include "org/allbinary/layer/AllBinaryLayer.h"
#endif
#if __has_include("org/allbinary/logic/math/MathUtil.h")
#include "org/allbinary/logic/math/MathUtil.h"
#endif
#if __has_include("org/allbinary/logic/util/visitor/Visitor.h")
#include "org/allbinary/logic/util/visitor/Visitor.h"
#endif
#if __has_include("org/allbinary/time/GameTickTimeDelayHelper.h")
#include "org/allbinary/time/GameTickTimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/time/TimeDelayHelper.h")
#include "org/allbinary/time/TimeDelayHelper.h"
#endif
#if __has_include("org/allbinary/util/BasicArrayList.h")
#include "org/allbinary/util/BasicArrayList.h"
#endif

@interface DiveAndDirectionalTrackingAI : BasicAI <TrackingEventListenerInterface, DestroyedEventListenerInterface> {
@public
    MathUtil* mathUtil;
    DirectionFactory* directionFactory;
    GameTickTimeDelayHelper* gameTickTimeDelayHelper;
    TimeDelayHelper* timeDelayHelper;
    BasicArrayList* list;
    DirectionalInterface* directionalInterface;
    BasicVelocityProperties* velocityInterface;
    int32_t* directionToKeyMap;
    bool initialDropped;
    bool diveP;
    Direction* directionOfTarget;
    int32_t MIN_DISTANCE;
    AllBinaryLayer* lastTrackingLayerInterface;
    ArtificialIntelligenceInterface* artificialIntelligenceInterface;
    Visitor* aiVistor;
    Direction* lastDirection;
}
- (instancetype) init:(AllBinaryLayer*)ownerLayerInterface :(ArtificialIntelligenceInterface*)artificialIntelligenceInterface :(GameInput*)gameInput :(Visitor*)visitor;
- (void) initFields;
- (void) processAI:(AllBinaryLayerManager*)allBinaryLayerManager;
- (void) init_;
- (void) target:(AllBinaryLayerManager*)allBinaryLayerManager;
- (void) verticalTargeting:(int32_t)x;
- (void) horizontalTargeting:(int32_t)y;
- (void) setDive;
- (void) moveRight;
- (void) moveLeft;
- (void) moveDown;
- (void) moveUp;
- (void) dive;
- (void) attack;
- (void) drop;
- (bool) isBeyondTarget;
- (void) onEvent:(AllBinaryEventObject*)eventObject;
- (void) onMovement:(TrackingEvent*)trackingEvent;
- (void) onDestroyed:(DestroyedEvent*)destroyedEvent;
- (void) setLastDirection:(Direction*)lastDirection;
- (void) setLastKey:(int32_t)lastKey;
- (Direction*) getLastDirection;
- (const char*) toString;
@end

// Runs the Java static initialization of the class once. Reads of its static fields call it first.
void DiveAndDirectionalTrackingAI_staticInit(void);

#if __has_include("org/allbinary/direction/Direction.h")
#include "org/allbinary/direction/Direction.h"
#endif

#endif // ORG_ALLBINARY_GAME_AG_AI_DIVEANDDIRECTIONALTRACKINGAI_H
