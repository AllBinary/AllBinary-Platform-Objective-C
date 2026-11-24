// Generated Code Do Not Modify
#include "org/allbinary/game/init/CommonGameInitialization.h"
#include "javax/microedition/lcdui/CommandListener.h"
#include "org/allbinary/game/resource/ResourceInitialization.h"
#include "org/allbinary/game/resource/ResourceLoadingLevelFactory.h"
#include "org/allbinary/graphics/PointFactory.h"
#include "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.h"
#include "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.h"
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#include "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.h"
#include "org/allbinary/math/AngleFactory.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/game/init/BaseGameInitialization.h"
#if __has_include("org/allbinary/logic/math/SmallIntegerSingletonFactory.h")
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#endif
#if __has_include("org/allbinary/graphics/PointFactory.h")
#include "org/allbinary/graphics/PointFactory.h"
#endif



void CommonGameInitialization_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CommonGameInitialization

- (void) initFields {
    self->commonStrings = [CommonStrings getInstance];
}


- (instancetype) init:(ResourceInitialization**)resourceInitializationArray :(int32_t)portion {
        self = [super init:resourceInitializationArray :portion];
        [self initFields];
    return self;
}


// throws Exception
- (void) initMethod:(AbeClientInformationInterface*)abeClientInformation :(CommandListener*)commandListener :(int32_t)level {
        [super initMethod:abeClientInformation :commandListener :level];
        ResourceLoadingLevelFactory* resourceLoadingLevelFactory = [ResourceLoadingLevelFactory getInstance];
        if (![self isGameInitialized] && level == [resourceLoadingLevelFactory->LOAD_ALL getLevel]) {
            [self setGameInitialized:true];
            ProgressCanvas* progressCanvas = [ProgressCanvasFactory getInstance];
            [[SmallIntegerSingletonFactory getInstance] initMethod];
            [progressCanvas addNormalPortion:50 :"Integers"];
            [[PointFactory getInstance] initMethod];
            [progressCanvas addNormalPortion:50 :"Points"];
            [AngleFactory getInstance];
            [progressCanvas addNormalPortion:50 :"Angles"];
            [self initGame];
            [self->resourceInitializationArray[self->GAME_RESOURCES] initMethod];
        }
        [super resourceInitialization:level];
}


// throws Exception
- (void) initGame {
        java_throw(java_exception_new("Exception", self->commonStrings->NOT_IMPLEMENTED));
}

@end

