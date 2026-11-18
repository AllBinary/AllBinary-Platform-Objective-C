// Generated Code Do Not Modify
#include "org/allbinary/graphics/RelativeRelationship.h"
#include "org/allbinary/util/BasicArrayList.h"
#include "org/allbinary/util/BasicArrayListUtil.h"
#include "org/allbinary/graphics/PointFactory.h"
#include "org/allbinary/graphics/GPoint.h"


RelativeRelationship* RelativeRelationship_NULL_RELATIVE_RELATIONSHIP;

void RelativeRelationship_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    RelativeRelationship_NULL_RELATIVE_RELATIONSHIP = [((RelativeRelationship*) [RelativeRelationship alloc]) init:[PointFactory getInstance]->ZERO_ZERO :[[BasicArrayListUtil getInstance] getImmutableInstance]];
}

@implementation RelativeRelationship

- (void) initFields {
    
    
    
    
}


- (instancetype) init:(GPoint*)point :(BasicArrayList*)typesAllowedList {
    self = [super init];
    [self initFields];
        self->x = [point getX];
        self->y = [point getY];
        self->z = [point getZ];
        self->typesAllowedList = typesAllowedList;
    return self;
}


- (int32_t) getX {
        return self->x;
}


- (int32_t) getY {
        return self->y;
}


- (int32_t) getZ {
        return self->z;
}


- (BasicArrayList*) getTypesAllowedList {
        return self->typesAllowedList;
}


- (void) setTypesAllowedList:(BasicArrayList*)typesAllowedList {
        self->typesAllowedList = typesAllowedList;
}

@end

