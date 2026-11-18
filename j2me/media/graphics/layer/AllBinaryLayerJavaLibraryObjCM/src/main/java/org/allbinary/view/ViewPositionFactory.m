// Generated Code Do Not Modify
#include "org/allbinary/view/ViewPositionFactory.h"
#include "org/allbinary/view/ViewPositionFactoryInterface.h"
#include "org/allbinary/view/ViewPosition.h"
#include "org/allbinary/view/ViewPositionBase.h"



void ViewPositionFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ViewPositionFactory

- (instancetype) init {
    self = [super init];
    return self;
}


- (ViewPositionBase*) getInstance {
        return [ViewPosition getInstanceD];
}

@end

