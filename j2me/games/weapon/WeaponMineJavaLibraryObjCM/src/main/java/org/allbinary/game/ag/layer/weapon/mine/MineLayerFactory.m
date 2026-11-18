// Generated Code Do Not Modify
#include "org/allbinary/game/ag/layer/weapon/mine/MineLayerFactory.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/view/ViewPositionFactoryInterface.h"
#include "org/allbinary/game/ag/layer/weapon/mine/MineLayer.h"



void MineLayerFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation MineLayerFactory

- (void) initFields {
    
}


- (instancetype) init:(ViewPositionFactoryInterface*)viewPositionFactoryInterface {
    self = [super init];
    [self initFields];
        self->viewPositionFactoryInterface = viewPositionFactoryInterface;
    return self;
}


// throws Exception
- (AllBinaryLayer*) getInstance {
        return [((MineLayer*) [MineLayer alloc]) init:[self->viewPositionFactoryInterface getInstance]];
}

@end

