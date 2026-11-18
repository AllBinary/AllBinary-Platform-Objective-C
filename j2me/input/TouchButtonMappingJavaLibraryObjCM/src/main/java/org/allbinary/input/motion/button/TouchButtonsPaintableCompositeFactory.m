// Generated Code Do Not Modify
#include "org/allbinary/input/motion/button/TouchButtonsPaintableCompositeFactory.h"
#include "org/allbinary/game/input/mapping/InputMappingInterface.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/paint/ProcessPaintable.h"
#include "org/allbinary/input/motion/button/TouchButtonsPaintableComposite.h"



void TouchButtonsPaintableCompositeFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation TouchButtonsPaintableCompositeFactory

- (instancetype) init {
    self = [super init];
    return self;
}


+ (ProcessPaintable*) getInstance:(InputMappingInterface*)inputMappingInterface :(BasicColor*)basicColor {
        return [((TouchButtonsPaintableComposite*) [TouchButtonsPaintableComposite alloc]) init:inputMappingInterface :basicColor];
}

@end

