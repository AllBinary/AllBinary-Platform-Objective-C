// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/DiveAndDirectionalTrackingAICompositeVisitorFactory.h"
#include "org/allbinary/logic/util/visitor/Visitor.h"
#include "org/allbinary/game/ag/ai/DiveAndDirectionalTrackingAI.h"



void DiveAndDirectionalTrackingAICompositeVisitorFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation DiveAndDirectionalTrackingAICompositeVisitorFactory

- (instancetype) init {
    self = [super init];
    return self;
}


- (Visitor*) getInstance:(DiveAndDirectionalTrackingAI*)diveBombAI {
        return [Visitor getInstance];
}

@end

