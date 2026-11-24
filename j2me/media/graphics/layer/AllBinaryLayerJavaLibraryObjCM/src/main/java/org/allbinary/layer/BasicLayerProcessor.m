// Generated Code Do Not Modify
#include "org/allbinary/layer/BasicLayerProcessor.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/AllBinaryLayerManager.h"
#if __has_include("org/allbinary/string/CommonStrings.h")
#include "org/allbinary/string/CommonStrings.h"
#endif


BasicLayerProcessor* BasicLayerProcessor_NULL_LAYER_PROCESSOR;

void BasicLayerProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    BasicLayerProcessor_NULL_LAYER_PROCESSOR = ((BasicLayerProcessor*) [((BasicLayerProcessor*) [BasicLayerProcessor alloc]) init]);
}

@implementation BasicLayerProcessor

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->list = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) add:(AllBinaryLayer*)layerInterface {
        if (![self->list contains:layerInterface]) {
            [self->list add:layerInterface];
        }
}


// throws Exception
- (void) process:(AllBinaryLayerManager*)allBinaryLayerManager {
        java_throw(java_exception_new("Exception", [CommonStrings getInstance]->NOT_IMPLEMENTED));
}


- (BasicArrayList*) getList {
        return self->list;
}

@end

