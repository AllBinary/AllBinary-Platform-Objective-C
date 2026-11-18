// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/scroller/HorizontalScreenPatrolAI.h"
#include "javax/microedition/lcdui/Canvas.h"
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/game/layer/AllBinaryGameLayerManager.h"
#include "org/allbinary/game/rand/MyRandomFactory.h"
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#include "org/allbinary/media/audio/PlayerQueue.h"
#include "org/allbinary/media/audio/SecondaryPlayerQueueFactory.h"
#include "org/allbinary/media/audio/Sound.h"
#include "org/allbinary/time/TimeDelayHelper.h"
#include "org/allbinary/util/ABHashtable.h"
#if __has_include("org/allbinary/game/ag/ai/scroller/GameInfo.h")
#include "org/allbinary/game/ag/ai/scroller/GameInfo.h"
#endif
#if __has_include("javax/microedition/lcdui/GameInfo.h")
#include "javax/microedition/lcdui/GameInfo.h"
#endif
#if __has_include("org/allbinary/game/ai/GameInfo.h")
#include "org/allbinary/game/ai/GameInfo.h"
#endif
#if __has_include("org/allbinary/game/input/GameInfo.h")
#include "org/allbinary/game/input/GameInfo.h"
#endif
#if __has_include("org/allbinary/game/layer/GameInfo.h")
#include "org/allbinary/game/layer/GameInfo.h"
#endif
#if __has_include("org/allbinary/game/rand/GameInfo.h")
#include "org/allbinary/game/rand/GameInfo.h"
#endif
#if __has_include("org/allbinary/graphics/displayable/GameInfo.h")
#include "org/allbinary/graphics/displayable/GameInfo.h"
#endif
#if __has_include("org/allbinary/layer/GameInfo.h")
#include "org/allbinary/layer/GameInfo.h"
#endif
#if __has_include("org/allbinary/layer/GameInfo.h")
#include "org/allbinary/layer/GameInfo.h"
#endif
#if __has_include("org/allbinary/logic/math/GameInfo.h")
#include "org/allbinary/logic/math/GameInfo.h"
#endif
#if __has_include("org/allbinary/media/audio/GameInfo.h")
#include "org/allbinary/media/audio/GameInfo.h"
#endif
#if __has_include("org/allbinary/media/audio/GameInfo.h")
#include "org/allbinary/media/audio/GameInfo.h"
#endif
#if __has_include("org/allbinary/media/audio/GameInfo.h")
#include "org/allbinary/media/audio/GameInfo.h"
#endif
#if __has_include("org/allbinary/time/GameInfo.h")
#include "org/allbinary/time/GameInfo.h"
#endif
#if __has_include("org/allbinary/util/GameInfo.h")
#include "org/allbinary/util/GameInfo.h"
#endif


int32_t HorizontalScreenPatrolAI_SOUND;

void HorizontalScreenPatrolAI_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    HorizontalScreenPatrolAI_SOUND = [[SmallIntegerSingletonFactory getInstance] getAt:433];
}

@implementation HorizontalScreenPatrolAI

- (void) initFields {
    self->keyDirection = (Canvas_staticInit(), Canvas_LEFT);
    self->displayInfoSingleton = [DisplayInfoSingleton getInstance];
    self->firingX = [self->displayInfoSingleton getLastHalfWidth];
    self->firedIndex = 0;
    self->MAX_FIRE = 28;
    self->timeDelayHelper = [((TimeDelayHelper*) [TimeDelayHelper alloc]) init:240];
    self->secondaryPlayerQueue = [SecondaryPlayerQueueFactory getInstance];
    
}


- (instancetype) init:(ABHashtable*)hashtable :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput {
        self = [super init:ownerLayerInterface :gameInput];
        [self initFields];
        self->sound = ((Sound*) [hashtable get:JAVA_BOX((HorizontalScreenPatrolAI_staticInit(), HorizontalScreenPatrolAI_SOUND))]);
        if (self->sound == nil) {
            java_throw(java_exception_new("Exception", "No Sound Provided!!"));
        }
    return self;
}


// throws Exception
- (void) processAI:(AllBinaryLayerManager*)allBinaryLayerManager {
        [super processKeyAI:self->keyDirection];
        if ([self->timeDelayHelper isTimeTNT]) {
            AllBinaryLayer* layerInterface = [self getOwnerLayerInterface];
            int32_t currentOwnerLayerX = [layerInterface getXP];
            if (currentOwnerLayerX < -[layerInterface getWidth]) {
                int32_t y = [[MyRandomFactory getInstance] getAbsoluteNextIntAllowZero:50];
                [layerInterface setPosition:[self->displayInfoSingleton getLastWidth] + [layerInterface getWidth] + 50 :y :[layerInterface getZP]];
                self->firedIndex = 0;
                self->firingX = [self->displayInfoSingleton getLastHalfWidth] + [[MyRandomFactory getInstance] getNextInt:[self->displayInfoSingleton getLastHalfWidth]];
                [self->secondaryPlayerQueue add:self->sound];
            }
            if (currentOwnerLayerX < self->firingX && currentOwnerLayerX > -[layerInterface getWidth]) {
                [super processKeyAI:(Canvas_staticInit(), Canvas_KEY_NUM1)];
                AllBinaryGameLayerManager* gameLayerManager = ((AllBinaryGameLayerManager*) allBinaryLayerManager);
                int32_t FIRE = ([[gameLayerManager getGameInfo] getCurrentLevel] + 12) >> 2;
                if (FIRE > self->MAX_FIRE) {
                    FIRE = self->MAX_FIRE;
                }
                if (self->firedIndex > FIRE) {
                    self->firedIndex = 0;
                    self->firingX = (Integer_staticInit(), Integer_MIN_VALUE);
                }
                self->firedIndex++;
            }
        }
}


- (void) nextDirection {
}

@end

