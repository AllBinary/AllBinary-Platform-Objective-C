// Generated Code Do Not Modify
#include "org/allbinary/graphics/opengles/shader/ModelViewProjection.h"
#include "org/allbinary/logic/NullUtil.h"


static ModelViewProjection* ModelViewProjection_instance;

void ModelViewProjection_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ModelViewProjection_instance = [((ModelViewProjection*) [ModelViewProjection alloc]) init];
}

@implementation ModelViewProjection

- (instancetype) init {
    self = [super init];
    return self;
}


+ (ModelViewProjection*) getInstance {
        return (ModelViewProjection_staticInit(), ModelViewProjection_instance);
}


- (float*) get {
        return [NullUtil getInstance]->NULL_FLOAT_ARRAY;
}

@end

