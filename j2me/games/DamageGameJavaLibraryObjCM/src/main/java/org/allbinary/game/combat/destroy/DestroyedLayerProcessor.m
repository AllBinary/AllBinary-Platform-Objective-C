// Generated Code Do Not Modify
#include "org/allbinary/game/combat/destroy/DestroyedLayerProcessor.h"
#include "org/allbinary/game/combat/destroy/event/DestroyEventCircularStaticPool.h"
#include "org/allbinary/game/combat/destroy/event/DestroyedEvent.h"
#include "org/allbinary/game/combat/destroy/event/DestroyedEventHandler.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/BasicArrayList.h"


static BasicLayerProcessor* DestroyedLayerProcessor_DESTROYED_LAYER_PROCESSOR;

void DestroyedLayerProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    DestroyedLayerProcessor_DESTROYED_LAYER_PROCESSOR = (BasicLayerProcessor_staticInit(), BasicLayerProcessor_NULL_LAYER_PROCESSOR);
}

@implementation DestroyedLayerProcessor


- (instancetype) init {
    self = [super init];
    return self;
}


+ (void) init_ {
        DestroyedLayerProcessor_DESTROYED_LAYER_PROCESSOR = [((DestroyedLayerProcessor*) [DestroyedLayerProcessor alloc]) init];
}


+ (BasicLayerProcessor*) getInstance {
        return (DestroyedLayerProcessor_staticInit(), DestroyedLayerProcessor_DESTROYED_LAYER_PROCESSOR);
}


// throws Exception
- (void) process:(AllBinaryLayerManager*)allBinaryLayerManager {
        BasicArrayList* list = [self getList];
        int32_t size = [list size];
        DestroyedEventHandler* destroyedEventHandler = [DestroyedEventHandler getInstance];
        DestroyEventCircularStaticPool* destroyEventCircularStaticPool = [DestroyEventCircularStaticPool getInstance];
        DestroyedEvent* destroyedEvent = nullptr;
        AllBinaryLayer* layerInterface = nullptr;
        for (int32_t index = 0; index < size; index++) {
            id layerInterfaceCanBeNull = list->objectArray[index];
            if (layerInterfaceCanBeNull != nil) {
                layerInterface = ((AllBinaryLayer*) layerInterfaceCanBeNull);
                [allBinaryLayerManager remove:layerInterface];
                destroyedEvent = [destroyEventCircularStaticPool getInstanceForLayer:layerInterface];
                [destroyedEventHandler fireEvent:destroyedEvent];
            } else {
                CommonStrings* commonStrings = [CommonStrings getInstance];
            }
        }
        [list clear];
}

@end

