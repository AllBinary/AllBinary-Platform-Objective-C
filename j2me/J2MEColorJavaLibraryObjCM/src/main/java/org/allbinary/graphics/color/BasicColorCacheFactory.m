// Generated Code Do Not Modify
#include "org/allbinary/graphics/color/BasicColorCacheFactory.h"
#include "org/allbinary/logic/StdUtil.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/graphics/color/BasicColorFactory.h"


static BasicColorCacheFactory* BasicColorCacheFactory_instance;

void BasicColorCacheFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    BasicColorCacheFactory_instance = [((BasicColorCacheFactory*) [BasicColorCacheFactory alloc]) init];
}

@implementation BasicColorCacheFactory

- (void) initFields {
    self->hashtable = [[StdUtil getInstance] createHashtable];
}


+ (BasicColorCacheFactory*) getInstance {
        return (BasicColorCacheFactory_staticInit(), BasicColorCacheFactory_instance);
}


- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


- (void) add:(BasicColor*)basicDefaultColor {
        [self->hashtable put:JAVA_BOX([basicDefaultColor intValue]) :JAVA_BOX(basicDefaultColor)];
}


// synchronized
- (BasicColor*) getAndOrCreate:(int32_t)integer {
        BasicColor* basicColor = ((BasicColor*) [self->hashtable get:JAVA_BOX(integer)]);
        if (basicColor == nil) {
            basicColor = [[BasicColorFactory getInstance] createInstance:((int32_t) (integer))];
            [self->hashtable put:JAVA_BOX(integer) :JAVA_BOX(basicColor)];
        }
        return basicColor;
}

@end

