// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/ItemPaintableFactory.h"
#include "org/allbinary/graphics/form/ItemPaintable.h"
#include "org/allbinary/graphics/form/PaintableForm.h"


static ItemPaintableFactory* ItemPaintableFactory_instance;

void ItemPaintableFactory_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ItemPaintableFactory_instance = ((ItemPaintableFactory*) [((ItemPaintableFactory*) [ItemPaintableFactory alloc]) init]);
}

@implementation ItemPaintableFactory

- (instancetype) init {
    self = [super init];
    return self;
}


+ (ItemPaintableFactory*) getInstance {
        return (ItemPaintableFactory_staticInit(), ItemPaintableFactory_instance);
}


// throws Exception
- (ItemPaintable*) getInstanceItemPaintable:(PaintableForm*)paintableForm {
        return (ItemPaintableFactory_staticInit(), ItemPaintableFactory_instance);
}

@end

