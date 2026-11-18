// Generated Code Do Not Modify
#include "org/allbinary/direction/DirectionUtil.h"
#include "org/allbinary/math/Angle.h"
#include "org/allbinary/math/AngleFactory.h"
#include "org/allbinary/direction/DirectionFactory.h"
#include "org/allbinary/direction/Direction.h"


static DirectionUtil* DirectionUtil_instance;

void DirectionUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    DirectionUtil_instance = [((DirectionUtil*) [DirectionUtil alloc]) init];
}

@implementation DirectionUtil

- (void) initFields {
    self->directionArray = ((Angle**) java_array_new(sizeof(Angle*), 10));
    self->directionArray2 = ((Angle**) java_array_new(sizeof(Angle*), 10));
}


+ (DirectionUtil*) getInstance {
        return (DirectionUtil_staticInit(), DirectionUtil_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
        AngleFactory* angleFactory = [AngleFactory getInstance];
        DirectionFactory* directionFactory = [DirectionFactory getInstance];
        self->directionArray[[directionFactory->LEFT getValue]] = angleFactory->LEFT;
        self->directionArray[[directionFactory->RIGHT getValue]] = angleFactory->RIGHT;
        self->directionArray[[directionFactory->UP getValue]] = angleFactory->UP;
        self->directionArray[[directionFactory->DOWN getValue]] = angleFactory->DOWN;
        self->directionArray2[[directionFactory->LEFT getValue]] = angleFactory->LEFT;
        self->directionArray2[[directionFactory->RIGHT getValue]] = angleFactory->RIGHT;
        self->directionArray2[[directionFactory->UP getValue]] = angleFactory->UP;
        self->directionArray2[[directionFactory->DOWN getValue]] = angleFactory->DOWN;
    return self;
}


- (Angle*) getAngle:(Direction*)direction {
        return self->directionArray2[[direction getValue]];
}


- (Angle*) getFrameAngle:(Direction*)direction {
        return self->directionArray[[direction getValue]];
}

@end

