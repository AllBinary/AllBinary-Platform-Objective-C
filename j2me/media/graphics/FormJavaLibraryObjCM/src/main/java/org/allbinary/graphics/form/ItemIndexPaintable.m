// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/ItemIndexPaintable.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/form/item/ABCustomItem.h"


static ItemIndexPaintable* ItemIndexPaintable_instance;

void ItemIndexPaintable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
    ItemIndexPaintable_instance = ((ItemIndexPaintable*) [((ItemIndexPaintable*) [ItemIndexPaintable alloc]) init]);
}

@implementation ItemIndexPaintable

- (instancetype) init {
    self = [super init];
    return self;
}


+ (ItemIndexPaintable*) getInstance {
        return (ItemIndexPaintable_staticInit(), ItemIndexPaintable_instance);
}


// throws Exception
- (int32_t) paint:(Graphics*)graphics :(int32_t)index :(ABCustomItem*)item :(int32_t)dx :(int32_t)dy {
        return 0;
}

@end

