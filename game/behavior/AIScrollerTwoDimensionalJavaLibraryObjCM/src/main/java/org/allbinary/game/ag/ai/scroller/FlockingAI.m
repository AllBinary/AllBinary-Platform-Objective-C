// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/scroller/FlockingAI.h"
#include "javax/microedition/lcdui/Canvas.h"
#include "org/allbinary/game/identification/BasicGroupFactory.h"
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/game/layer/identification/GroupLayerManagerListener.h"
#include "org/allbinary/game/layer/weapon/WeaponLayer.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/logic/math/MathUtil.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/game/ag/ai/scroller/BasePatrolAI.h"



void FlockingAI_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation FlockingAI

- (void) initFields {
    
}


- (instancetype) init:(ABHashtable*)hashtable :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput {
        self = [super init:ownerLayerInterface :gameInput];
        [self initFields];
        int32_t allowedDistance = ((int32_t) [hashtable get:JAVA_BOX((BasePatrolAI_staticInit(), BasePatrolAI_MAX_DISTANCE))]);
        self->allowedDistance = ((int32_t) (allowedDistance));
    return self;
}


// throws Exception
- (void) processAI:(AllBinaryLayerManager*)allBinaryLayerManager {
        int32_t maxDistance = 0;
        AllBinaryLayer* farAllbinaryLayer = (AllBinaryLayer_staticInit(), AllBinaryLayer_NULL_ALLBINARY_LAYER);
        GroupLayerManagerListener* groupLayerManagerListener = [GroupLayerManagerListener getInstance];
        BasicArrayList* list = [groupLayerManagerListener getList:[BasicGroupFactory getInstance]->ENEMY];
        int32_t size = [list size];
        AllBinaryLayer* allBinaryLayer = nullptr;
        AllBinaryLayer* ownerLayerInterface = nullptr;
        for (int32_t index = 0; index < size; index++) {
            allBinaryLayer = ((AllBinaryLayer*) [list get:index]);
            if ([allBinaryLayer getType] != [WeaponLayer getStaticType]) {
                int32_t distance = [self getXYDistance:allBinaryLayer];
                if (distance > maxDistance) {
                    maxDistance = distance;
                    farAllbinaryLayer = allBinaryLayer;
                    if (distance > self->allowedDistance) {
                        break;
                    }
                }
            }
        }
        if (maxDistance > self->allowedDistance) {
            if (farAllbinaryLayer != (AllBinaryLayer_staticInit(), AllBinaryLayer_NULL_ALLBINARY_LAYER)) {
                ownerLayerInterface = [self getOwnerLayerInterface];
                if ([farAllbinaryLayer getXP] < [ownerLayerInterface getXP]) {
                    [self processKeyAI:(Canvas_staticInit(), Canvas_LEFT)];
                } else if ([farAllbinaryLayer getXP] > [ownerLayerInterface getXP]) {
                    [self processKeyAI:(Canvas_staticInit(), Canvas_RIGHT)];
                } else if ([farAllbinaryLayer getYP] > [ownerLayerInterface getYP]) {
                    [self processKeyAI:(Canvas_staticInit(), Canvas_UP)];
                } else if ([farAllbinaryLayer getYP] < [ownerLayerInterface getYP]) {
                    [self processKeyAI:(Canvas_staticInit(), Canvas_DOWN)];
                }
            }
        }
}


- (int32_t) getXYDistance:(AllBinaryLayer*)allBinaryLayer {
        AllBinaryLayer* ownerLayerInterface = [self getOwnerLayerInterface];
        int32_t xTotalDistance = ([allBinaryLayer getXP] + [allBinaryLayer getHalfWidth]) - ([ownerLayerInterface getXP] + [ownerLayerInterface getHalfWidth]);
        int32_t yTotalDistance = ([allBinaryLayer getYP] + [allBinaryLayer getHalfHeight]) - ([ownerLayerInterface getYP] + [ownerLayerInterface getHalfHeight]);
        MathUtil* mathUtil = [MathUtil getInstance];
        int32_t totalDistance = [mathUtil abs:xTotalDistance] + [mathUtil abs:yTotalDistance];
        return totalDistance;
}

@end

