// Generated Code Do Not Modify
#include "org/allbinary/math/LayerDistanceUtil.h"
#include "org/allbinary/graphics/GPoint.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/logic/math/MathUtil.h"


static LayerDistanceUtil* LayerDistanceUtil_instance;

void LayerDistanceUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    LayerDistanceUtil_instance = ((LayerDistanceUtil*) [((LayerDistanceUtil*) [LayerDistanceUtil alloc]) init]);
}

@implementation LayerDistanceUtil

- (void) initFields {
    self->mathUtil = [MathUtil getInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (LayerDistanceUtil*) getInstance {
        return (LayerDistanceUtil_staticInit(), LayerDistanceUtil_instance);
}


- (int32_t) getDistance:(AllBinaryLayer*)layerInterface :(AllBinaryLayer*)layerInterface2 {
        int32_t dx = ([layerInterface getXP] + [layerInterface getHalfWidth]) - ([layerInterface2 getXP] + [layerInterface2 getHalfWidth]);
        int32_t dy = ([layerInterface getYP] + [layerInterface getHalfHeight]) - ([layerInterface2 getYP] + [layerInterface2 getHalfHeight]);
        return [self->mathUtil sqrt:(dx * dx) + (dy * dy)];
}


- (int32_t) getDistance3D:(AllBinaryLayer*)layerInterface :(AllBinaryLayer*)layerInterface2 {
        int32_t dx = ([layerInterface getXP] + [layerInterface getHalfWidth]) - ([layerInterface2 getXP] + [layerInterface2 getHalfWidth]);
        int32_t dy = ([layerInterface getYP] + [layerInterface getHalfHeight]) - ([layerInterface2 getYP] + [layerInterface2 getHalfHeight]);
        int32_t dz = ([layerInterface getZP] + [layerInterface getHalfDepth]) - ([layerInterface2 getZP] + [layerInterface2 getHalfDepth]);
        return [self->mathUtil sqrt:(dx * dx) + (dy * dy) + (dz * dz)];
}


- (int32_t) getDistanceAt:(AllBinaryLayer*)layerInterface :(GPoint*)point {
        int32_t dx = [layerInterface getXP] - [point getX];
        int32_t dy = [layerInterface getYP] - [point getY];
        return [self->mathUtil sqrt:(dx * dx) + (dy * dy)];
}

@end

