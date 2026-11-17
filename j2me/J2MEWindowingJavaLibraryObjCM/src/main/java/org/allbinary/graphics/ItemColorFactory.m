// Generated Code Do Not Modify
#include "org/allbinary/graphics/ItemColorFactory.h"


static ItemColorFactory* ItemColorFactory_instance;

void ItemColorFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ItemColorFactory_instance = [((ItemColorFactory*) [ItemColorFactory alloc]) init];
}

@implementation ItemColorFactory

- (void) initFields {
    self->INVERT_PAINT = 0xFF000000;
    self->PAINT = 0xFFe07718;
    self->TEXT_FIELD_NO_FOCUS = 0x7F7F7F;
}

- (instancetype) init {
    self = [super init];
    [self initFields];
    return self;
}


+ (ItemColorFactory*) getInstance {
        return (ItemColorFactory_staticInit(), ItemColorFactory_instance);
}

@end

