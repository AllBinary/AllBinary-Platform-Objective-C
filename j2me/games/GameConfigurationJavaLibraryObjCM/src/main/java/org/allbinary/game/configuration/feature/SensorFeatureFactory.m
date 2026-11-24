// Generated Code Do Not Modify
#include "org/allbinary/game/configuration/feature/SensorFeatureFactory.h"
#include "org/allbinary/game/configuration/feature/SensorFeature.h"


static SensorFeatureFactory* SensorFeatureFactory_instance;

void SensorFeatureFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    SensorFeatureFactory_instance = ((SensorFeatureFactory*) [((SensorFeatureFactory*) [SensorFeatureFactory alloc]) init]);
}

@implementation SensorFeatureFactory

- (void) initFields {
    self->NO_ORIENTATION = ((SensorFeature*) [((SensorFeature*) [SensorFeature alloc]) init:"No Orientation"]);
    self->ORIENTATION_SENSORS = ((SensorFeature*) [((SensorFeature*) [SensorFeature alloc]) init:"Orientation Sensors"]);
    self->SIMULATED_ORIENTATION_SENSORS = ((SensorFeature*) [((SensorFeature*) [SensorFeature alloc]) init:"Simulated Orientation Sensors"]);
    self->YAW = ((SensorFeature*) [((SensorFeature*) [SensorFeature alloc]) init:"Yaw"]);
    self->YAW_MINUS_RIGHT_PLUS_LEFT = ((SensorFeature*) [((SensorFeature*) [SensorFeature alloc]) init:"Yaw -Right +Left"]);
    self->YAW_MINUS_LEFT_PLUS_RIGHT = ((SensorFeature*) [((SensorFeature*) [SensorFeature alloc]) init:"Yaw -Left +Right "]);
    self->PITCH = ((SensorFeature*) [((SensorFeature*) [SensorFeature alloc]) init:"Pitch"]);
    self->ROLL = ((SensorFeature*) [((SensorFeature*) [SensorFeature alloc]) init:"Roll"]);
}


+ (SensorFeatureFactory*) getInstance {
        return (SensorFeatureFactory_staticInit(), SensorFeatureFactory_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}

@end

