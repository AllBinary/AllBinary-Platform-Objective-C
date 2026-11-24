// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/scroller/BasePatrolAI.h"
#include "javax/microedition/lcdui/Canvas.h"
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/game/physics/velocity/BasicVelocityProperties.h"
#include "org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/logic/math/MathUtil.h"
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#include "org/allbinary/util/ABHashtable.h"
#if __has_include("org/allbinary/logic/math/SmallIntegerSingletonFactory.h")
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#endif
#if __has_include("org/allbinary/logic/math/SmallIntegerSingletonFactory.h")
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#endif
#if __has_include("org/allbinary/logic/math/SmallIntegerSingletonFactory.h")
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#endif
#if __has_include("org/allbinary/logic/math/SmallIntegerSingletonFactory.h")
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#endif
#if __has_include("org/allbinary/game/ag/ai/scroller/BasicDecimal.h")
#include "org/allbinary/game/ag/ai/scroller/BasicDecimal.h"
#endif
#if __has_include("javax/microedition/lcdui/BasicDecimal.h")
#include "javax/microedition/lcdui/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/ai/BasicDecimal.h")
#include "org/allbinary/game/ai/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/input/BasicDecimal.h")
#include "org/allbinary/game/input/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/BasicDecimal.h")
#include "org/allbinary/game/physics/velocity/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/game/physics/velocity/BasicDecimal.h")
#include "org/allbinary/game/physics/velocity/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/layer/BasicDecimal.h")
#include "org/allbinary/layer/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/logic/math/BasicDecimal.h")
#include "org/allbinary/logic/math/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/logic/math/BasicDecimal.h")
#include "org/allbinary/logic/math/BasicDecimal.h"
#endif
#if __has_include("org/allbinary/util/BasicDecimal.h")
#include "org/allbinary/util/BasicDecimal.h"
#endif


int32_t BasePatrolAI_MAX_DISTANCE;
int32_t BasePatrolAI_DIRECTION_ARRAY;
int32_t BasePatrolAI_FIRING_DISTANCE;
int32_t BasePatrolAI_SPEED;

void BasePatrolAI_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    BasePatrolAI_MAX_DISTANCE = [[SmallIntegerSingletonFactory getInstance] getAt:2];
    BasePatrolAI_DIRECTION_ARRAY = [[SmallIntegerSingletonFactory getInstance] getAt:3];
    BasePatrolAI_FIRING_DISTANCE = [[SmallIntegerSingletonFactory getInstance] getAt:4];
    BasePatrolAI_SPEED = [[SmallIntegerSingletonFactory getInstance] getAt:5];
}

@implementation BasePatrolAI

- (void) initFields {
    
    
    self->xTotalDistance = 0;
    self->lastKeyDirection = (Canvas_staticInit(), Canvas_RIGHT);
    self->keyDirection = (Canvas_staticInit(), Canvas_RIGHT);
}


- (instancetype) init:(ABHashtable*)hashtable :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput {
        self = [super init:ownerLayerInterface :gameInput];
        [self initFields];
        self->maxDistance = ((int32_t) [hashtable get:JAVA_BOX((BasePatrolAI_staticInit(), BasePatrolAI_MAX_DISTANCE))]);
        self->currentDistance = ((int32_t) (self->maxDistance));
    return self;
}


- (void) update {
        [self updateTotalDistance];
        [self changeDirectionIfReachedPacingAreaMax];
}


- (void) updateTotalDistance {
        VelocityInterfaceCompositeInterface* velocityInterfaceCompositeInterface = ((VelocityInterfaceCompositeInterface*) [self getOwnerLayerInterface]);
        BasicVelocityProperties* velocityProperties = [((id<VelocityInterfaceCompositeInterface>) velocityInterfaceCompositeInterface) getVelocityProperties];
        self->xTotalDistance += [[velocityProperties getVelocityXBasicDecimalP] getScaled];
}


- (void) changeDirectionIfReachedPacingAreaMax {
        MathUtil* mathUtil = [MathUtil getInstance];
        int32_t totalDistance = [mathUtil abs:self->xTotalDistance];
        if (totalDistance > self->currentDistance) {
            [self nextDirection];
        }
}


- (void) nextDirection {
        if (self->lastKeyDirection == (Canvas_staticInit(), Canvas_LEFT)) {
            self->keyDirection = (Canvas_staticInit(), Canvas_RIGHT);
            self->lastKeyDirection = self->keyDirection;
            self->xTotalDistance = 0;
        } else if (self->lastKeyDirection == (Canvas_staticInit(), Canvas_RIGHT)) {
            self->keyDirection = (Canvas_staticInit(), Canvas_LEFT);
            self->lastKeyDirection = self->keyDirection;
            self->xTotalDistance = 0;
        }
}


- (void) disable {
}

@end

