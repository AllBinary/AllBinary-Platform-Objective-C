// Generated Code Do Not Modify
#include "org/allbinary/game/tracking/TrackingEvent.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/game/tracking/TrackingEventHandler.h"



void TrackingEvent_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation TrackingEvent

- (void) initFields {
    self->layerInterface = (AllBinaryLayer_staticInit(), AllBinaryLayer_NULL_ALLBINARY_LAYER);
}


- (instancetype) init:(id)allBinaryLayerInterface {
        self = [super init:allBinaryLayerInterface];
        [self initFields];
        if (allBinaryLayerInterface != [TrackingEventHandler getInstance]) {
            [self setLayerInterface:((AllBinaryLayer*) allBinaryLayerInterface)];
        }
    return self;
}


- (void) initMethod:(id)anyType {
        [self setSource:anyType];
}


- (AllBinaryLayer*) getLayerInterface {
        return self->layerInterface;
}


- (void) setLayerInterface:(AllBinaryLayer*)layerInterface {
        self->layerInterface = layerInterface;
}


- (void) setLayerInterfaceForCircularStaticPool:(AllBinaryLayer*)layerInterface {
        self->layerInterface = layerInterface;
}


- (const char*) toString {
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        [stringBuffer append:"TrackingEvent: \n"];
        [stringBuffer append:"LayerInterface: "];
        [stringBuffer append:[self->layerInterface toString]];
        return [stringBuffer toString];
}

@end

