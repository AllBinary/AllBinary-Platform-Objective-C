// Generated Code Do Not Modify
#include "org/allbinary/bounds/LayerBounds.h"
#include "org/allbinary/bounds/event/BoundsChangeEvent.h"
#include "org/allbinary/graphics/Rectangle.h"
#include "org/allbinary/logic/communication/log/ForcedLogUtil.h"
#include "org/allbinary/logic/communication/log/LogUtil.h"
#include "org/allbinary/logic/util/event/AllBinaryEventObject.h"
#include "org/allbinary/logic/util/event/EventStrings.h"
#include "org/allbinary/bounds/BoundsVisitorInterface.h"
#if __has_include("org/allbinary/logic/util/event/EventStrings.h")
#include "org/allbinary/logic/util/event/EventStrings.h"
#endif



void LayerBounds_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation LayerBounds

- (void) initFields {
    self->logUtil = [LogUtil getInstance];
    
}


- (instancetype) init:(Rectangle*)rectangle {
    self = [super init];
    [self initFields];
        self->rectangle = rectangle;
    return self;
}


- (Rectangle*) getRectangleP {
        return self->rectangle;
}


- (void) visit:(BoundsVisitorInterface*)boundsVisitorInterface {
}


- (void) onEvent:(AllBinaryEventObject*)eventObject {
        [ForcedLogUtil log:[EventStrings getInstance]->PERFORMANCE_MESSAGE :self];
}


- (void) onBoundsChangeEvent:(BoundsChangeEvent*)boundsChangeEvent {
        self->rectangle = [boundsChangeEvent getRectangle];
}

@end

