// Generated Code Do Not Modify
#include "org/allbinary/layer/AllBinaryLayerFactory.h"
#include "org/allbinary/graphics/Rectangle.h"
#include "org/allbinary/logic/string/StringUtil.h"
#include "org/allbinary/view/ViewPosition.h"
#include "org/allbinary/layer/AllBinaryLayerFactoryInterface.h"
#include "org/allbinary/layer/AllBinaryLayer.h"
#if __has_include("org/allbinary/logic/string/StringUtil.h")
#include "org/allbinary/logic/string/StringUtil.h"
#endif



void AllBinaryLayerFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation AllBinaryLayerFactory

- (void) initFields {
    
}


- (instancetype) init:(Rectangle*)rectangle {
    self = [super init];
    [self initFields];
        self->rectangle = rectangle;
    return self;
}


- (AllBinaryLayer*) getInstance {
        return ((AllBinaryLayer*) [((AllBinaryLayer*) [AllBinaryLayer alloc]) init:[StringUtil getInstance]->EMPTY_STRING :self->rectangle :[ViewPosition getInstanceD]]);
}

@end

