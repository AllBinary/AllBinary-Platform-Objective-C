// Generated Code Do Not Modify
#include "org/allbinary/graphics/RectangleFactory.h"
#include "org/allbinary/graphics/Rectangle.h"
#include "org/allbinary/graphics/PointFactory.h"


Rectangle* RectangleFactory_SINGLETON;
Rectangle*** RectangleFactory_ARRAY_OF_ARRAYS;

void RectangleFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    RectangleFactory_SINGLETON = [((Rectangle*) [Rectangle alloc]) init:[PointFactory getInstance]->ZERO_ZERO :0 :0];
    RectangleFactory_ARRAY_OF_ARRAYS = ((Rectangle***) java_array_new2(sizeof(Rectangle*), 0, 0));
}

@implementation RectangleFactory

- (instancetype) init {
    self = [super init];
    return self;
}

@end

