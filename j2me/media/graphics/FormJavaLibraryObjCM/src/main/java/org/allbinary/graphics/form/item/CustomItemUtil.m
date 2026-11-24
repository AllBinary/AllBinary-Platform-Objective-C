// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/item/CustomItemUtil.h"
#include "org/allbinary/graphics/form/item/ABCustomItem.h"


static CustomItemUtil* CustomItemUtil_instance;

void CustomItemUtil_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    CustomItemUtil_instance = ((CustomItemUtil*) [((CustomItemUtil*) [CustomItemUtil alloc]) init]);
}

@implementation CustomItemUtil

- (void) initFields {
    self->CUSTOM_ITEM_ARRAY = ((ABCustomItem**) java_array_new(sizeof(ABCustomItem*), 0));
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (CustomItemUtil*) getInstance {
        return (CustomItemUtil_staticInit(), CustomItemUtil_instance);
}

@end

