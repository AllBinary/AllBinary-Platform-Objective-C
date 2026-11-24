// Generated Code Do Not Modify
#include "org/allbinary/game/part/MakeCountedPartsSingletonArrayFactory.h"
#include "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactory.h"
#include "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactoryPool.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/util/BasicArrayListUtil.h"
#include "org/allbinary/game/part/CountedLayerInterfaceFactoryPart.h"
#include "org/allbinary/game/part/PartInterface.h"
#if __has_include("org/allbinary/util/BasicArrayListUtil.h")
#include "org/allbinary/util/BasicArrayListUtil.h"
#endif
#if __has_include("org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactoryPool.h")
#include "org/allbinary/game/layer/pickup/CountedPickedUpLayerInterfaceFactoryPool.h"
#endif


static MakeCountedPartsSingletonArrayFactory* MakeCountedPartsSingletonArrayFactory_instance;

void MakeCountedPartsSingletonArrayFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    MakeCountedPartsSingletonArrayFactory_instance = ((MakeCountedPartsSingletonArrayFactory*) [((MakeCountedPartsSingletonArrayFactory*) [MakeCountedPartsSingletonArrayFactory alloc]) init]);
}

@implementation MakeCountedPartsSingletonArrayFactory

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->list = [[BasicArrayListUtil getInstance] getImmutableInstance];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (MakeCountedPartsSingletonArrayFactory*) getInstance {
        return (MakeCountedPartsSingletonArrayFactory_staticInit(), MakeCountedPartsSingletonArrayFactory_instance);
}


// throws Exception
- (PartInterface**) getUpdated:(PartInterface**)partInterfaceArray {
        self->list = ((BasicArrayListD*) [((BasicArrayListD*) [BasicArrayListD alloc]) init]);
        for (int32_t index = 0; index < java_array_length(partInterfaceArray); index++) {
            [self->list add:partInterfaceArray[index]];
        }
        BasicArrayList* countedBasicArrayList = [[CountedPickedUpLayerInterfaceFactoryPool getInstance] getList];
        CountedPickedUpLayerInterfaceFactory* layerInterfaceFactoryInterface = nullptr;
        int32_t size = [countedBasicArrayList size];
        for (int32_t index = 0; index < size; index++) {
            layerInterfaceFactoryInterface = ((CountedPickedUpLayerInterfaceFactory*) countedBasicArrayList->objectArray[index]);
            [self->list add:((CountedLayerInterfaceFactoryPart*) [((CountedLayerInterfaceFactoryPart*) [CountedLayerInterfaceFactoryPart alloc]) init:0 :layerInterfaceFactoryInterface])];
        }
        StringMaker* stringBuffer = ((StringMaker*) [((StringMaker*) [StringMaker alloc]) init]);
        [stringBuffer append:"Total Parts: "];
        [stringBuffer appendint:[self->list size]];
        [stringBuffer append:" Counted: "];
        [stringBuffer appendint:[countedBasicArrayList size]];
        CommonStrings* commonStrings = [CommonStrings getInstance];
        [self->logUtil putF:[stringBuffer toString] :self :commonStrings->GET_INSTANCE];
        PartInterface** newPartInterfaceArray = ((PartInterface**) java_array_new(sizeof(PartInterface*), [self->list size]));
        int32_t newSize = java_array_length(newPartInterfaceArray);
        for (int32_t index = 0; index < newSize; index++) {
            newPartInterfaceArray[index] = ((PartInterface*) [self->list get:index]);
        }
        return newPartInterfaceArray;
}

@end

