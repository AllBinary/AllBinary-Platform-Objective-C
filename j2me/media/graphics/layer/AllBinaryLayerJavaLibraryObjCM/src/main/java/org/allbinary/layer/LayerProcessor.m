// Generated Code Do Not Modify
#include "org/allbinary/layer/LayerProcessor.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/layer/LayerProcessorInterface.h"
#include "org/allbinary/layer/LayerManager.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/layer/AllBinaryLayer.h"



void LayerProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation LayerProcessor

- (void) initFields {
    self->commonStrings = [CommonStrings getInstance];
    
}


- (instancetype) init:(LayerManager*)layerManager {
    self = [super init];
    [self initFields];
        self->layerManager = layerManager;
    return self;
}


// throws Exception
- (void) processAt:(AllBinaryLayerManager*)allBinaryLayerManager :(AllBinaryLayer*)layerInterface :(int32_t)index {
        java_throw(java_exception_new("Exception", self->commonStrings->NOT_IMPLEMENTED));
}


// throws Exception
- (bool) isProcessorLayer:(AllBinaryLayer*)layerInterface {
        java_throw(java_exception_new("Exception", self->commonStrings->NOT_IMPLEMENTED));
}


- (LayerManager*) getLayerManager {
        return self->layerManager;
}


// throws Exception
- (void) process:(AllBinaryLayerManager*)allBinaryLayerManager {
        LayerManager* layerManager = [self getLayerManager];
        int32_t size = [layerManager getSize];
        for (int32_t index = 0; index < size; index++) {
            [self processAt:allBinaryLayerManager :((AllBinaryLayer*) [layerManager getLayerAt:index]) :index];
        }
}

@end

