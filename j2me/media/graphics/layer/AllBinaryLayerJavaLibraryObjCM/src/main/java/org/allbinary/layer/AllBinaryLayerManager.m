// Generated Code Do Not Modify
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#include "org/allbinary/layer/event/LayerManagerEvent.h"
#include "org/allbinary/layer/event/LayerManagerEventHandler.h"
#include "org/allbinary/layer/LayerManager.h"
#include "org/allbinary/layer/LayerProcessor.h"
#include "org/allbinary/layer/LayerManagerNoDebug.h"
#include "org/allbinary/layer/AllBinaryLayer.h"



void AllBinaryLayerManager_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AllBinaryLayerManager

- (void) initFields {
    self->layerManagerEventHandler = [LayerManagerEventHandler getInstance];
    self->createLayerManagerEvent = [((LayerManagerEvent*) [LayerManagerEvent alloc]) init:self :self->layerManagerEventHandler->CREATE];
    self->deleteLayerManagerEvent = [((LayerManagerEvent*) [LayerManagerEvent alloc]) init:self :self->layerManagerEventHandler->DELETE];
    self->basicLayerProcessorArray = ((LayerProcessor**) java_array_new(sizeof(LayerProcessor*), 0));
}


- (instancetype) init {
        self = [super init:[LayerManagerNoDebug getInstance]];
        [self initFields];
    return self;
}


- (LayerProcessor**) getLayerProcessorArray {
        return self->basicLayerProcessorArray;
}


- (void) setLayerProcessorArray:(LayerProcessor**)layerProcessorArray {
        self->basicLayerProcessorArray = layerProcessorArray;
}


- (void) log {
        int32_t size = java_array_length(self->basicLayerProcessorArray);
        for (int32_t index = 0; index < size; index++) {
            LayerProcessor* layerProcessorInterface = self->basicLayerProcessorArray[index];
        }
}


// throws Exception
- (void) append:(AllBinaryLayer*)layerInterface {
        if (![self contains:layerInterface]) {
            [self appendProcessors:layerInterface];
            [super append:layerInterface];
        }
}


// throws Exception
- (void) appendAt:(AllBinaryLayer*)layerInterface :(int32_t)index {
        if (![self contains:layerInterface]) {
            [self appendProcessors:layerInterface];
            [super appendAt:layerInterface :index];
        }
}


// throws Exception
- (void) appendProcessors:(AllBinaryLayer*)layerInterface {
        [self->createLayerManagerEvent setLayerInterface:layerInterface];
        [self->layerManagerEventHandler fireEvent:self->createLayerManagerEvent];
        LayerProcessor* layerProcessorInterface = nullptr;
        for (int32_t index = java_array_length(self->basicLayerProcessorArray); --index >= 0; ) {
            layerProcessorInterface = self->basicLayerProcessorArray[index];
            if ([layerProcessorInterface isProcessorLayer:layerInterface]) {
                [[layerProcessorInterface getLayerManager] append:layerInterface];
            }
        }
}


// throws Exception
// synchronized
- (void) remove:(AllBinaryLayer*)layerInterface {
        [self->deleteLayerManagerEvent setLayerInterface:layerInterface];
        [self->layerManagerEventHandler fireDeleteEvent:self->deleteLayerManagerEvent];
        LayerProcessor* layerProcessorInterface = nullptr;
        for (int32_t index = java_array_length(self->basicLayerProcessorArray); --index >= 0; ) {
            layerProcessorInterface = self->basicLayerProcessorArray[index];
            [[layerProcessorInterface getLayerManager] remove:layerInterface];
        }
        [super remove:layerInterface];
}


// throws Exception
- (void) process {
        LayerProcessor* layerProcessorInterface = nullptr;
        int32_t size = java_array_length(self->basicLayerProcessorArray);
        for (int32_t index = 0; index < size; index++) {
            layerProcessorInterface = self->basicLayerProcessorArray[index];
            [layerProcessorInterface process:self];
        }
}


// throws Exception
- (void) cleanup {
        LayerProcessor* layerProcessorInterface = nullptr;
        int32_t size = java_array_length(self->basicLayerProcessorArray);
        for (int32_t index = 0; index < size; index++) {
            layerProcessorInterface = self->basicLayerProcessorArray[index];
            [[layerProcessorInterface getLayerManager] cleanup];
        }
        [super cleanup];
}

@end

