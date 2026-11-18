// Generated Code Do Not Modify
#include "org/allbinary/graphics/pipeline/RandomTranslation.h"
#include "org/allbinary/game/rand/MyRandomFactory.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/graphics/pipeline/BasicGraphicsPipeline.h"



void RandomTranslation_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation RandomTranslation

- (instancetype) init {
    self = [super init];
    return self;
}


// throws Exception
+ (BasicArrayList*) getInstance:(BasicArrayList*)vector :(int32_t)howMuch {
        MyRandomFactory* myRandomFactory = [MyRandomFactory getInstance];
        int32_t x = -[myRandomFactory getNextInt:howMuch];
        int32_t y = [myRandomFactory getNextInt:howMuch];
        BasicGraphicsPipeline* graphicsPipe = [((BasicGraphicsPipeline*) [BasicGraphicsPipeline alloc]) init:vector];
        [graphicsPipe createMatrix];
        [graphicsPipe translate:x :y];
        return [graphicsPipe getMatrix];
}

@end

