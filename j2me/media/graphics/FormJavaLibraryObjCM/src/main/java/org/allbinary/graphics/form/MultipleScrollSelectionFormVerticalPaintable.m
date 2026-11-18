// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/MultipleScrollSelectionFormVerticalPaintable.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/form/item/ABCustomItem.h"
#include "org/allbinary/graphics/form/ItemIndexPaintable.h"
#include "org/allbinary/graphics/form/MultipleScrollSelectionHorizontalForm.h"



void MultipleScrollSelectionFormVerticalPaintable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation MultipleScrollSelectionFormVerticalPaintable

- (void) initFields {
    
}


- (instancetype) init:(MultipleScrollSelectionHorizontalForm*)multipleScrollSelectionForm {
    self = [super init];
    [self initFields];
        self->multipleScrollSelectionForm = multipleScrollSelectionForm;
    return self;
}


// throws Exception
- (int32_t) paint:(Graphics*)graphics :(int32_t)index :(ABCustomItem*)item :(int32_t)dx :(int32_t)dy {
        return [self->multipleScrollSelectionForm paintVertical:graphics :index :item :dx :dy];
}

@end

