// Generated Code Do Not Modify
#include "org/allbinary/ai/ArtificialIntelligenceFactory.h"
#include "org/allbinary/ai/ArtificialIntelligenceFactoryInterface.h"
#include "org/allbinary/ai/ArtificialIntelligence.h"



void ArtificialIntelligenceFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ArtificialIntelligenceFactory

- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
- (ArtificialIntelligence*) getInstance:(id)anyType {
        java_throw(java_exception_new("RuntimeException", ""));
}

@end

