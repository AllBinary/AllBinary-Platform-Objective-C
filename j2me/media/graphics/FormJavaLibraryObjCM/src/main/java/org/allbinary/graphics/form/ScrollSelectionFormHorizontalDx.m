// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/ScrollSelectionFormHorizontalDx.h"
#include "org/allbinary/graphics/form/item/ABCustomItem.h"
#include "org/allbinary/graphics/form/ItemIndexDx.h"
#include "org/allbinary/graphics/form/ScrollSelectionForm.h"



void ScrollSelectionFormHorizontalDx_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation ScrollSelectionFormHorizontalDx

- (void) initFields {
    
}


- (instancetype) init:(ScrollSelectionForm*)scrollSelectionForm {
    self = [super init];
    [self initFields];
        self->scrollSelectionForm = scrollSelectionForm;
    return self;
}


// throws Exception
- (int32_t) getDx:(int32_t)index :(ABCustomItem*)item :(int32_t)dx :(int32_t)dy {
        return [self->scrollSelectionForm getSelectedIndexForPointHorizontalDx:index :item :dx :dy];
}

@end

