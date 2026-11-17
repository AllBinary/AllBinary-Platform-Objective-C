// Generated Code Do Not Modify
#include "org/allbinary/graphics/color/BasicColorArrayIndexer.h"
#include "org/allbinary/util/CircularIndexUtil.h"
#include "org/allbinary/graphics/color/BasicColor.h"



void BasicColorArrayIndexer_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation BasicColorArrayIndexer

- (void) initFields {
    
    
}


- (instancetype) init:(BasicColor**)basicColorArray {
    self = [super init];
    [self initFields];
        self->basicColorArray = basicColorArray;
        self->circularIndexUtil = [CircularIndexUtil createInstance:java_array_length(self->basicColorArray)];
    return self;
}


- (void) next {
        [self->circularIndexUtil next];
}


- (BasicColor*) get {
        return self->basicColorArray[[self->circularIndexUtil getIndex]];
}


- (BasicColor**) getBasicColorArray {
        return self->basicColorArray;
}

@end

