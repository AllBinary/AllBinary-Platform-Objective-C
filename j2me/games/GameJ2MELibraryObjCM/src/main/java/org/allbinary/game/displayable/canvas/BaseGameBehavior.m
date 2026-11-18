// Generated Code Do Not Modify
#include "org/allbinary/game/displayable/canvas/BaseGameBehavior.h"
#include "org/allbinary/business/advertisement/GameAdStateFactory.h"
#include "org/allbinary/game/GameAdState.h"
#include "org/allbinary/game/configuration/feature/Features.h"
#include "org/allbinary/graphics/opengles/CurrentDisplayableFactory.h"
#include "org/allbinary/graphics/opengles/OpenGLFeatureFactory.h"
#include "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.h"
#include "org/allbinary/game/displayable/canvas/DemoGameBehavior.h"
#include "org/allbinary/game/displayable/canvas/AllBinaryGameCanvas.h"


static BaseGameBehavior* BaseGameBehavior_instanceC;

void BaseGameBehavior_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    BaseGameBehavior_instanceC = [((BaseGameBehavior*) [BaseGameBehavior alloc]) init];
}

@implementation BaseGameBehavior

- (instancetype) init {
    self = [super init];
    return self;
}


+ (DemoGameBehavior*) getInstance {
        return (BaseGameBehavior_staticInit(), BaseGameBehavior_instanceC);
}


// throws Exception
- (void) init_ {
        GameAdState* gameAdState = [[GameAdStateFactory getInstance] getCurrentInstance];
        [gameAdState playingAdState];
}


- (void) pause:(AllBinaryGameCanvas*)allBinaryGameCanvas {
        Features* features = [Features getInstance];
        if ([features isDefault:[OpenGLFeatureFactory getInstance]->OPENGL_AS_GAME_THREAD]) {
            CurrentDisplayableFactory* currentDisplayableFactory = [CurrentDisplayableFactory getInstance];
            [currentDisplayableFactory setRunnable:allBinaryGameCanvas->gamePauseRunnable];
        }
}


- (void) unPause:(AllBinaryGameCanvas*)allBinaryGameCanvas {
        if ([[Features getInstance] isDefault:[OpenGLFeatureFactory getInstance]->OPENGL_AS_GAME_THREAD]) {
            CurrentDisplayableFactory* currentDisplayableFactory = [CurrentDisplayableFactory getInstance];
            [currentDisplayableFactory setRunnable:allBinaryGameCanvas->gameRunnable];
            [currentDisplayableFactory setDisplayable:allBinaryGameCanvas];
        }
}


// throws Exception
- (void) updateTouch:(AllBinaryGameCanvas*)allBinaryGameCanvas {
        [allBinaryGameCanvas updateTouch2];
}


// throws Exception
- (void) updateScreenButtonPaintable:(AllBinaryGameCanvas*)allBinaryGameCanvas {
        [allBinaryGameCanvas updateScreenButtonPaintable2];
}


// throws Exception
- (void) setGameState:(AllBinaryGameCanvas*)allBinaryGameCanvas {
        [allBinaryGameCanvas updateGameState];
}


- (void) removeAllGameKeyInputListeners:(AllBinaryGameCanvas*)allBinaryGameCanvas {
        [allBinaryGameCanvas removeAllGameKeyInputListeners2];
}


// throws Exception
- (void) updateEndGameProcessor:(AllBinaryGameCanvas*)allBinaryGameCanvas {
        [allBinaryGameCanvas updateEndGameProcessor2];
}


// throws Exception
- (void) buildGame:(AllBinaryGameCanvas*)allBinaryGameCanvas {
        [allBinaryGameCanvas buildGame2];
}


// throws Exception
- (void) run:(AllBinaryGameCanvas*)allBinaryGameCanvas {
        [allBinaryGameCanvas run2];
}


// throws Exception
- (void) setHighScore:(AbeClientInformationInterface*)abeClientInformation :(AllBinaryGameCanvas*)allBinaryGameCanvas :(const char*)name :(int64_t)score :(bool)autoSubmit :(bool)isLast {
        [allBinaryGameCanvas setHighScore2:abeClientInformation :name :score :autoSubmit :isLast];
}

@end

