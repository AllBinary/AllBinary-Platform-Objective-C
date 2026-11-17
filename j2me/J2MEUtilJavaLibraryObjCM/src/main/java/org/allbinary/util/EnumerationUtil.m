// Generated Code Do Not Modify
#include "org/allbinary/util/EnumerationUtil.h"
#include "org/allbinary/util/BasicArrayListD.h"
#include "org/allbinary/util/BasicArrayList.h"


static EnumerationUtil* EnumerationUtil_instance;

void EnumerationUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    EnumerationUtil_instance = [((EnumerationUtil*) [EnumerationUtil alloc]) init];
}

@implementation EnumerationUtil

- (instancetype) init {
    self = [super init];
    return self;
}


+ (EnumerationUtil*) getInstance {
        return (EnumerationUtil_staticInit(), EnumerationUtil_instance);
}


- (bool) hasMoreElements:(Enumeration*)enumeration {
        return [enumeration hasMoreElements];
}


- (id) nextElement:(Enumeration*)enumeration {
        return [enumeration nextElement];
}


- (id*) getAsArray:(Enumeration*)enumeration {
        BasicArrayList* basicArrayList = [((BasicArrayListD*) [BasicArrayListD alloc]) init];
        while ([self hasMoreElements:enumeration]) {
            [basicArrayList add:[self nextElement:enumeration]];
        }
        return [basicArrayList toArray];
}

@end

