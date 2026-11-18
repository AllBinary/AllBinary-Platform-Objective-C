// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/TopUBoundBounceAIFactory.h"
#include "org/allbinary/ai/ArtificialIntelligenceInterface.h"
#include "org/allbinary/bounds/TopULayerBounds.h"
#include "org/allbinary/game/input/GameInput.h"
#include "org/allbinary/game/physics/velocity/VelocityInterface.h"
#include "org/allbinary/game/physics/velocity/VelocityInterfaceCompositeInterface.h"
#include "org/allbinary/graphics/GPoint.h"
#include "org/allbinary/graphics/PointFactory.h"
#include "org/allbinary/graphics/Rectangle.h"
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/game/ag/ai/BoundBounceAI.h"
#include "org/allbinary/game/ag/ai/ReverseVelocityBoundsVisitor.h"



void TopUBoundBounceAIFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation TopUBoundBounceAIFactory

- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
- (ArtificialIntelligenceInterface*) getInstance:(ABHashtable*)hashtable :(AllBinaryLayer*)ownerLayerInterface :(GameInput*)gameInput {
        VelocityInterfaceCompositeInterface* velocityInterfaceCompositeInterface = ((VelocityInterfaceCompositeInterface*) ownerLayerInterface);
        VelocityInterface* velocityInterface = ((VelocityInterface*) [velocityInterfaceCompositeInterface getVelocityProperties]);
        int32_t maxDistancePerTick = ([velocityInterface getMaxForwardVelocity] >> [[velocityInterface getVelocityXBasicDecimalP] getScaledFactor]);
        int32_t halfWidth = [ownerLayerInterface getWidth] * 2 + maxDistancePerTick + 1;
        int32_t halfHeight = [ownerLayerInterface getHeight] * 2 + maxDistancePerTick + 1;
        GPoint* point = [[PointFactory getInstance] createXY:halfWidth :halfHeight + 60];
        DisplayInfoSingleton* displayInfo = [DisplayInfoSingleton getInstance];
        Rectangle* rectangle = [((Rectangle*) [Rectangle alloc]) init:point :([displayInfo getLastWidth] - halfWidth - [point getX]) :([displayInfo getLastHeight] - halfHeight - [point getY])];
        return [((BoundBounceAI*) [BoundBounceAI alloc]) init:ownerLayerInterface :gameInput :[((TopULayerBounds*) [TopULayerBounds alloc]) init:rectangle] :[((ReverseVelocityBoundsVisitor*) [ReverseVelocityBoundsVisitor alloc]) init:ownerLayerInterface]];
}

@end

