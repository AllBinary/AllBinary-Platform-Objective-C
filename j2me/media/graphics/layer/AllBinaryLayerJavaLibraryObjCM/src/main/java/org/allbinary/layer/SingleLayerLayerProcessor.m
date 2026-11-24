// Generated Code Do Not Modify
#include "org/allbinary/layer/SingleLayerLayerProcessor.h"
#include "org/allbinary/layer/LayerProcessor.h"
#include "org/allbinary/layer/SingleLayerLayerManager.h"
#include "org/allbinary/layer/LayerManager.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"



void SingleLayerLayerProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation SingleLayerLayerProcessor


- (instancetype) init {
        self = [super init:((SingleLayerLayerManager*) [((SingleLayerLayerManager*) [SingleLayerLayerManager alloc]) init])];
    return self;
}


// throws Exception
- (void) process:(AllBinaryLayerManager*)allBinaryLayerManager {
        LayerManager* layerManager = [self getLayerManager];
        [self processAt:allBinaryLayerManager :((AllBinaryLayer*) [layerManager getLayerAt:0]) :0];
}

@end

