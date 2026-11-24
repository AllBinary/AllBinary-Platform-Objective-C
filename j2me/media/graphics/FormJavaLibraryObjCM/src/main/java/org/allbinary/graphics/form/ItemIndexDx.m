// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/ItemIndexDx.h"
#include "org/allbinary/graphics/form/item/ABCustomItem.h"


static ItemIndexDx* ItemIndexDx_instance;

void ItemIndexDx_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ItemIndexDx_instance = ((ItemIndexDx*) [((ItemIndexDx*) [ItemIndexDx alloc]) init]);
}

@implementation ItemIndexDx

- (instancetype) init {
    self = [super init];
    return self;
}


+ (ItemIndexDx*) getInstance {
        return (ItemIndexDx_staticInit(), ItemIndexDx_instance);
}


// throws Exception
- (int32_t) getDx:(int32_t)index :(ABCustomItem*)item :(int32_t)dx :(int32_t)dy {
        return 0;
}

@end

