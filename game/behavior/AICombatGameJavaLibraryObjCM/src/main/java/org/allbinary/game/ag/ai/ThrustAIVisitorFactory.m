// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/ThrustAIVisitorFactory.h"
#include "org/allbinary/game/ag/ai/ThrustAIVisitor.h"


static ThrustAIVisitor* ThrustAIVisitorFactory_instance;

void ThrustAIVisitorFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ThrustAIVisitorFactory_instance = ((ThrustAIVisitor*) [((ThrustAIVisitor*) [ThrustAIVisitor alloc]) init]);
}

@implementation ThrustAIVisitorFactory

- (instancetype) init {
    self = [super init];
    return self;
}


+ (ThrustAIVisitor*) getInstance {
        return (ThrustAIVisitorFactory_staticInit(), ThrustAIVisitorFactory_instance);
}

@end

