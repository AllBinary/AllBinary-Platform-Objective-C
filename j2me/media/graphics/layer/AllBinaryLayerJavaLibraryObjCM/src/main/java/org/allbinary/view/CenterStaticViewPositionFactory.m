// Generated Code Do Not Modify
#include "org/allbinary/view/CenterStaticViewPositionFactory.h"
#include "org/allbinary/graphics/displayable/DisplayInfoSingleton.h"
#include "org/allbinary/view/StaticViewPosition.h"
#include "org/allbinary/view/ViewPositionBase.h"



void CenterStaticViewPositionFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation CenterStaticViewPositionFactory


- (instancetype) init {
    self = [super init];
    return self;
}


- (ViewPositionBase*) getInstance:(int32_t)z {
        DisplayInfoSingleton* displayInfoSingleton = [DisplayInfoSingleton getInstance];
        return [((StaticViewPosition*) [StaticViewPosition alloc]) init:([displayInfoSingleton getLastWidth] >> 1) :([displayInfoSingleton getLastHeight] >> 1) :z];
}

@end

