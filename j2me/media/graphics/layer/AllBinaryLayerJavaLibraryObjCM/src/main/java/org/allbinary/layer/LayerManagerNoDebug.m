// Generated Code Do Not Modify
#include "org/allbinary/layer/LayerManagerNoDebug.h"
#include "org/allbinary/layer/LayerManagerLoggingBase.h"


static LayerManagerNoDebug* LayerManagerNoDebug_instance;

void LayerManagerNoDebug_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    LayerManagerNoDebug_instance = [((LayerManagerNoDebug*) [LayerManagerNoDebug alloc]) init];
}

@implementation LayerManagerNoDebug

- (instancetype) init {
    self = [super init];
    return self;
}


+ (LayerManagerNoDebug*) getInstance {
        return (LayerManagerNoDebug_staticInit(), LayerManagerNoDebug_instance);
}

@end

