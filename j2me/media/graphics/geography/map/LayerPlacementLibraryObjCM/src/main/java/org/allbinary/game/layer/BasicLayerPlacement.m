// Generated Code Do Not Modify
#include "org/allbinary/game/layer/BasicLayerPlacement.h"
#include "org/allbinary/game/layer/LayerPlacementType.h"



void BasicLayerPlacement_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BasicLayerPlacement

- (void) initFields {
    
    
    
}


- (instancetype) init:(LayerPlacementType*)layerType :(int32_t)width :(int32_t)height {
    self = [super init];
    [self initFields];
        self->layerType = layerType;
        self->width = width;
        self->height = height;
    return self;
}


- (int32_t) getWidth {
        return self->width;
}


- (int32_t) getHeight {
        return self->height;
}


- (LayerPlacementType*) getLayerType {
        return self->layerType;
}


- (void) setLayerType:(LayerPlacementType*)layerType {
        self->layerType = layerType;
}

@end

