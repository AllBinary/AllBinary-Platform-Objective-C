// Generated Code Do Not Modify
#include "org/allbinary/logic/StdUtil.h"
#include "org/allbinary/util/ABHashMap.h"
#include "org/allbinary/util/ABHashtable.h"
#include "org/allbinary/util/ABStack.h"
#include "org/allbinary/util/ABVector.h"


static StdUtil* StdUtil_instance;

void StdUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    StdUtil_instance = [((StdUtil*) [StdUtil alloc]) init];
}

@implementation StdUtil

- (void) initFields {
    self->EMPTY_VECTOR = [self createVector];
    self->NULL_TABLE = [self createHashtable];
    self->NULL_MAP = [self createHashMap];
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (StdUtil*) getInstance {
        return (StdUtil_staticInit(), StdUtil_instance);
}


- (ABStack*) createStack {
        return [((ABStack*) [ABStack alloc]) init];
}


- (ABVector*) createVector {
        return [((ABVector*) [ABVector alloc]) init];
}


- (ABHashtable*) createHashtable {
        return [((ABHashtable*) [ABHashtable alloc]) init];
}


- (ABHashMap*) createHashMap {
        return [((ABHashMap*) [ABHashMap alloc]) init];
}

@end

