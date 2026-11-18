// Generated Code Do Not Modify
#include "org/allbinary/layer/event/LayerManagerEventListener.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/layer/event/LayerManagerEventListenerInterface.h"
#include "org/allbinary/layer/event/LayerManagerEvent.h"



void LayerManagerEventListener_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation LayerManagerEventListener

- (instancetype) init {
    self = [super init];
    return self;
}


- (void) onEvent:(AllBinaryEventObject*)eventObject {
}


// throws Exception
- (void) onCreateLayerManagerEvent:(LayerManagerEvent*)layerManagerEvent {
}


// throws Exception
- (void) onDeleteLayerManagerEvent:(LayerManagerEvent*)layerManagerEvent {
}

@end

