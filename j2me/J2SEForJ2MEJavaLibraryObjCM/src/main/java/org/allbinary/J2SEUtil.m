// Generated Code Do Not Modify
#include "org/allbinary/J2SEUtil.h"


static J2SEUtil* J2SEUtil_instance;

void J2SEUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    J2SEUtil_instance = ((J2SEUtil*) [((J2SEUtil*) [J2SEUtil alloc]) init]);
}

@implementation J2SEUtil

- (instancetype) init {
    self = [super init];
    return self;
}


+ (J2SEUtil*) getInstance {
        return (J2SEUtil_staticInit(), J2SEUtil_instance);
}


- (id*) getHashMapAsArray:(HashMap*)hashMap {
        id* objectArray = [[hashMap keySet] toArray];
        return objectArray;
}


- (id*) getMapAsArray:(Map*)map {
        id* objectArray = [[map keySet] toArray];
        return objectArray;
}


- (id*) getSetAsArray:(Set*)set {
        id* objectArray = [set toArray];
        return objectArray;
}

@end

