// Generated Code Do Not Modify
#include "org/allbinary/layer/LayerManagerLoggingBase.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/LayerManager.h"



void LayerManagerLoggingBase_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation LayerManagerLoggingBase

- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
- (void) append:(AllBinaryLayer*)layerInterface {
}


- (void) appendAt:(AllBinaryLayer*)layerInterface :(int32_t)index {
}


- (void) remove:(AllBinaryLayer*)layerInterface {
}


- (void) removeResult:(LayerManager*)layerManager :(AllBinaryLayer*)layerInterface :(bool)result {
}


- (void) clear {
}

@end

