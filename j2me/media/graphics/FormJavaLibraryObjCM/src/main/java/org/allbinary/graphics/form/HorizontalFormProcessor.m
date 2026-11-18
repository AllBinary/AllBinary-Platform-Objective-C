// Generated Code Do Not Modify
#include "org/allbinary/graphics/form/HorizontalFormProcessor.h"
#include "org/allbinary/graphics/form/ScrollCurrentSelectionForm.h"



void HorizontalFormProcessor_staticInit(void) {
    static bool initialized = false;
    if (initialized) {
        return;
    }
    initialized = true;
}

@implementation HorizontalFormProcessor

- (void) initFields {
    
}


- (instancetype) init:(ScrollCurrentSelectionForm*)scrollCurrentSelectionForm {
    self = [super init];
    [self initFields];
        self->scrollCurrentSelectionForm = scrollCurrentSelectionForm;
    return self;
}


// throws Exception
- (void) process {
        [self->scrollCurrentSelectionForm processHorizontalForm];
        self->scrollCurrentSelectionForm->processor = [Processor getInstance];
}

@end

