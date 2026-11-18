// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/ScrollSelectionFormTempHorizontalPaintable.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/form/item/ABCustomItem.h"
#include "org/allbinary/graphics/form/ItemIndexPaintable.h"
#include "org/allbinary/graphics/form/ScrollSelectionForm.h"



void ScrollSelectionFormTempHorizontalPaintable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ScrollSelectionFormTempHorizontalPaintable

- (void) initFields {
    
}


- (instancetype) init:(ScrollSelectionForm*)scrollSelectionForm {
    self = [super init];
    [self initFields];
        self->scrollSelectionForm = scrollSelectionForm;
    return self;
}


// throws Exception
- (int32_t) paint:(Graphics*)graphics :(int32_t)index :(ABCustomItem*)item :(int32_t)dx :(int32_t)dy {
        return [self->scrollSelectionForm paintItemTempHorizontal:graphics :index :item :dx :dy];
}

@end

