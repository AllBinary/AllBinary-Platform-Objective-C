// Generated Code Do Not Modify
#include "org/allbinary/game/paint/ColorFillPaintableFactory.h"
#include "org/allbinary/graphics/color/BasicColor.h"
#include "org/allbinary/logic/system/os/GenericOperatingSystem.h"
#include "org/allbinary/logic/system/os/OperatingSystemFactory.h"
#include "org/allbinary/game/paint/ColorFillPaintable.h"
#include "org/allbinary/game/paint/OverScanColorFillPaintable.h"
#include "org/allbinary/game/paint/ColorFillBasePaintable.h"
#if __has_include("org/allbinary/logic/system/os/OperatingSystemFactory.h")
#include "org/allbinary/logic/system/os/OperatingSystemFactory.h"
#endif


static ColorFillPaintableFactory* ColorFillPaintableFactory_instance;

void ColorFillPaintableFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ColorFillPaintableFactory_instance = ((ColorFillPaintableFactory*) [((ColorFillPaintableFactory*) [ColorFillPaintableFactory alloc]) init]);
}

@implementation ColorFillPaintableFactory

- (instancetype) init {
    self = [super init];
    return self;
}


+ (ColorFillPaintableFactory*) getInstance {
        return (ColorFillPaintableFactory_staticInit(), ColorFillPaintableFactory_instance);
}


- (ColorFillBasePaintable*) getInstance:(BasicColor*)basicColor :(bool)forThreedCanvas {
        GenericOperatingSystem* operatingSystem = [[OperatingSystemFactory getInstance] getOperatingSystemInstance];
        if ([operatingSystem isOverScan]) {
            return ((OverScanColorFillPaintable*) [((OverScanColorFillPaintable*) [OverScanColorFillPaintable alloc]) init:basicColor]);
        } else {
            return ((ColorFillPaintable*) [((ColorFillPaintable*) [ColorFillPaintable alloc]) init:basicColor]);
        }
}

@end

