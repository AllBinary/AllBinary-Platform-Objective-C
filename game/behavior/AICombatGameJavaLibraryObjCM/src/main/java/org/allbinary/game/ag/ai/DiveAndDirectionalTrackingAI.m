// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/DiveAndDirectionalTrackingAI.h"
#include "javax/microedition/lcdui/Canvas.h"
#include "org/allbinary/ai/ArtificialIntelligenceInterface.h"
#include "org/allbinary/direction/Direction.h"
#include "org/allbinary/direction/DirectionFactory.h"
#include "org/allbinary/direction/DirectionalCompositeInterface.h"
#include "org/allbinary/direction/DirectionalInterface.h"
#include "org/allbinary/game/combat/destroy/event/DestroyedEvent.h"
#include "org/allbinary/game/combat/destroy/event/DestroyedEventHandler.h"
#include "org/allbinary/game/identification/Group.h"
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/game/physics/velocity/BasicVelocityProperties.h"
#include "org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface.h"
#include "org/allbinary/game/tracking/TrackingEvent.h"
#include "org/allbinary/game/tracking/TrackingEventHandler.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/logic/communication/log/ForcedLogUtil.h"
#include "org/allbinary/logic/math/MathUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventStrings.h"
#include "org/allbinary/logic/util/visitor/Visitor.h"
#include "org/allbinary/time/GameTickTimeDelayHelper.h"
#include "org/allbinary/time/GameTickTimeDelayHelperFactory.h"
#include "org/allbinary/time/TimeDelayHelper.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"



void DiveAndDirectionalTrackingAI_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation DiveAndDirectionalTrackingAI

- (void) initFields {
    self->mathUtil = [MathUtil getInstance];
    self->directionFactory = [DirectionFactory getInstance];
    self->gameTickTimeDelayHelper = [GameTickTimeDelayHelperFactory getInstance];
    self->timeDelayHelper = [((TimeDelayHelper*) [TimeDelayHelper alloc]) init:500];
    self->list = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
    
    
    self->directionToKeyMap = ((int32_t*) java_array_from(sizeof(int32_t), sizeof((int32_t[]){ (Canvas_staticInit(), Canvas_LEFT), (Canvas_staticInit(), Canvas_DOWN), (Canvas_staticInit(), Canvas_UP), (Canvas_staticInit(), Canvas_RIGHT) }) / sizeof(int32_t), (int32_t[]){ (Canvas_staticInit(), Canvas_LEFT), (Canvas_staticInit(), Canvas_DOWN), (Canvas_staticInit(), Canvas_UP), (Canvas_staticInit(), Canvas_RIGHT) }));
    self->initialDropped = false;
    self->diveP = false;
    self->directionOfTarget = [Direction getInstance:0];
    self->MIN_DISTANCE = 40;
    self->lastTrackingLayerInterface = (AllBinaryLayer_staticInit(), AllBinaryLayer_NULL_ALLBINARY_LAYER);
    
    
    self->lastDirection = [DirectionFactory getInstance]->NO_DIRECTION;
}


- (instancetype) init:(AllBinaryLayer*)ownerLayerInterface :(ArtificialIntelligenceInterface*)artificialIntelligenceInterface :(GameInput*)gameInput :(Visitor*)visitor {
        self = [super init:ownerLayerInterface :gameInput];
        [self initFields];
        self->aiVistor = visitor;
        self->artificialIntelligenceInterface = artificialIntelligenceInterface;
        DirectionalCompositeInterface* directionalCompositeInterface = ((DirectionalCompositeInterface*) [self getOwnerLayerInterface]);
        self->directionalInterface = [directionalCompositeInterface getDirectionalInterface];
        VelocityInterfaceCompositeInterface* velocityInterfaceCompositeInterface = ((VelocityInterfaceCompositeInterface*) [self getOwnerLayerInterface]);
        self->velocityInterface = [velocityInterfaceCompositeInterface getVelocityProperties];
        [[DestroyedEventHandler getInstance] addListenerInterface:self];
        [self init_];
    return self;
}


// throws Exception
- (void) processAI:(AllBinaryLayerManager*)allBinaryLayerManager {
        if ([self isBeyondTarget]) {
            [self init_];
            [self->velocityInterface zero];
        }
        if (!self->diveP) {
            [self target:allBinaryLayerManager];
        } else {
            [self dive];
            [self attack];
        }
        [self->list clear];
}


- (void) init_ {
        self->diveP = false;
        self->directionOfTarget = [DirectionFactory getInstance]->NOT_BORDERED_WITH;
        [[TrackingEventHandler getInstance] addListenerInterface:self];
}


// throws Exception
- (void) target:(AllBinaryLayerManager*)allBinaryLayerManager {
        if ([self->list size] == 0) {
            return;
        }
        TrackingEvent* lastTrackingEvent = ((TrackingEvent*) [self->list removeAt:0]);
        self->lastTrackingLayerInterface = [lastTrackingEvent getLayerInterface];
        AllBinaryLayer* layerInterface = self->lastTrackingLayerInterface;
        AllBinaryLayer* ownerLayerInterface = [self getOwnerLayerInterface];
        Group** groupArray = [layerInterface getGroupInterface];
        Group** ownerGroupArray = [ownerLayerInterface getGroupInterface];
        if (groupArray == ownerGroupArray) {
            return;
        }
        int32_t x = [self->lastTrackingLayerInterface getXP];
        int32_t y = [self->lastTrackingLayerInterface getYP];
        int32_t yDistance = [ownerLayerInterface getYP] - y - [ownerLayerInterface getHeight];
        int32_t xDistance = [ownerLayerInterface getXP] - x - [ownerLayerInterface getWidth];
        DirectionFactory* directionFactory = [DirectionFactory getInstance];
        if ([self->mathUtil abs:yDistance] > [self->mathUtil abs:xDistance]) {
            if (yDistance > self->MIN_DISTANCE) {
                self->directionOfTarget = directionFactory->UP;
            } else if (yDistance < -self->MIN_DISTANCE) {
                self->directionOfTarget = directionFactory->DOWN;
            }
        } else {
            if (xDistance > self->MIN_DISTANCE) {
                self->directionOfTarget = directionFactory->LEFT;
            } else if (xDistance < -self->MIN_DISTANCE) {
                self->directionOfTarget = directionFactory->RIGHT;
            }
        }
        if (!self->initialDropped && self->directionOfTarget != directionFactory->NOT_BORDERED_WITH) {
            [self drop];
        }
        if (self->initialDropped) {
            if (self->directionOfTarget == directionFactory->UP || self->directionOfTarget == directionFactory->DOWN) {
                [self verticalTargeting:x];
            } else if (self->directionOfTarget == directionFactory->LEFT || self->directionOfTarget == directionFactory->RIGHT) {
                [self horizontalTargeting:y];
            } else {
                [self->artificialIntelligenceInterface processAI:allBinaryLayerManager];
            }
        }
}


// throws Exception
- (void) verticalTargeting:(int32_t)x {
        AllBinaryLayer* ownerLayerInterface = [self getOwnerLayerInterface];
        if ([ownerLayerInterface getXP] < x) {
            [self moveRight];
        }
        if ([ownerLayerInterface getXP] > x) {
            [self moveLeft];
        }
        if ([ownerLayerInterface getXP] > x - 3 && [ownerLayerInterface getXP] < x + 3) {
            [self setDive];
        }
}


// throws Exception
- (void) horizontalTargeting:(int32_t)y {
        AllBinaryLayer* ownerLayerInterface = [self getOwnerLayerInterface];
        if ([ownerLayerInterface getYP] < y) {
            [self moveDown];
        }
        if ([ownerLayerInterface getYP] > y) {
            [self moveUp];
        }
        if ([ownerLayerInterface getYP] > y - 3 && [ownerLayerInterface getYP] < y + 3) {
            [self setDive];
        }
}


- (void) setDive {
        self->diveP = true;
        [self->velocityInterface zero];
        [[TrackingEventHandler getInstance] removeListener:self];
}


// throws Exception
- (void) moveRight {
        [self setLastDirection:self->directionFactory->RIGHT];
        [self->directionalInterface setFrameByDirection:self->lastDirection];
        [self->aiVistor visit:self];
}


// throws Exception
- (void) moveLeft {
        [self setLastDirection:self->directionFactory->LEFT];
        [self->directionalInterface setFrameByDirection:self->lastDirection];
        [self->aiVistor visit:self];
}


// throws Exception
- (void) moveDown {
        [self setLastDirection:self->directionFactory->DOWN];
        [self->directionalInterface setFrameByDirection:self->lastDirection];
        [self->aiVistor visit:self];
}


// throws Exception
- (void) moveUp {
        [self setLastDirection:self->directionFactory->UP];
        [self->directionalInterface setFrameByDirection:self->lastDirection];
        [self->aiVistor visit:self];
}


// throws Exception
- (void) dive {
        [self->directionalInterface setFrameByDirection:self->directionOfTarget];
        [self->aiVistor visit:self];
}


// throws Exception
- (void) attack {
        [super processKeyAI:(Canvas_staticInit(), Canvas_KEY_NUM1)];
}


// throws Exception
- (void) drop {
        if ([self->timeDelayHelper isTime:self->gameTickTimeDelayHelper->startTime]) {
            self->initialDropped = true;
            [self->aiVistor visit:self];
        }
}


- (bool) isBeyondTarget {
        if (self->directionOfTarget == self->directionFactory->DOWN) {
            if ([[self getOwnerLayerInterface] getYP] > [self->lastTrackingLayerInterface getYP] + self->MIN_DISTANCE) {
                return true;
            } else {
                return false;
            }
        } else if (self->directionOfTarget == self->directionFactory->UP) {
            if ([[self getOwnerLayerInterface] getYP] < [self->lastTrackingLayerInterface getYP] + self->MIN_DISTANCE) {
                return true;
            } else {
                return false;
            }
        } else if (self->directionOfTarget == self->directionFactory->RIGHT) {
            if ([[self getOwnerLayerInterface] getXP] > [self->lastTrackingLayerInterface getXP] + self->MIN_DISTANCE) {
                return true;
            } else {
                return false;
            }
        } else if (self->directionOfTarget == self->directionFactory->LEFT) {
            if ([[self getOwnerLayerInterface] getXP] < [self->lastTrackingLayerInterface getXP] + self->MIN_DISTANCE) {
                return true;
            } else {
                return false;
            }
        } else {
            return false;
        }
}


- (void) onEvent:(AllBinaryEventObject*)eventObject {
        [ForcedLogUtil log:[EventStrings getInstance]->PERFORMANCE_MESSAGE :self];
}


- (void) onMovement:(TrackingEvent*)trackingEvent {
        [self->list add:trackingEvent];
}


- (void) onDestroyed:(DestroyedEvent*)destroyedEvent {
        if ([self getOwnerLayerInterface] == [destroyedEvent getLayerInterface]) {
            [[TrackingEventHandler getInstance] removeListener:self];
            [[DestroyedEventHandler getInstance] removeListener:self];
        }
}


- (void) setLastDirection:(Direction*)lastDirection {
        self->lastDirection = lastDirection;
        int32_t value = [[self getLastDirection] getValue];
        if (value < 4) {
            [super setLastKey:self->directionToKeyMap[value]];
        }
}


- (void) setLastKey:(int32_t)lastKey {
        [super setLastKey:lastKey];
        if ([self getLastKey] == (Canvas_staticInit(), Canvas_LEFT)) {
            self->lastDirection = [DirectionFactory getInstance]->LEFT;
        } else if ([self getLastKey] == (Canvas_staticInit(), Canvas_DOWN)) {
            self->lastDirection = [DirectionFactory getInstance]->DOWN;
        } else if ([self getLastKey] == (Canvas_staticInit(), Canvas_UP)) {
            self->lastDirection = [DirectionFactory getInstance]->UP;
        } else if ([self getLastKey] == (Canvas_staticInit(), Canvas_RIGHT)) {
            self->lastDirection = [DirectionFactory getInstance]->RIGHT;
        }
}


- (Direction*) getLastDirection {
        return self->lastDirection;
}


- (const char*) toString {
        StringMaker* stringBuffer = [((StringMaker*) [StringMaker alloc]) init];
        [stringBuffer append:[super toString]];
        [stringBuffer append:" LastDirection: "];
        [stringBuffer append:[[StringUtil getInstance] toString:[self getLastDirection]]];
        return [stringBuffer toString];
}

@end

