// Generated Code Do Not Modify
#include "org/allbinary/game/ag/ai/LastKeyAIVisitorFactory.h"
#include "org/allbinary/game/ag/ai/LastKeyAIVisitor.h"


static LastKeyAIVisitor* LastKeyAIVisitorFactory_instance;

void LastKeyAIVisitorFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    LastKeyAIVisitorFactory_instance = ((LastKeyAIVisitor*) [((LastKeyAIVisitor*) [LastKeyAIVisitor alloc]) init]);
}

@implementation LastKeyAIVisitorFactory

- (instancetype) init {
    self = [super init];
    return self;
}


+ (LastKeyAIVisitor*) getInstance {
        return (LastKeyAIVisitorFactory_staticInit(), LastKeyAIVisitorFactory_instance);
}

@end

