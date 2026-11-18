// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/scroller/PacePatrolAI.h"
#include "javax/microedition/lcdui/Canvas.h"
#include "org/allbinary/direction/Direction.h"
#include "org/allbinary/direction/DirectionCompositeInterface.h"
#include "org/allbinary/direction/DirectionFactory.h"
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/game/tracking/TrackingEvent.h"
#include "org/allbinary/game/tracking/TrackingEventHandler.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/layer/LayerInterface.h"
#include "org/allbinary/logic/communication/log/ForcedLogUtil.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventStrings.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/game/ag/ai/scroller/BasePatrolAI.h"



void PacePatrolAI_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation PacePatrolAI

- (void) initFields {
    
    self->firingDistance = 0;
    self->isFollowLimitedByTerrain = false;
}


- (instancetype) init:(ABHashtable*)hashtable :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput {
        self = [super init:hashtable :ownerLayerInterface :gameInput];
        [self initFields];
        [[TrackingEventHandler getInstance] addListenerInterface:self];
        self->trackingList = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
    return self;
}


// throws Exception
- (void) processAI:(AllBinaryLayerManager*)allBinaryLayerManager {
        [self update];
        Direction* direction = [self setFiringDirectionForTargetIfInRange];
        DirectionFactory* directionFactory = [DirectionFactory getInstance];
        if (direction == directionFactory->LEFT) {
            if (self->lastKeyDirection != self->keyDirection || !self->isFollowLimitedByTerrain) {
                [super processKeyAI:(Canvas_staticInit(), Canvas_LEFT)];
            }
            self->keyDirection = (Canvas_staticInit(), Canvas_LEFT);
            self->lastKeyDirection = self->keyDirection;
            self->xTotalDistance = 0;
            [super processKeyAI:(Canvas_staticInit(), Canvas_KEY_NUM1)];
        } else if (direction == directionFactory->RIGHT) {
            if (self->lastKeyDirection != self->keyDirection || !self->isFollowLimitedByTerrain) {
                [super processKeyAI:(Canvas_staticInit(), Canvas_RIGHT)];
            }
            self->keyDirection = (Canvas_staticInit(), Canvas_RIGHT);
            self->lastKeyDirection = self->keyDirection;
            self->xTotalDistance = 0;
            [super processKeyAI:(Canvas_staticInit(), Canvas_KEY_NUM1)];
        } else {
            [super processKeyAI:self->keyDirection];
        }
}


- (Direction*) setFiringDirectionForTargetIfInRange {
        DirectionFactory* directionFactory = [DirectionFactory getInstance];
        AllBinaryLayer* ownerLayerInterface = [self getOwnerLayerInterface];
        Direction* direction = directionFactory->NOT_BORDERED_WITH;
        TrackingEvent* lastTrackingEvent = nullptr;
        LayerInterface* lastTrackingLayerInterface = nullptr;
        DirectionCompositeInterface* directionCompositeInterface = nullptr;
        int32_t size = [self->trackingList size];
        for (int32_t index = 0; index < size; index++) {
            lastTrackingEvent = ((TrackingEvent*) [self->trackingList get:0]);
            lastTrackingLayerInterface = [lastTrackingEvent getLayerInterface];
            int32_t x = [lastTrackingLayerInterface getXP];
            int32_t y = [lastTrackingLayerInterface getYP];
            int32_t yDistance = [ownerLayerInterface getYP] - y - [ownerLayerInterface getHeight];
            int32_t xDistance = [ownerLayerInterface getXP] - x - [ownerLayerInterface getWidth];
            int32_t absXDistance = ((xDistance) < 0 ? -(xDistance) : (xDistance));
            int32_t absYDistance = ((yDistance) < 0 ? -(yDistance) : (yDistance));
            if (absYDistance <= 100) {
                if (absXDistance < [self getFiringDistance] / 2) {
                    directionCompositeInterface = ((DirectionCompositeInterface*) [self getOwnerLayerInterface]);
                    if (xDistance < 0 && [directionCompositeInterface getDirection] == directionFactory->RIGHT) {
                        direction = directionFactory->RIGHT;
                    } else if (xDistance > 0 && [directionCompositeInterface getDirection] == directionFactory->LEFT) {
                        direction = directionFactory->LEFT;
                    }
                }
            }
        }
        return direction;
}


- (void) disable {
}


- (void) onEvent:(AllBinaryEventObject*)eventObject {
        [ForcedLogUtil log:[EventStrings getInstance]->PERFORMANCE_MESSAGE :self];
}


- (void) onMovement:(TrackingEvent*)trackingEvent {
        [self->trackingList clear];
        [self->trackingList add:trackingEvent];
}


- (int32_t) getFiringDistance {
        return self->firingDistance;
}


- (void) setFiringDistance:(int32_t)firingDistance {
        self->firingDistance = firingDistance;
}

@end

