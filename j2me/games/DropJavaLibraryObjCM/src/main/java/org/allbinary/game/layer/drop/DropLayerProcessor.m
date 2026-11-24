// Generated Code Do Not Modify
#include "org/allbinary/game/layer/drop/DropLayerProcessor.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/game/layer/drop/DropLayerInterface.h"


static BasicLayerProcessor* DropLayerProcessor_LAYER_PROCESSOR;

void DropLayerProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    DropLayerProcessor_LAYER_PROCESSOR = ((DropLayerProcessor*) [((DropLayerProcessor*) [DropLayerProcessor alloc]) init]);
}

@implementation DropLayerProcessor


- (instancetype) init {
    self = [super init];
    return self;
}


+ (BasicLayerProcessor*) getInstance {
        return (DropLayerProcessor_staticInit(), DropLayerProcessor_LAYER_PROCESSOR);
}


// throws Exception
- (void) process:(AllBinaryLayerManager*)allBinaryLayerManager {
        BasicArrayList* list = [self getList];
        int32_t size = [list size];
        AllBinaryLayer* layerInterface = nullptr;
        DropLayerInterface* dropLayerInterface = nullptr;
        for (int32_t index = 0; index < size; index++) {
            layerInterface = ((AllBinaryLayer*) list->objectArray[index]);
            dropLayerInterface = ((DropLayerInterface*) layerInterface);
            layerInterface = ((AllBinaryLayer*) [((id<DropLayerInterface>) dropLayerInterface) getDroppedLayer]);
            [allBinaryLayerManager append:layerInterface];
        }
        [list clear];
}

@end

