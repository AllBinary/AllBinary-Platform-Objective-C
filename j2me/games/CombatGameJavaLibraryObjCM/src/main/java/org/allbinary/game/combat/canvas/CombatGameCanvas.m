// Generated Code Do Not Modify
#include "org/allbinary/game/combat/canvas/CombatGameCanvas.h"
#include "javax/microedition/lcdui/CommandListener.h"
#include "org/allbinary/game/combat/destroy/DestroyedLayerProcessor.h"
#include "org/allbinary/game/combat/destroy/event/DestroyEventCircularStaticPool.h"
#include "org/allbinary/game/combat/destroy/event/DestroyedEventHandler.h"
#include "org/allbinary/game/configuration/feature/Features.h"
#include "org/allbinary/game/configuration/feature/GameFeatureFactory.h"
#include "org/allbinary/game/init/BasicBuildGameInitializerFactory.h"
#include "org/allbinary/game/layer/AllBinaryGameLayerManager.h"
#include "org/allbinary/game/layer/drop/DropLayerProcessor.h"
#include "org/allbinary/game/layer/identification/GroupLayerManagerListener.h"
#include "org/allbinary/game/score/HighScoresFactoryInterface.h"
#include "org/allbinary/graphics/canvas/transition/progress/ProgressCanvasFactory.h"
#include "org/allbinary/layer/BasicLayerProcessor.h"
#include "org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.h"
#if __has_include("org/allbinary/game/combat/destroy/event/DestroyEventCircularStaticPool.h")
#include "org/allbinary/game/combat/destroy/event/DestroyEventCircularStaticPool.h"
#endif
#if __has_include("org/allbinary/game/combat/canvas/ProgressCanvas.h")
#include "org/allbinary/game/combat/canvas/ProgressCanvas.h"
#endif
#if __has_include("javax/microedition/lcdui/ProgressCanvas.h")
#include "javax/microedition/lcdui/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/game/combat/destroy/ProgressCanvas.h")
#include "org/allbinary/game/combat/destroy/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/game/combat/destroy/event/ProgressCanvas.h")
#include "org/allbinary/game/combat/destroy/event/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/game/combat/destroy/event/ProgressCanvas.h")
#include "org/allbinary/game/combat/destroy/event/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/ProgressCanvas.h")
#include "org/allbinary/game/configuration/feature/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/ProgressCanvas.h")
#include "org/allbinary/game/configuration/feature/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/ProgressCanvas.h")
#include "org/allbinary/game/displayable/canvas/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/game/init/ProgressCanvas.h")
#include "org/allbinary/game/init/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/game/layer/ProgressCanvas.h")
#include "org/allbinary/game/layer/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/game/layer/drop/ProgressCanvas.h")
#include "org/allbinary/game/layer/drop/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/game/layer/identification/ProgressCanvas.h")
#include "org/allbinary/game/layer/identification/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/game/score/ProgressCanvas.h")
#include "org/allbinary/game/score/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.h")
#include "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/layer/ProgressCanvas.h")
#include "org/allbinary/layer/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/ProgressCanvas.h")
#include "org/allbinary/logic/system/security/licensing/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/game/combat/canvas/ProgressCanvas.h")
#include "org/allbinary/game/combat/canvas/ProgressCanvas.h"
#endif
#if __has_include("javax/microedition/lcdui/ProgressCanvas.h")
#include "javax/microedition/lcdui/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/game/combat/destroy/ProgressCanvas.h")
#include "org/allbinary/game/combat/destroy/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/game/combat/destroy/event/ProgressCanvas.h")
#include "org/allbinary/game/combat/destroy/event/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/game/combat/destroy/event/ProgressCanvas.h")
#include "org/allbinary/game/combat/destroy/event/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/ProgressCanvas.h")
#include "org/allbinary/game/configuration/feature/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/game/configuration/feature/ProgressCanvas.h")
#include "org/allbinary/game/configuration/feature/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/game/displayable/canvas/ProgressCanvas.h")
#include "org/allbinary/game/displayable/canvas/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/game/init/ProgressCanvas.h")
#include "org/allbinary/game/init/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/game/layer/ProgressCanvas.h")
#include "org/allbinary/game/layer/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/game/layer/drop/ProgressCanvas.h")
#include "org/allbinary/game/layer/drop/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/game/layer/identification/ProgressCanvas.h")
#include "org/allbinary/game/layer/identification/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/game/score/ProgressCanvas.h")
#include "org/allbinary/game/score/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.h")
#include "org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/layer/ProgressCanvas.h")
#include "org/allbinary/layer/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/logic/system/security/licensing/ProgressCanvas.h")
#include "org/allbinary/logic/system/security/licensing/ProgressCanvas.h"
#endif
#if __has_include("org/allbinary/game/layer/identification/GroupLayerManagerListener.h")
#include "org/allbinary/game/layer/identification/GroupLayerManagerListener.h"
#endif
#if __has_include("org/allbinary/game/layer/identification/GroupLayerManagerListener.h")
#include "org/allbinary/game/layer/identification/GroupLayerManagerListener.h"
#endif
#if __has_include("org/allbinary/game/combat/destroy/event/DestroyedEventHandler.h")
#include "org/allbinary/game/combat/destroy/event/DestroyedEventHandler.h"
#endif


BasicLayerProcessor** CombatGameCanvas_basicLayerProcessor;

void CombatGameCanvas_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    CombatGameCanvas_basicLayerProcessor = ((BasicLayerProcessor**) java_array_new(sizeof(BasicLayerProcessor*), 0));
}

@implementation CombatGameCanvas


- (instancetype) init:(CommandListener*)cmdListener :(AllBinaryGameLayerManager*)gameLayerManager :(HighScoresFactoryInterface*)highScoresFactoryInterface :(BasicBuildGameInitializerFactory*)gameInitializationInterfaceFactoryInterface :(bool)buffered {
        self = [super init:cmdListener :gameLayerManager :highScoresFactoryInterface :gameInitializationInterfaceFactoryInterface :buffered];
    return self;
}


- (void) CombatGameCanvas_init {
        [[DestroyEventCircularStaticPool getInstance] initMethod:self];
        [[ProgressCanvasFactory getInstance] addNormalPortion:50 :"Destroy Events"];
}


// throws Exception
- (void) initApp:(AbeClientInformationInterface*)abeClientInformation {
        [self CombatGameCanvas_init];
        [super initApp:abeClientInformation];
}


- (void) initConfigurablePortion:(int32_t)portion {
        [DestroyedLayerProcessor initMethod];
        [[ProgressCanvasFactory getInstance] addNormalPortion:portion :"Basic Processors"];
        Features* features = [Features getInstance];
        GameFeatureFactory* gameFeatureFactory = [GameFeatureFactory getInstance];
        if ([features isFeature:gameFeatureFactory->DROPPED_ITEMS] && [features isFeature:gameFeatureFactory->DROPPED_ITEMS_FROM_DEATH]) {
            CombatGameCanvas_basicLayerProcessor = ((BasicLayerProcessor**) java_array_new(sizeof(BasicLayerProcessor*), 2));
            (CombatGameCanvas_staticInit(), CombatGameCanvas_basicLayerProcessor)[0] = [DestroyedLayerProcessor getInstance];
            (CombatGameCanvas_staticInit(), CombatGameCanvas_basicLayerProcessor)[1] = [DropLayerProcessor getInstance];
        } else {
            CombatGameCanvas_basicLayerProcessor = ((BasicLayerProcessor**) java_array_new(sizeof(BasicLayerProcessor*), 1));
            (CombatGameCanvas_staticInit(), CombatGameCanvas_basicLayerProcessor)[0] = [DestroyedLayerProcessor getInstance];
        }
}


// throws Exception
- (void) processPlayingGame {
        [super processPlayingGame];
        for (int32_t index = java_array_length((CombatGameCanvas_staticInit(), CombatGameCanvas_basicLayerProcessor)); --index >= 0; ) {
            [(CombatGameCanvas_staticInit(), CombatGameCanvas_basicLayerProcessor)[index] process:self->gameLayerManager];
        }
}


// throws Exception
- (void) cleanupGame {
        [super cleanupGame];
        for (int32_t index = java_array_length((CombatGameCanvas_staticInit(), CombatGameCanvas_basicLayerProcessor)); --index >= 0; ) {
            [[(CombatGameCanvas_staticInit(), CombatGameCanvas_basicLayerProcessor)[index] getList] clear];
        }
        [[GroupLayerManagerListener getInstance] clear];
        [[GroupLayerManagerListener getInstance] log];
        [[DestroyedEventHandler getInstance] removeAllListeners];
        [self cleanupManager];
}


// throws Exception
- (void) cleanupManager {
        [self->gameLayerManager cleanup];
}

@end

