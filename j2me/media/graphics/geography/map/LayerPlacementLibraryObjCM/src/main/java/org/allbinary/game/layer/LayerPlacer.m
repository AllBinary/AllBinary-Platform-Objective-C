// Generated Code Do Not Modify
#include "org/allbinary/game/layer/LayerPlacer.h"
#include "org/allbinary/graphics/GPoint.h"
#include "org/allbinary/graphics/PointFactory.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/layer/LayerInterfaceFactory.h"
#include "org/allbinary/layer/LayerInterfaceVisitor.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/EnumerationUtil.h"
#include "org/allbinary/game/layer/LayerPlacementInterface.h"
#include "org/allbinary/game/layer/LayerPlacementType.h"
#include "org/allbinary/game/layer/LayerPlacementTypeFactory.h"



void LayerPlacer_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation LayerPlacer

- (void) initFields {
    self->enumerationUtil = [EnumerationUtil getInstance];
    
    
}


- (instancetype) init:(LayerInterfaceVisitor*)layerInterfaceVisitor :(GPoint*)dimension {
    self = [super init];
    [self initFields];
        self->layerInterfaceVisitor = layerInterfaceVisitor;
        self->dimension = dimension;
    return self;
}


// throws Exception
- (void) processList:(BasicArrayList*)list {
        int32_t size = [list size];
        LayerPlacementInterface* layerPlacementInterface = nullptr;
        for (int32_t index = 0; index < size; index++) {
            layerPlacementInterface = ((LayerPlacementInterface*) list->objectArray[index]);
            [self process:layerPlacementInterface];
        }
}


// throws Exception
- (void) process:(LayerPlacementInterface*)layerPlacementInterface {
        GPoint* relativePoint = [self getPoint:layerPlacementInterface];
        LayerInterfaceFactory* layerInterfaceFactory = [LayerInterfaceFactory getInstance];
        ABHashtable* hashtable = [((id<LayerPlacementInterface>) layerPlacementInterface) getInstance];
        Enumeration* enumeration = [hashtable keys];
        GPoint* point = nullptr;
        ABHashtable* layerHashtable = nullptr;
        int32_t x = 0;
        int32_t y = 0;
        int32_t z = 0;
        AllBinaryLayer* layerInterface = nullptr;
        while ([self->enumerationUtil hasMoreElements:enumeration]) {
            point = ((GPoint*) [self->enumerationUtil nextElement:enumeration]);
            layerHashtable = ((ABHashtable*) [hashtable get:JAVA_BOX(point)]);
            x = [point getX] + [relativePoint getX];
            y = [point getY] + [relativePoint getY];
            z = [point getZ] + [relativePoint getZ];
            layerInterface = [layerInterfaceFactory getNexInstance:layerHashtable :x :y :z];
            [((id<LayerInterfaceVisitor>) self->layerInterfaceVisitor) visit:layerInterface];
        }
}


// throws Exception
- (GPoint*) getPoint:(LayerPlacementInterface*)layerPlacementInterface {
        PointFactory* pointFactory = [PointFactory getInstance];
        LayerPlacementType* layerPlacementType = [((id<LayerPlacementInterface>) layerPlacementInterface) getLayerType];
        if (layerPlacementType == [LayerPlacementTypeFactory getInstance]->MAP) {
            int32_t width = [((id<LayerPlacementInterface>) layerPlacementInterface) getWidth];
            int32_t height = [((id<LayerPlacementInterface>) layerPlacementInterface) getHeight];
            int32_t x = (([self->dimension getX] - width) / 2);
            int32_t y = (([self->dimension getY] - height) / 2);
            return [pointFactory createXY:x :y];
        } else if (layerPlacementType == [LayerPlacementTypeFactory getInstance]->UP) {
            int32_t width = [((id<LayerPlacementInterface>) layerPlacementInterface) getWidth];
            int32_t height = [((id<LayerPlacementInterface>) layerPlacementInterface) getHeight];
            int32_t x = (([self->dimension getX] - width) / 2);
            int32_t y = -height;
            return [pointFactory createXY:x :y];
        } else {
            java_throw(java_exception_new("Exception", "PlacementType Not Recognized"));
        }
}

@end

