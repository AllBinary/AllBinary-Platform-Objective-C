// Generated Code Do Not Modify
#include "org/allbinary/layer/LayerInterfaceFactory.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/string/StringMaker.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/string/CommonStrings.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/util/BasicArrayListUtil.h"
#include "org/allbinary/layer/Layer.h"
#include "org/allbinary/layer/LayerInterfaceFactoryInterface.h"
#include "org/allbinary/layer/AllBinaryLayer.h"


static LayerInterfaceFactory* LayerInterfaceFactory_SINGLETON;

void LayerInterfaceFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    LayerInterfaceFactory_SINGLETON = [((LayerInterfaceFactory*) [LayerInterfaceFactory alloc]) init];
}

@implementation LayerInterfaceFactory

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    self->list = [[BasicArrayListUtil getInstance] getImmutableInstance];
    self->HASHTABLE_LABEL = "Hashtable: ";
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (LayerInterfaceFactory*) getInstance {
        return (LayerInterfaceFactory_staticInit(), LayerInterfaceFactory_SINGLETON);
}


- (void) init_ {
        self->list = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
}


// throws Exception
- (AllBinaryLayer*) getNexInstance:(ABHashtable*)hashtable :(int32_t)x :(int32_t)y :(int32_t)z {
        CommonStrings* commonStrings = [CommonStrings getInstance];
        [self->logUtil putF:[[[[((StringMaker*) [StringMaker alloc]) init] append:self->HASHTABLE_LABEL] append:[[StringUtil getInstance] toString:hashtable]] toString] :self :commonStrings->GET_INSTANCE];
        int32_t typeInteger = ((int32_t) [hashtable get:JAVA_BOX(((id) (Layer_staticInit(), Layer_ID)))]);
        LayerInterfaceFactoryInterface* layerInterfaceFactoryInterface = ((LayerInterfaceFactoryInterface*) self->list->objectArray[((int32_t) (typeInteger)) - 1]);
        return [layerInterfaceFactoryInterface getNextInstance:hashtable :x :y :z];
}


- (void) add:(LayerInterfaceFactoryInterface*)layerInterfaceFactoryInterface {
        [self->list add:layerInterfaceFactoryInterface];
}

@end

