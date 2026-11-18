// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/TempHorizontalItemIndexDx.h"
#include "org/allbinary/graphics/form/item/ABCustomItem.h"
#include "org/allbinary/graphics/form/ItemIndexDx.h"
#include "org/allbinary/graphics/form/ScrollCurrentSelectionForm.h"



void TempHorizontalItemIndexDx_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation TempHorizontalItemIndexDx

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
        return [self->scrollCurrentSelectionForm getXTempHorizontalForm:index :item :dx :dy];
}

@end

