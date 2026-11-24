// Generated Code Do Not Modify
#include "org/allbinary/layer/event/LayerManagerEvent.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/LayerManager.h"
#include "org/allbinary/logic/string/StringMaker.h"
#if __has_include("org/allbinary/layer/AllBinaryLayer.h")
#include "org/allbinary/layer/AllBinaryLayer.h"
#endif



void LayerManagerEvent_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation LayerManagerEvent

- (void) initFields {
    self->layerInterface = (AllBinaryLayer_staticInit(), AllBinaryLayer_NULL_ALLBINARY_LAYER);
    
}


- (instancetype) init:(LayerManager*)layerManager :(const char*)crud {
        self = [super init:layerManager];
        [self initFields];
        self->crud = crud;
    return self;
}


- (AllBinaryLayer*) getLayerInterface {
        return self->layerInterface;
}


- (void) setLayerInterface:(AllBinaryLayer*)layerInterface {
        self->layerInterface = layerInterface;
}


- (const char*) toString {
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        [stringBuffer append:"LayerManagerEvent: \n"];
        [stringBuffer append:"LayerInterface: "];
        [stringBuffer append:[[self getLayerInterface] toString]];
        [stringBuffer append:"\nCRUD: "];
        [stringBuffer append:self->crud];
        return [stringBuffer toString];
}

@end

