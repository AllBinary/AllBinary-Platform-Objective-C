// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/scroller/TerrainPatrolAI.h"
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/game/terrain/BasicTerrainInfo.h"
#include "org/allbinary/game/terrain/TerrainEvent.h"
#include "org/allbinary/game/terrain/TerrainEventCircularStaticPool.h"
#include "org/allbinary/game/terrain/TerrainEventHandler.h"
#include "org/allbinary/game/terrain/TerrainEventListener.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/math/Angle.h"
#include "org/allbinary/math/AngleFactory.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/game/ag/ai/scroller/PacePatrolAI.h"



void TerrainPatrolAI_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation TerrainPatrolAI

- (void) initFields {
    self->terrainEventListener = [((TerrainEventListener*) [TerrainEventListener alloc]) init];
    self->DOWN = [AngleFactory getInstance]->DOWN;
    self->CLIFF = [((BasicTerrainInfo*) [BasicTerrainInfo alloc]) init:self->DOWN];
}


- (instancetype) init:(ABHashtable*)hashtable :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput {
        self = [super init:hashtable :ownerLayerInterface :gameInput];
        [self initFields];
        [[TerrainEventHandler getInstance:ownerLayerInterface] addListener:self->terrainEventListener];
        [self->terrainEventListener onTerrainEvent:[[TerrainEventCircularStaticPool getInstance] getNext:self->CLIFF]];
    return self;
}


- (void) update {
        [super update];
        [self changeDirectionIfCliffReached];
}


- (void) changeDirectionIfCliffReached {
        BasicArrayList* list = [self->terrainEventListener getList];
        int32_t size = [list size];
        for (int32_t index = 0; index < size; index++) {
            TerrainEvent* terrainEvent = ((TerrainEvent*) [list removeAt:index]);
            BasicTerrainInfo* basicTerrainInfo = [terrainEvent getBasicTerrainInfo];
            Angle* angle = [basicTerrainInfo getAngle];
            if (angle == self->DOWN) {
                [self nextDirection];
                if (!self->isFollowLimitedByTerrain) {
                    [self->logUtil putF:"Following Limited" :self :"onTerrainEvent"];
                    self->isFollowLimitedByTerrain = true;
                }
            }
        }
}

@end

