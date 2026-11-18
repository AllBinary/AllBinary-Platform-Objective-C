// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/MultipleScrollSelectionFormHorizontalPaintable.h"
#include "javax/microedition/lcdui/Graphics.h"
#include "org/allbinary/graphics/form/item/ABCustomItem.h"
#include "org/allbinary/graphics/form/ItemIndexPaintable.h"
#include "org/allbinary/graphics/form/MultipleScrollSelectionHorizontalForm.h"



void MultipleScrollSelectionFormHorizontalPaintable_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation MultipleScrollSelectionFormHorizontalPaintable

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
        return [self->multipleScrollSelectionForm paintHorizontal:graphics :index :item :dx :dy];
}

@end

