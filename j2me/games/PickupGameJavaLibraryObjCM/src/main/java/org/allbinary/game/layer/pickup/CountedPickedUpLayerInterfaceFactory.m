// Generated Code Do Not Modify
#include "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory.h"
#include "org/allbinary/animation/Animation.h"
#include "org/allbinary/animation/NullAnimationFactory.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/game/layer/pickup/PickedUpLayerInterfaceFactory.h"
#include "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactoryInterface.h"
#include "org/allbinary/game/layer/pickup/PickedUpLayerTypeFactory.h"
#include "org/allbinary/game/layer/pickup/IconLayer.h"
#include "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactoryPool.h"
#include "org/allbinary/game/layer/pickup/PickedUpLayerType.h"


CountedPickedUpLayerInterfaceFactory* CountedPickedUpLayerInterfaceFactory_NULL_COUNTED_PICKUP_LAYER_FACTORY;

void CountedPickedUpLayerInterfaceFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    CountedPickedUpLayerInterfaceFactory_NULL_COUNTED_PICKUP_LAYER_FACTORY = [((CountedPickedUpLayerInterfaceFactory*) [CountedPickedUpLayerInterfaceFactory alloc]) init:[PickedUpLayerTypeFactory getInstance]->NONE :(IconLayer_staticInit(), IconLayer_NULL_ICON_LAYER) :[[NullAnimationFactory getFactoryInstance] getInstance:0]];
}

@implementation CountedPickedUpLayerInterfaceFactory

- (void) initFields {
    
}


- (instancetype) init:(PickedUpLayerType*)pickeUpLayerType :(IconLayer*)iconLayer :(Animation*)animationInterface {
        self = [super init:pickeUpLayerType :iconLayer :animationInterface];
        [self initFields];
        BasicArrayList* list = [[CountedPickedUpLayerInterfaceFactoryPool getInstance] getList];
        self->id_ = [list size];
        [list add:self];
    return self;
}


// throws Exception
- (AllBinaryLayer*) getNextInstance:(ABHashtable*)hashtable :(int32_t)x :(int32_t)y :(int32_t)z {
        java_throw(java_exception_new("Exception", [CommonStrings getInstance]->NOT_IMPLEMENTED));
}


- (int32_t) getTotal {
        return -1;
}


- (int32_t) getId {
        return self->id_;
}

@end

