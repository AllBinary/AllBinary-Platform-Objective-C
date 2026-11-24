// Generated Code Do Not Modify
#include "org/allbinary/game/layer/AllBinaryGameLayerManager.h"
#include "org/allbinary/game/GameInfo.h"
#include "org/allbinary/game/input/NullPlayerGameInputComposite.h"
#include "org/allbinary/game/input/PlayerGameInputCompositeInterface.h"
#include "org/allbinary/graphics/ItemColorFactory.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#include "org/allbinary/layer/LayerProcessor.h"
#include "org/allbinary/logic/NullUtil.h"
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#include "org/allbinary/util/BasicArrayList.h"
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/logic/NullUtil.h")
#include "org/allbinary/logic/NullUtil.h"
#endif
#if __has_include("org/allbinary/graphics/color/BasicColorFactory.h")
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#endif
#if __has_include("org/allbinary/graphics/color/BasicColorFactory.h")
#include "org/allbinary/graphics/color/BasicColorFactory.h"
#endif
#if __has_include("org/allbinary/logic/math/SmallIntegerSingletonFactory.h")
#include "org/allbinary/logic/math/SmallIntegerSingletonFactory.h"
#endif
#if __has_include("org/allbinary/graphics/ItemColorFactory.h")
#include "org/allbinary/graphics/ItemColorFactory.h"
#endif
#if __has_include("org/allbinary/graphics/ItemColorFactory.h")
#include "org/allbinary/graphics/ItemColorFactory.h"
#endif


static id AllBinaryGameLayerManager_NULL_ALLBINARY_LAYER_MANAGER;
int32_t AllBinaryGameLayerManager_ID;

void AllBinaryGameLayerManager_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    AllBinaryGameLayerManager_NULL_ALLBINARY_LAYER_MANAGER = [NullUtil getInstance]->NULL_OBJECT;
    AllBinaryGameLayerManager_ID = [[SmallIntegerSingletonFactory getInstance] getAt:22];
}

@implementation AllBinaryGameLayerManager

- (void) initFields {
    
    
    
    self->playerGameInputCompositeInterface = (NullPlayerGameInputComposite_staticInit(), NullPlayerGameInputComposite_NULL_PLAYER_GAME_INPUT_COMPOSITE);
}


+ (AllBinaryGameLayerManager*) getNullInstance {
        if ((AllBinaryGameLayerManager_staticInit(), AllBinaryGameLayerManager_NULL_ALLBINARY_LAYER_MANAGER) == [NullUtil getInstance]->NULL_OBJECT) {
            AllBinaryGameLayerManager_NULL_ALLBINARY_LAYER_MANAGER = ((AllBinaryGameLayerManager*) [((AllBinaryGameLayerManager*) [AllBinaryGameLayerManager alloc]) init:[BasicColorFactory getInstance]->BLACK :[BasicColorFactory getInstance]->WHITE :(GameInfo_staticInit(), GameInfo_NONE)]);
        }
        return ((AllBinaryGameLayerManager*) (AllBinaryGameLayerManager_staticInit(), AllBinaryGameLayerManager_NULL_ALLBINARY_LAYER_MANAGER));
}


- (instancetype) init:(BasicColor*)backgroundBasicColor :(BasicColor*)foregroundBasicColor :(GameInfo*)gameInfo {
    self = [super init];
    [self initFields];
        self->backgroundBasicColor = backgroundBasicColor;
        self->foregroundBasicColor = foregroundBasicColor;
        ItemColorFactory* itemColorFactory = [ItemColorFactory getInstance];
        itemColorFactory->INVERT_PAINT = [self->backgroundBasicColor intValue];
        itemColorFactory->PAINT = [self->foregroundBasicColor intValue];
        self->gameInfo = gameInfo;
    return self;
}


- (AllBinaryLayerManager*) getLayerManager {
        return self;
}


- (void) initMethod {
}


- (BasicColor*) getBackgroundBasicColor {
        return self->backgroundBasicColor;
}


- (void) setBackgroundBasicColor:(BasicColor*)backgroundBasicColor {
        self->backgroundBasicColor = backgroundBasicColor;
        [ItemColorFactory getInstance]->INVERT_PAINT = [self->backgroundBasicColor intValue];
}


- (BasicColor*) getForegroundBasicColor {
        return self->foregroundBasicColor;
}


- (void) setForegroundBasicColor:(BasicColor*)foregroundBasicColor {
        self->foregroundBasicColor = foregroundBasicColor;
        [ItemColorFactory getInstance]->PAINT = [self->foregroundBasicColor intValue];
}


- (GameInfo*) getGameInfo {
        return self->gameInfo;
}


- (void) setGameInfo:(GameInfo*)gameInfo {
        self->gameInfo = gameInfo;
}


- (void) setLayerProcessorList:(BasicArrayList*)list {
        LayerProcessor** layerProcessorInterfaceArray = ((LayerProcessor**) java_array_new(sizeof(LayerProcessor*), [list size]));
        int32_t size = java_array_length(layerProcessorInterfaceArray);
        for (int32_t index = 0; index < size; index++) {
            layerProcessorInterfaceArray[index] = ((LayerProcessor*) list->objectArray[index]);
        }
        [self setLayerProcessorArray:layerProcessorInterfaceArray];
}


- (void) setPlayerGameInputCompositeInterface:(PlayerGameInputCompositeInterface*)playerGameInputCompositeInterface {
        self->playerGameInputCompositeInterface = playerGameInputCompositeInterface;
}


- (PlayerGameInputCompositeInterface*) getPlayerGameInputCompositeInterface {
        return self->playerGameInputCompositeInterface;
}

@end

