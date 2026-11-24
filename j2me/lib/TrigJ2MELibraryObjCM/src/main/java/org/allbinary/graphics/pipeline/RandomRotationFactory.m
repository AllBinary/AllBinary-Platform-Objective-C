// Generated Code Do Not Modify
#include "org/allbinary/graphics/pipeline/RandomRotationFactory.h"
#include "org/allbinary/game/rand/MyRandomFactory.h"
#include "org/allbinary/math/AngleFactory.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/graphics/pipeline/BasicGraphicsPipeline.h"


static RandomRotationFactory* RandomRotationFactory_instance;

void RandomRotationFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    RandomRotationFactory_instance = ((RandomRotationFactory*) [((RandomRotationFactory*) [RandomRotationFactory alloc]) init]);
}

@implementation RandomRotationFactory

- (void) initFields {
    self->myRandomFactory = [MyRandomFactory getInstance];
    self->angleFactory = [AngleFactory getInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (RandomRotationFactory*) getInstance {
        return (RandomRotationFactory_staticInit(), RandomRotationFactory_instance);
}


// throws Exception
- (BasicArrayList*) getInstanceList:(BasicArrayList*)vector :(int32_t)howMuch {
        BasicGraphicsPipeline* graphicsPipe = ((BasicGraphicsPipeline*) [((BasicGraphicsPipeline*) [BasicGraphicsPipeline alloc]) init:vector]);
        [graphicsPipe createMatrix];
        [graphicsPipe rotateToAngle:[self->angleFactory getAt:[self getNextRandomAngle:howMuch]]];
        return [graphicsPipe getMatrix];
}


- (int32_t) getNextRandomAngle:(int32_t)howMuch {
        return [self->myRandomFactory getNextInt:howMuch * 10];
}

@end

