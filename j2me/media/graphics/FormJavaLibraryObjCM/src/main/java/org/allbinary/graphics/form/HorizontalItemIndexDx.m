// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/HorizontalItemIndexDx.h"
#include "org/allbinary/graphics/form/item/ABCustomItem.h"
#include "org/allbinary/graphics/form/ItemIndexDx.h"
#include "org/allbinary/graphics/form/ScrollCurrentSelectionForm.h"



void HorizontalItemIndexDx_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation HorizontalItemIndexDx

- (void) initFields {
    
}


- (instancetype) init:(ScrollCurrentSelectionForm*)scrollCurrentSelectionForm {
    self = [super init];
    [self initFields];
        self->scrollCurrentSelectionForm = scrollCurrentSelectionForm;
    return self;
}


// throws Exception
- (int32_t) getDx:(int32_t)index :(ABCustomItem*)item :(int32_t)dx :(int32_t)dy {
        return [self->scrollCurrentSelectionForm getXHorizontalForm:index :item :dx :dy];
}

@end

